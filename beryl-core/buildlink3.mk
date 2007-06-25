# $NetBSD: buildlink3.mk,v 1.1.1.1 2007/06/25 08:22:46 dauphing Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BERYL_CORE_BUILDLINK3_MK:=	${BERYL_CORE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=		beryl-core
.endif

BUILDLINK_PACKAGES:=		${BUILDLINK_PACKAGES:Nberyl-core}
BUILDLINK_PACKAGES+=		beryl-core
BUILDLINK_ORDER:=		${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}beryl-core

.if !empty(BERYL_CORE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.beryl-core+=	beryl-core>=0.2.1
BUILDLINK_PKGSRCDIR.beryl-core?=	../../wip/beryl-core
.endif  # BERYL_CORE_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
