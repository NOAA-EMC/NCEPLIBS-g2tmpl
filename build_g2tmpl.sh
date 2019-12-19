#!/bin/bash

 : ${THISDIR:=$(dirname $(readlink -f -n ${BASH_SOURCE[0]}))}
 CDIR=$PWD; cd $THISDIR

 source ./Conf/Analyse_args.sh
 source ./Conf/Collect_info.sh
 source ./Conf/Gen_cfunction.sh
 source ./Conf/Reset_version.sh

 if [[ ${sys} == "intel_general" ]]; then
   sys6=${sys:6}
   source ./Conf/G2tmpl_${sys:0:5}_${sys6^}.sh
   rinst=false
 elif [[ ${sys} == "gnu_general" ]]; then
   sys4=${sys:4}
   source ./Conf/G2tmpl_${sys:0:3}_${sys4^}.sh
   rinst=false
 else
   source ./Conf/G2tmpl_intel_${sys^}.sh
 fi
 $CC --version &> /dev/null || {
   echo "??? G2TMPL: compilers not set." >&2
   exit 1
 }
 [[ -z ${G2TMPL_VER+x} || -z ${G2TMPL_LIB+x} ]] && {
   [[ -z ${libver+x} || -z ${libver} ]] && {
     echo "??? G2TMPL: \"libver\" not set." >&2
     exit
   }
   G2TMPL_INC=${libver}
   G2TMPL_LIB=lib${libver}.a
   G2TMPL_VER=v${libver##*_v} 
 }

set -x
 g2tmplLib=$(basename $G2TMPL_LIB)
 g2tmplInc=$(basename $G2TMPL_INC)

#################
 cd src
#################

#-------------------------------------------------------------------
# Start building libraries
#
 echo
 echo "   ... build g2tmpl library ..."
 echo
   make clean LIB=$g2tmplLib MOD=$g2tmplInc
   mkdir -p $g2tmplInc
   FFLAGS="$FFLAGS ${MODPATH}$g2tmplInc"
   collect_info g2tmpl - OneLine LibInfo
   g2tmplInfo=g2tmpl_info_and_log.txt
   $debg && make debug FFLAGS="$FFLAGS" LIB=$g2tmplLib &> $g2tmplInfo \
         || make build FFLAGS="$FFLAGS" LIB=$g2tmplLib &> $g2tmplInfo
   make message MSGSRC="$(gen_cfunction $g2tmplInfo OneLine LibInfo)" LIB=$g2tmplLib

 $inst && {
#
#     Install libraries and source files
#
   $local && {
     instloc=..
     LIB_DIR=$instloc/lib
     INCP_DIR=$instloc/include
     [ -d $LIB_DIR ] || { mkdir -p $LIB_DIR; }
     [ -d $INCP_DIR ] || { mkdir -p $INCP_DIR; }
     SRC_DIR=
   } || {
     $rinst && {
       LIB_DIR=$(dirname $G2TMPL_LIB)
       INCP_DIR=$(dirname $G2TMPL_INC)
       [ -d $G2TMPL_INC ] && { rm -rf $G2TMPL_INC; } \
                          || { mkdir -p $INCP_DIR; }
       SRC_DIR=$G2TMPL_SRC
     } || {
       LIB_DIR=$instloc/lib
       INCP_DIR=$instloc/include
       [[ $instloc == .. ]] && SRC_DIR=
       G2TMPL_INC=$INCP_DIR/$G2TMPL_INC
       [ -d $G2TMPL_INC ] && { rm -rf $G2TMPL_INC; } \
                          || { mkdir -p $INCP_DIR; }
       SRC_DIR=$instloc/src/${libver}
     }
     [ -d $LIB_DIR ] || mkdir -p $LIB_DIR
     [ -z $SRC_DIR ] || { [ -d $SRC_DIR ] || mkdir -p $SRC_DIR; }
   }

   make clean LIB=
   make install LIB=$g2tmplLib MOD=$g2tmplInc \
                LIB_DIR=$LIB_DIR INC_DIR=$INCP_DIR SRC_DIR=$SRC_DIR
 }

