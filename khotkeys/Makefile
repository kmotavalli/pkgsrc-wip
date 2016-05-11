# $NetBSD: Makefile,v 1.25 2016/01/10 20:01:05 markd Exp $

DISTNAME=	khotkeys-${PLASMAVER}
CATEGORIES=	x11

HOMEPAGE=	https://www.kde.org/workspaces/plasmadesktop/
COMMENT=	KHotKeys
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

.include "../../wip/kde5/plasma.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../wip/kdoctools

USE_TOOLS+=	msgmerge pkg-config

# generation of kded.moc fails when ${PREFIX}/include in the moc include path
SUBST_CLASSES+=		fix-moc
SUBST_STAGE.fix-moc=	post-configure
SUBST_MESSAGE.fix-moc=	Cleaning up MOC includes
SUBST_FILES.fix-moc=	_KDE_build/app/CMakeFiles/kded_khotkeys_automoc.dir/AutogenInfo.cmake 
SUBST_FILES.fix-moc+=	_KDE_build/test/CMakeFiles/khotkeys_standalone_automoc.dir/AutogenInfo.cmake 
SUBST_FILES.fix-moc+=	_KDE_build/kcm_hotkeys/CMakeFiles/kcm_hotkeys_automoc.dir/AutogenInfo.cmake 
SUBST_SED.fix-moc=	-e 's,;${PREFIX}/include;,;,g'

#MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
#CONF_FILES+=	${PREFIX}/share/examples/kde-xdg/autostart/krunner.desktop \
#		${PKG_SYSCONFDIR}/xdg/autostart/krunner.desktop
#CONF_FILES+=	${PREFIX}/share/examples/kde-xdg/plasmoids.knsrc \
#		${PKG_SYSCONFDIR}/xdg/plasmoids.knsrc

.include "../../wip/kcmutils/buildlink3.mk"
.include "../../wip/kdelibs4support/buildlink3.mk"
.include "../../wip/plasma-workspace/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"