# $NetBSD$

DISTNAME=	libretro-fuse-20171202
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GITHUB:=libretro/}
GITHUB_PROJECT=	fuse-libretro
GITHUB_TAG=	a990e57c5fc3f425fa5185d627723a6525eeba16

HOMEPAGE=	https://docs.libretro.com/library/fuse/
COMMENT=	Libretro core based on the FUSE ZX Spectrum emulator
LICENSE=	gnu-gpl-v3

USE_TOOLS+=	gmake

MAKE_FLAGS+=	GIT_VERSION="-pkgsrc"

.include "../../mk/endian.mk"

.if ${MACHINE_ENDIAN} == "big"
CFLAGS+=	-DWORDS_BIGENDIAN -DMSB_FIRST
.endif

INSTALLATION_DIRS+=	${PREFIX}/lib/libretro

do-install:
	${INSTALL_LIB} ${WRKSRC}/fuse_libretro.so \
	    ${DESTDIR}${PREFIX}/lib/libretro/fuse_libretro.so

.include "../../mk/bsd.pkg.mk"
