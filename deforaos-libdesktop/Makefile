# $NetBSD: Makefile,v 1.18 2015/06/13 20:54:42 khorben Exp $
#

DISTNAME=	libDesktop-0.2.0
PKGNAME=	deforaos-libdesktop-0.2.0
CATEGORIES=	x11
MASTER_SITES=	https://www.defora.org/os/download/download/4355/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	https://www.defora.org/
COMMENT=	DeforaOS desktop library
LICENSE=	2-clause-bsd

USE_TOOLS+=	pkg-config

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}

.include "../../devel/deforaos-libsystem/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk-doc+= gtk-doc>=1.20
.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
