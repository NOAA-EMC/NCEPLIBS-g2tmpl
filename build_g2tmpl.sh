#!/bin/bash

 (( $# == 0 )) && {
   echo "*** Usage: $0 wcoss|dell|cray|theia|intel_general|gnu_general [debug|build] [[local]install[only]]"
   exit 1
 }

 sys=${1,,}
 [[ $sys == wcoss || $sys == dell || $sys == cray ||\
    $sys == theia || $sys == intel_general || $sys == gnu_general ]] || {
   echo "*** Usage: $0 wcoss|dell|cray|theia|intel_general|gnu_general [debug|build] [[local]install[only]]"
   exit 1
 }
 debg=false
 inst=false
 skip=false
 local=false
 (( $# > 1 )) && {
   [[ ${2,,} == build ]] && debg=false
   [[ ${2,,} == debug ]] && debg=true
   [[ ${2,,} == install ]] && inst=true
   [[ ${2,,} == localinstall ]] && { local=true; inst=true; }
   [[ ${2,,} == installonly ]] && { inst=true; skip=true; }
   [[ ${2,,} == localinstallonly ]] && { local=true; inst=true; skip=true; }
 }
 (( $# > 2 )) && {
   [[ ${3,,} == build ]] && debg=false
   [[ ${3,,} == debug ]] && debg=true
   [[ ${3,,} == install ]] && inst=true
   [[ ${3,,} == localinstall ]] && { local=true; inst=true; }
   [[ ${3,,} == installonly ]] && { inst=true; skip=true; }
   [[ ${3,,} == localinstallonly ]] && { local=true; inst=true; skip=true; }
 }

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
 [[ -z $G2TMPL_VER || -z $G2TMPL_LIB ]] && {
   echo "??? G2TMPL: module/environment not set."
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
              LIB_DIR=..
              INCP_DIR=..
              SRC_DIR=
             } || {
              LIB_DIR=$(dirname $G2TMPL_LIB)
              INCP_DIR=$(dirname $G2TMPL_INC)
              SRC_DIR=$G2TMPL_SRC
              [ -d $LIB_DIR ] || mkdir -p $LIB_DIR
              [ -d $G2TMPL_INC ] && { rm -rf $G2TMPL_INC; } \
                                 || { mkdir -p $INCP_DIR; }
              [ -z $SRC_DIR ] || { [ -d $SRC_DIR ] || mkdir -p $SRC_DIR; }
             }

   make clean LIB=
   make install LIB=$g2tmplLib MOD=$g2tmplInc \
                LIB_DIR=$LIB_DIR INC_DIR=$INCP_DIR SRC_DIR=$SRC_DIR
 }

