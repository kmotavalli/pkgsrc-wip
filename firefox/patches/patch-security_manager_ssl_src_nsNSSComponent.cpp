$NetBSD: patch-security_manager_ssl_src_nsNSSComponent.cpp,v 1.1 2013/05/24 03:28:05 makoto Exp $

--- security/manager/ssl/src/nsNSSComponent.cpp.orig	2013-05-11 19:19:50.000000000 +0000
+++ security/manager/ssl/src/nsNSSComponent.cpp
@@ -72,6 +72,7 @@
 #include "nss.h"
 #include "pk11func.h"
 #include "ssl.h"
+#define NSS_ENABLE_ECC 1
 #include "sslproto.h"
 #include "secmod.h"
 #include "sechash.h"
