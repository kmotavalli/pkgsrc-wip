# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/11/10 01:36:37 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBDRM_BUILDLINK3_MK:=	${LIBDRM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libdrm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibdrm}
BUILDLINK_PACKAGES+=	libdrm

.if !empty(LIBDRM_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libdrm+=	libdrm>=1.0.5
BUILDLINK_PKGSRCDIR.libdrm?=	../../wip/libdrm
.endif	# LIBDRM_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
