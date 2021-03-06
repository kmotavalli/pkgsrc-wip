$NetBSD$

--- lib/sanitizer_common/sanitizer_platform_interceptors.h.orig	2018-02-27 02:50:00.133595047 +0000
+++ lib/sanitizer_common/sanitizer_platform_interceptors.h
@@ -465,4 +465,10 @@
 #define SANITIZER_INTERCEPT_PROTOENT SI_NETBSD
 #define SANITIZER_INTERCEPT_NETENT SI_NETBSD
 
+#define SANITIZER_INTERCEPT_KVM SI_NETBSD
+#define SANITIZER_INTERCEPT_SYSCTL SI_NETBSD
+#define SANITIZER_INTERCEPT_ATOF SI_NETBSD
+#define SANITIZER_INTERCEPT_FTS SI_NETBSD
+#define SANITIZER_INTERCEPT_REGEX SI_NETBSD
+
 #endif  // #ifndef SANITIZER_PLATFORM_INTERCEPTORS_H
