#!@SH@
# $NetBSD: thunderbird.sh,v 1.1.1.1 2003/11/13 20:28:04 grantbeattie Exp $

LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:@PREFIX@/lib/thunderbird-@PLATFORM@:@PREFIX@/lib"
export LD_LIBRARY_PATH

exec @PREFIX@/lib/thunderbird-@PLATFORM@/thunderbird "$@"
