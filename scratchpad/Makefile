# $NetBSD: Makefile,v 1.8 2012/10/07 16:22:54 asau Exp $
#

DISTNAME=	scratchpad-0.3.0
PKGREVISION=	3
CATEGORIES=	editors gnome
MASTER_SITES=	http://scratchpad.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@netbsd.org
HOMEPAGE=	http://dborg.wordpress.com/scratchpad/
COMMENT=	Scratchpad is a document oriented

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake
USE_LANGUAGES=	c c++


INSTALLATION_DIRS=	share/doc/scratchpad

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scratchpad


.include "../../devel/GConf/schemas.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
BUILDLINK_API_DEPENDS.dbus-glib=	dbus-glib>=0.33
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtksourceview/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
