$NetBSD$

--- chrome/browser/download/download_prefs.h.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/browser/download/download_prefs.h
@@ -80,7 +80,7 @@ class DownloadPrefs {
   // Disables auto-open based on file extension.
   void DisableAutoOpenBasedOnExtension(const base::FilePath& file_name);
 
-#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_MACOSX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_MACOSX) || defined(OS_BSD)
   // Store the user preference to disk. If |should_open| is true, also disable
   // the built-in PDF plugin. If |should_open| is false, enable the PDF plugin.
   void SetShouldOpenPdfInSystemReader(bool should_open);
@@ -115,7 +115,7 @@ class DownloadPrefs {
                    AutoOpenCompareFunctor> AutoOpenSet;
   AutoOpenSet auto_open_;
 
-#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_MACOSX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_MACOSX) || defined(OS_BSD)
   bool should_open_pdf_in_system_reader_;
   bool disable_adobe_version_check_for_tests_;
 #endif
