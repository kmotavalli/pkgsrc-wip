# $NetBSD: Makefile,v 1.50 2015/06/30 09:57:36 ryoon Exp $

DISTNAME=	simgear-3.4.0
CATEGORIES=	games devel
MASTER_SITES=	ftp://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/ \
		ftp://mirrors.ibiblio.org/simgear/ftp/Source/ \
		http://mirrors.ibiblio.org/simgear/ftp/Source/ \
		ftp://ftp.goflyflightgear.com/simgear/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://simgear.sourceforge.net/
COMMENT=	Simulator Construction Tools
LICENSE=	gnu-lgpl-v2

USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes
USE_CMAKE=		yes

BUILDLINK_API_DEPENDS.plib+=	plib>=1.8.5

.include "../../audio/freealut/buildlink3.mk"
.include "../../audio/openal-soft/buildlink3.mk"
.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../games/plib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../wip/osg/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
