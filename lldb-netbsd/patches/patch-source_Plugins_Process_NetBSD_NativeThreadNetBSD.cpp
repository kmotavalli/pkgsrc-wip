$NetBSD$

--- source/Plugins/Process/NetBSD/NativeThreadNetBSD.cpp.orig	2016-12-23 23:19:01.292866969 +0000
+++ source/Plugins/Process/NetBSD/NativeThreadNetBSD.cpp
@@ -0,0 +1,190 @@
+//===-- NativeThreadNetBSD.cpp --------------------------------- -*- C++ -*-===//
+//
+//                     The LLVM Compiler Infrastructure
+//
+// This file is distributed under the University of Illinois Open Source
+// License. See LICENSE.TXT for details.
+//
+//===----------------------------------------------------------------------===//
+
+#include "NativeThreadNetBSD.h"
+
+#include <signal.h>
+#include <sstream>
+
+#include "NativeProcessNetBSD.h"
+
+#include "lldb/Core/Log.h"
+#include "lldb/Core/State.h"
+#include "lldb/Host/HostNativeThread.h"
+#include "lldb/Utility/LLDBAssert.h"
+#include "lldb/lldb-enumerations.h"
+
+#include "llvm/ADT/SmallString.h"
+
+#include "Plugins/Process/POSIX/CrashReason.h"
+
+#include <sys/ptrace.h>
+#include <sys/syscall.h>
+
+using namespace lldb;
+using namespace lldb_private;
+using namespace lldb_private::process_netbsd;
+
+namespace {
+void LogThreadStopInfo(Log &log, const ThreadStopInfo &stop_info,
+                       const char *const header) {
+  switch (stop_info.reason) {
+  case eStopReasonNone:
+    log.Printf("%s: %s no stop reason", __FUNCTION__, header);
+    return;
+  case eStopReasonTrace:
+    log.Printf("%s: %s trace, stopping signal 0x%" PRIx32, __FUNCTION__, header,
+               stop_info.details.signal.signo);
+    return;
+  case eStopReasonBreakpoint:
+    log.Printf("%s: %s breakpoint, stopping signal 0x%" PRIx32, __FUNCTION__,
+               header, stop_info.details.signal.signo);
+    return;
+  case eStopReasonSignal:
+    log.Printf("%s: %s signal 0x%02" PRIx32, __FUNCTION__, header,
+               stop_info.details.signal.signo);
+    return;
+  case eStopReasonException:
+    log.Printf("%s: %s exception type 0x%02" PRIx64, __FUNCTION__, header,
+               stop_info.details.exception.type);
+    return;
+  case eStopReasonExec:
+    log.Printf("%s: %s exec, stopping signal 0x%" PRIx32, __FUNCTION__, header,
+               stop_info.details.signal.signo);
+    return;
+  case eStopReasonPlanComplete:
+    log.Printf("%s: %s plan complete", __FUNCTION__, header);
+    return;
+  case eStopReasonThreadExiting:
+    log.Printf("%s: %s thread exiting", __FUNCTION__, header);
+    return;
+  case eStopReasonInstrumentation:
+    log.Printf("%s: %s instrumentation", __FUNCTION__, header);
+    return;
+  default:
+    log.Printf("%s: %s invalid stop reason %" PRIu32, __FUNCTION__, header,
+               static_cast<uint32_t>(stop_info.reason));
+  }
+}
+}
+
+NativeThreadNetBSD::NativeThreadNetBSD(NativeProcessNetBSD *process,
+                                     lldb::tid_t tid)
+    : NativeThreadProtocol(process, tid), m_state(StateType::eStateInvalid),
+      m_stop_info(), m_reg_context_sp(), m_stop_description() {}
+
+std::string NativeThreadNetBSD::GetName() {
+  NativeProcessProtocolSP process_sp = m_process_wp.lock();
+  if (!process_sp)
+    return "<unknown: no process>";
+
+  // const NativeProcessNetBSD *const process =
+  // reinterpret_cast<NativeProcessNetBSD*> (process_sp->get ());
+  llvm::SmallString<32> thread_name;
+  HostNativeThread::GetName(GetID(), thread_name);
+  return thread_name.c_str();
+}
+
+lldb::StateType NativeThreadNetBSD::GetState() { return m_state; }
+
+bool NativeThreadNetBSD::GetStopReason(ThreadStopInfo &stop_info,
+                                      std::string &description) {
+  Log *log(GetLogIfAllCategoriesSet(LIBLLDB_LOG_THREAD));
+
+  description.clear();
+
+  switch (m_state) {
+  case eStateStopped:
+  case eStateCrashed:
+  case eStateExited:
+  case eStateSuspended:
+  case eStateUnloaded:
+    if (log)
+      LogThreadStopInfo(*log, m_stop_info, "m_stop_info in thread:");
+    stop_info = m_stop_info;
+    description = m_stop_description;
+    if (log)
+      LogThreadStopInfo(*log, stop_info, "returned stop_info:");
+
+    return true;
+
+  case eStateInvalid:
+  case eStateConnected:
+  case eStateAttaching:
+  case eStateLaunching:
+  case eStateRunning:
+  case eStateStepping:
+  case eStateDetached:
+    if (log) {
+      log->Printf("NativeThreadNetBSD::%s tid %" PRIu64
+                  " in state %s cannot answer stop reason",
+                  __FUNCTION__, GetID(), StateAsCString(m_state));
+    }
+    return false;
+  }
+  llvm_unreachable("unhandled StateType!");
+}
+
+NativeRegisterContextSP NativeThreadNetBSD::GetRegisterContext() {
+  return m_reg_context_sp; /* XXX: dummy */
+}
+
+Error NativeThreadNetBSD::SetWatchpoint(lldb::addr_t addr, size_t size,
+                                       uint32_t watch_flags, bool hardware) {
+  return Error();
+}
+
+Error NativeThreadNetBSD::RemoveWatchpoint(lldb::addr_t addr) {
+  return Error();
+}
+
+Error NativeThreadNetBSD::SingleStep(uint32_t signo) {
+  const StateType new_state = StateType::eStateStepping;
+  MaybeLogStateChange(new_state);
+  m_state = new_state;
+  m_stop_info.reason = StopReason::eStopReasonNone;
+
+  intptr_t data = 0;
+  if (signo != LLDB_INVALID_SIGNAL_NUMBER)
+    data = signo;
+
+  // If hardware single-stepping is not supported, we just do a continue. The
+  // breakpoint on the
+  // next instruction has been setup in NativeProcessNetBSD::Resume.
+  return NativeProcessNetBSD::PtraceWrapper(PT_STEP, GetID(), (void *)1, data);
+}
+
+void NativeThreadNetBSD::MaybeLogStateChange(lldb::StateType new_state) {
+  Log *log(GetLogIfAllCategoriesSet(LIBLLDB_LOG_THREAD));
+  // If we're not logging, we're done.
+  if (!log)
+    return;
+
+  // If this is a state change to the same state, we're done.
+  lldb::StateType old_state = m_state;
+  if (new_state == old_state)
+    return;
+
+  NativeProcessProtocolSP m_process_sp = m_process_wp.lock();
+  lldb::pid_t pid =
+      m_process_sp ? m_process_sp->GetID() : LLDB_INVALID_PROCESS_ID;
+
+  // Log it.
+  log->Printf("NativeThreadNetBSD: thread (pid=%" PRIu64 ", tid=%" PRIu64
+              ") changing from state %s to %s",
+              pid, GetID(), StateAsCString(old_state),
+              StateAsCString(new_state));
+}
+
+NativeProcessNetBSD &NativeThreadNetBSD::GetProcess() {
+  auto process_sp = std::static_pointer_cast<NativeProcessNetBSD>(
+      NativeThreadProtocol::GetProcess());
+  assert(process_sp);
+  return *process_sp;
+}