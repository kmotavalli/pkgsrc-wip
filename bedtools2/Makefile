# $NetBSD$
#
###########################################################
#               Generated by fbsd2pkg                     #
###########################################################

DISTNAME=	bedtools2-${PORTVERSION}
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_GITHUB:=arq5x/}
GITHUB_TAG=	v${PORTVERSION}

MAINTAINER=	bacon@NetBSD.org
HOMEPAGE=	https://github.com/arq5x/bedtools2
COMMENT=	Swiss army knife for genome arithmetic
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake
REPLACE_BASH=	scripts/*.sh
REPLACE_PYTHON=	scripts/*.py

# WRKSRC=		${WRKDIR}/bedtools2-${PORTVERSION}

# MAKE_ENV=	PYTHONBIN=${PYTHONBIN}

PORTVERSION=	2.27.1

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == i386
MAKE_ENV+=	POPCNT_CAPABILITY=0
.endif

post-install:
	${STRIP_CMD} ${DESTDIR}${PREFIX}/bin/bedtools

.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
