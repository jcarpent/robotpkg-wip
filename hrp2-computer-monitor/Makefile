# robotpkg Makefile for:	robots/hrp2-computer-monitor
# Created:			Olivier Stasse on Wed, 17 Jun 2015
#
VERSION=		1.0.2
DISTNAME=		hrp2-computer-monitor-${VERSION}
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_JRL}ros/${PKGBASE}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}robots/ros-hrp2/${PKGBASE}

MAINTAINER=		gepetto@laas.fr
COMMENT=		Hrp2 ros monitoring package
LICENSE=		openhrp-grx-license
WRKSRC=			${WRKDIR}/hrp2_computer_monitor-${VERSION}

RESTRICTED=	Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=	${RESTRICTED}
NO_PUBLIC_BIN=	${RESTRICTED}

DYNAMIC_PLIST_DIRS+=	share/doc/hrp2_computer_monitor

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
