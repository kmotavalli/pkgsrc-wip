# $NetBSD: buildlink3.mk,v 1.1 2005/07/01 07:26:42 hisazumi Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FIREBIRD_BUILDLINK3_MK:=	${FIREBIRD_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	firebird
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfirebird}
BUILDLINK_PACKAGES+=	firebird

.if !empty(FIREBIRD_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.firebird+=	firebird>=1.5.0
BUILDLINK_PKGSRCDIR.firebird?=	../../wip/firebird
.endif	# FIREBIRD_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
