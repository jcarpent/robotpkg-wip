# robotpkg Makefile for:	motion/sot-dynamic
# Created:			Florent Lamiraux on Fri, 8 Jul 2011
#

VERSION=		3.0.0
DISTNAME=		sot-dynamic-v3-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-dynamic-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}proyan/sot-dynamic/

MAINTAINER=	gepetto@laas.fr
CATEGORIES=	motion
LICENSE=	gnu-lgpl-v3
COMMENT=	Create entities to compute a robot dynamics properties

DYNAMIC_PLIST_DIRS+=	share/doc/sot-dynamic-v3
CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
CMAKE_ARGS+=		-DPYTHON_INCLUDE_PATH=${PYTHON_INCLUDE}
CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib


# Build the package in a separate directory
CONFIGURE_DIRS=		_build
CMAKE_ARG_PATH=		..

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build

DEPEND_ABI.python+= python<3.0

include ../../math/jrl-dynamics/depend.mk
include ../../wip/py-sot-tools-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
