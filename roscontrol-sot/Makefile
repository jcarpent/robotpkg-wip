# robotpkg Makefile for:	wip/roscontrol_sot
#

VERSION=		0.0.1rc
PKGBASE=		roscontrol-sot
PKGNAME=		${PKGBASE}-${VERSION}
ROSNAME=		$(subst -,_,${PKGBASE})
DISTNAME=		${ROSNAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=		${PKGBASE}

CATEGORIES=		wip
#MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=roscontrol_sot/}
HOMEPAGE=		${MASTER_SITE_GITHUB:=stack-of-tasks/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/releases/download/v${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/${ROSNAME}
CHECKOUT_VCS_OPTS=	--recursive

COMMENT=		This ROS package binds together the ROS control framework with the dynamic-graph real-time control architecture.
LICENSE=		2-clause-bsd
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/doxygen-html

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../sysutils/ros-rospack/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/dynamic-graph-bridge-v3/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../simulation/bullet/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../mk/robotpkg.prefs.mk

ifeq (Ubuntu,${OPSYS})
  ifneq (,$(filter 16.04,${OS_VERSION}))
    include ../../wip/prf-ros-controllers/depend.mk
    include ../../wip/pal-hardware-interfaces/depend.mk
  endif
endif
include ../../devel/ros-roscpp-core/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

