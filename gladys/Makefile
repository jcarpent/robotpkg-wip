# robotpkg depend.mk for:	mapping/gladys
# Created:			Pierrick Koch on Mon, 19 Aug 2013
#
NAME=			gladys
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.2.8
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}${NAME}

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		The Graph Library for Autonomous and DYnamic Systems
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1
DEPEND_ABI.g++ =	g++>=4.6
DEPEND_ABI.clang =	clang>=3.0

PKG_SUPPORTED_OPTIONS= python
PKG_SUGGESTED_OPTIONS= python

PKG_OPTION_DESCR.python=	Build python bindings
define PKG_OPTION_SET.python
	include ../../mk/sysdep/python.mk
	# include ../../wip/boost-python/depend.mk
	CMAKE_ARGS+=	-DBUILD_PYTHON=ON
	CMAKE_ARGS+=	-DPYTHON_VERSION=${PYTHON_VERSION}
	CMAKE_ARGS+=	-DPYTHON_SUFFIX=-${PKGTAG.python}
	CMAKE_ARGS+=	-DPYTHON_SITE_PACKAGES=${PREFIX}/${PYTHON_SITELIB}
endef
PKG_OPTION_UNSET.python=	CMAKE_ARGS+=-DBUILD_PYTHON=OFF

# outside world libs/tools
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
# standard
include ../../pkgtools/pkg-config/depend.mk
# gdalwrap (GDAL wrapper)
include ../../wip/gdalwrap/depend.mk
# language
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
# robotpkg
include ../../mk/robotpkg.mk
