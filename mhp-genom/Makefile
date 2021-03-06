# robotpkg Makefile for:	path/mhp-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		mhp-genom-3.15
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=mhp-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}mhp-genom

MAINTAINER=		robots@laas.fr
COMMENT=		Motion in Human Presence module
#mhp-genom is currently GPL because it depends on BioMove3D that depends itself 
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2



#####################
#### MHP OPTIONS ####
#####################

PKG_OPTIONS_REQUIRED_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	hrp2 jido pr2 simulation 

##
## HRP2
##
PKG_OPTION_DESCR.hrp2=	Compile MHP for HRP2

define PKG_OPTION_SET.hrp2
  GENOM_ARGS+= -DHRP2
  include ../../localization/pom-genom/depend.mk
endef

##
## Simulation
##

## TODO!! The -DSIMULATION option seems broken in MHP.
## If not solved before 09/03/2011, I'll remove it from robotpkg
PKG_OPTION_DESCR.simulation=	Compile MHP for simulation only

define PKG_OPTION_SET.simulation
  GENOM_ARGS+= -DSIMULATION
  include ../../motion/pilo-genom/depend.mk
endef

##                                                                                                   
## HRI_COSTSPACE                                                         
##                                                                                                   
PKG_SUPPORTED_OPTIONS+= hri_costspace
PKG_OPTION_DESCR.hri_costspace=  Compile MHP for costspaces

define PKG_OPTION_SET.hri_costspace
  GENOM_ARGS+= -DHRI_COSTSPACE                                                                       
  include ../../wip/libmove3d-planners/depend.mk                                                     
endef    

##
## Pr2
##
PKG_OPTION_DESCR.pr2=  Compile MHP for Pr2

define PKG_OPTION_SET.pr2
  GENOM_ARGS+= -DPR2
  GENOM_ARGS+= -DUSE_GLUT
  include ../../localization/pom-genom/depend.mk
  include ../../math/gbM/depend.mk
endef

PKG_SUGGESTED_OPTIONS+= pr2

##
## SPARK synchonization
##
PKG_SUPPORTED_OPTIONS+=	spark
PKG_OPTION_DESCR.spark=	Enable the support of synchro between spark and mhp

define PKG_OPTION_SET.spark
  GENOM_ARGS+= -DSPARK
  include ../../wip/spark-genom/depend.mk
endef

PKG_SUGGESTED_OPTIONS+=	spark

##
## USE_MIGHTABILITY_MAPS synchonization
##
PKG_SUPPORTED_OPTIONS+=	mightability
PKG_OPTION_DESCR.mightability=	Enable mightabilities functions

define PKG_OPTION_SET.mightability
  GENOM_ARGS+= -DUSE_MIGHTABILITY_MAPS
endef

#PKG_SUGGESTED_OPTIONS+=	mightability



#####################

GENOM_MODULE=		mhp

include ../../wip/libmove3d/depend.mk
include ../../wip/libmove3d-hri/depend.mk
include ../../manipulation/genManip-genom/depend.mk
include ../../architecture/genom/depend.mk

include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
