
PKGNAME=		qtspim
CATEGORIES=		emulators x11
SVN_REPO=		https://svn.code.sf.net/p/spimsimulator/code/
HOMEPAGE=		http://spimsimulator.sourceforge.net/
COMMENT=		A MIPS32 Simulator with a QT frontend
LICENSE=		BSD
MAINTAINER=
USE_TOOLS+= qt5-qtbase bison //build time deps on bison and qmake-qt5. needs to patch the .pro file to not build help

SVN_REVISION=	712
BUILD_DEPENDS+=
DEPENDS+= qt5
.include "../../mk/svn-package.mk
.include "../../mk/bsd.pkg.mk"
