# robotpkg Makefile for:	wip/prf-roboticsgroup-gazebo-plugins
# Created:			Olivier Stasse on Fri, 21 Apr 2017
#
VERSION=	0.1.0
PRFNAME=	roboticsgroup-gazebo-plugins
PKGBASE=	prf-${PRFNAME}
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME= 	$(subst -,_,${PRFNAME})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
#MASTER_SITES=	${MASTER_SITE_JRL:=talos/talos_roboticsgroup_gazebo_plugins/}
HOMEPAGE=	${MASTER_SITE_GITHUB:=pal-robotics-forks/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
LICENSE=	2-clause-bsd
COMMENT=	Provides the mimic joint functionality in Gazebo. 

CMAKE_ARGS+=\
  -Dgazebo_INCLUDE_DIRS=$(filter include/%,${SYSTEM_SEARCH.gazebo})	\
  -Dgazebo_LIBRARIES=$(filter %.so,${SYSTEM_SEARCH.gazebo})

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-pluginlib/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../graphics/ros-robot-model/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/prf-gazebo-ros-pkgs/depend.mk
include ../../wip/pal-hardware-interfaces/depend.mk
include ../../mk/sysdep/gazebo.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
