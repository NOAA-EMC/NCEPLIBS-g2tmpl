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
 elif [[ ${sys} == "gnu_general" ]]; then
   sys4=${sys:4}
   source ./Conf/G2tmpl_${sys:0:3}_${sys4^}.sh
 else
   source ./Conf/G2tmpl_intel_${sys^}.sh
 fi
 $CC --version &> /dev/null || {
   echo "??? G2TMPL: compilers not set." >&2
   exit 1
 }
 [[ -z $G2TMPL_VER || -z $G2TMPL_LIB ]] && {
   echo "??? G2TMPL: module/environment not set." >&2
   exit 1
 }

set -x
 g2tmplLib=$(basename $G2TMPL_LIB)
 g2tmplInc=$(basename $G2TMPL_INC)

#################
 cd src
#################

 $skip || {
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
 }

 $inst && {
#
#     Install libraries and source files
#
   $local && {
     instloc=..
     LIB_DIR=$instloc
     INCP_DIR=$instloc/include
     [ -d $INCP_DIR ] || { mkdir -p $INCP_DIR; }
     SRC_DIR=
   } || {
     [[ $instloc == --- ]] && {
       LIB_DIR=$(dirname $G2TMPL_LIB)
       INCP_DIR=$(dirname $G2TMPL_INC)
       SRC_DIR=$G2TMPL_SRC
     } || {
       LIB_DIR=$instloc
       INCP_DIR=$instloc/include
       SRC_DIR=$instloc/src
       [[ $instloc == .. ]] && SRC_DIR=
     }
     [ -d $LIB_DIR ] || mkdir -p $LIB_DIR
     [ -d $G2TMPL_INC ] && { rm -rf $G2TMPL_INC; } \
                        || { mkdir -p $INCP_DIR; }
     [ -z $SRC_DIR ] || { [ -d $SRC_DIR ] || mkdir -p $SRC_DIR; }
   }

   make clean LIB=
   make install LIB=$g2tmplLib MOD=$g2tmplInc \
                LIB_DIR=$LIB_DIR INC_DIR=$INCP_DIR SRC_DIR=$SRC_DIR
 }

