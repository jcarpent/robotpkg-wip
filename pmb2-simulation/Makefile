# robotpkg Makefile for:	wip/pmb2_simulation
# Created:			Olivier Stasse on Tue, 9 May 2018
#

VERSION=	1.0.0os1
PKGBASE=	pmb2-simulation
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=olivier-stasse/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	PMB2 robot simulation
LICENSE=	apache-2.0

ROS_METAPKG=	yes
USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
