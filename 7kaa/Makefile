# $NetBSD$

DISTNAME=	7kaa-2.14.6
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GITHUB:=the3dfxdude/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	cfkoch@edgebsd.org
HOMEPAGE=	https://7kfans.com/
COMMENT=	Seven Kingdoms: Ancient Adversaries
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gettext-m4-[0-9]*:../../devel/gettext-m4
BUILD_DEPENDS+=	gettext-tools-[0-9]*:../../devel/gettext-tools

EXTRACT_USING=	bsdtar
USE_LANGUAGES+=	c c++
GNU_CONFIGURE=	yes
USE_TOOLS+=	autoreconf autoconf automake

REPLACE_SH+=	autogen.sh

pre-configure:
	cd ${WRKSRC} && sh ./autogen.sh

.include "../../audio/openal-soft/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../net/enet/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
