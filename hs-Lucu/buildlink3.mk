# $NetBSD: buildlink3.mk,v 1.7 2010/03/16 05:14:08 phonohawk Exp $

BUILDLINK_TREE+=	hs-Lucu

.if !defined(HS_LUCU_BUILDLINK3_MK)
HS_LUCU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-Lucu+=	hs-Lucu>=0.5
BUILDLINK_PKGSRCDIR.hs-Lucu?=	../../wip/hs-Lucu

.include "../../wip/hs-HsOpenSSL/buildlink3.mk"
.include "../../wip/hs-haskell-src/buildlink3.mk"
.include "../../wip/hs-dataenc/buildlink3.mk"
.include "../../wip/hs-hxt/buildlink3.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.include "../../wip/hs-network/buildlink3.mk"
.include "../../wip/hs-stm/buildlink3.mk"
.include "../../wip/hs-zlib/buildlink3.mk"
.endif	# HS_LUCU_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-Lucu
