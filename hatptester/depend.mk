# robotpkg depend.mk for:	planning/hatptester
# Created:			Raphaël Lallement, 22/01/2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HATPTESTER_DEPEND_MK:=${HATPTESTER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hatptester
endif

ifeq (+,$(HATPTESTER_DEPEND_MK))
PREFER.hatpconsole?=	robotpkg

DEPEND_USE+=		hatptester

DEPEND_ABI.hatptester?=	hatptester>=0.8.0
DEPEND_DIR.hatptester?=	../../wip/hatptester

SYSTEM_SEARCH.hatptester=\
	bin/hatptster
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}