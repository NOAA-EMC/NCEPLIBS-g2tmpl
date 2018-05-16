#!/bin/sh

######################################################################
#
# This script is used to build G2TMPL Library on WCOSS (CRAY and IBM) 
#
######################################################################
######################################################################

module use /gpfs/hps/nco/ops/nwprod/modulefiles
module load prod_envir/1.0.1

target=$1
export version=v1.5.0
dir=` pwd `
machine_type=$(hostname | cut -c1-1)

if [ $# -ne 1 ]; then
 set +x
 echo " "
 echo " "
 echo "  ####################################################"
 echo "  #                                                  #"
 echo "  #   Usage:                                         #"
 echo "  #                                                  #"
 echo "  #         $0   wcoss          #"
 echo "  #      or                                          #"
 echo "  #                                                  #"
 echo "  #         $0   intel          #"
 echo "  #                (craype-sandybridge)              #"
 echo "  #                                                  #"
 echo "  #      or                                          #"
 echo "  #                                                  #"
 echo "  #         $0   cray           #"
 echo "  #                  (craype-haswell)                #"
 echo "  #                                                  #"
 echo "  ####################################################"
 echo " "
 echo " "
 exit
fi
#
#    Checking for machine before installation start  ###
#
if [ $machine_type = t -o $machine_type = g ] ; then # For WCOSS
    machine=wcoss
elif  [ $machine_type = l -o $machine_type = s ] ; then # For CRAY
    machine=cray
else
   machine=other
   set +x
   echo "  "
   echo "  Your machine must be on WCOSS (Luna/Surge or Tide/Gyre) "
   echo "  "
   echo "  The G2TMPL library only build on WCOSS or CRAY machine. "
   echo " "
   echo " "
   echo "  ####################################################"
   echo "  #                                                  #"
   echo "  #   Usage:                                         #"
   echo "  #                                                  #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)              #"
   echo "  #                                                  #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   cray           #"
   echo "  #                  (craype-haswell)                #"
   echo "  #                                                  #"
   echo "  ####################################################"
   echo " "
   echo " "
   exit
fi

#
# Checking for argument and make sure you are on right machine to install G2TMPL Library
#
if [ $target = "wcoss" ] && [ $machine != "wcoss" ] ; then
   set +x
   echo "  "
   echo "  Your machine is not WCOSS (TIDE or GYRE) "
   echo "  "
   echo "  The G2TMPL library only builds on Tide/Gyre or Luna/Surge machine. "
   echo " "
   echo " "
   echo "  ####################################################"
   echo "  #                                                  #"
   echo "  #   Usage:                                         #"
   echo "  #                                                  #"
   echo "  #         $0   wcoss          #"  
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   intel          #"  
   echo "  #                (craype-sandybridge)              #"
   echo "  #                                                  #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   cray           #"
   echo "  #                  (craype-haswell)                #"
   echo "  #                                                  #"
   echo "  ####################################################"
   echo " "
   echo " "
   exit
elif [ $target = "intel" ] || [ $target = "cray"  ] && [ $machine != "cray" ] ; then
   set +x
   echo "  "
   echo "  Your machine is not CRAY (Luna or Surge) "
   echo "  "
   echo "  The G2TMPL library only builds on Tide/Gyre or Luna/Surge machine. "
   echo " "
   echo " "
   echo "  ####################################################"
   echo "  #                                                  #"
   echo "  #   Usage:                                         #"
   echo "  #                                                  #"
   echo "  #         $0   wcoss          #"  
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   intel          #"  
   echo "  #                (craype-sandybridge)              #"
   echo "  #                                                  #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   cray           #"
   echo "  #                  (craype-haswell)                #"
   echo "  #                                                  #"
   echo "  ####################################################"
   echo " "
   echo " "
   exit
elif [ $target != "wcoss" ] && [ $target != "intel" ] && [ $target != "cray" ]; then
   set +x
   echo "  "
   echo "  "
   echo "  "
   echo "  $1  is invalid argument.  "
   echo " "
   echo " "
   echo "  ####################################################"
   echo "  #                                                  #"
   echo "  #   Usage:                                         #"
   echo "  #                                                  #"
   echo "  #         $0   wcoss          #"  
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   intel          #"  
   echo "  #                (craype-sandybridge)              #"
   echo "  #                                                  #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   cray           #"
   echo "  #                  (craype-haswell)                #"
   echo "  #                                                  #"
   echo "  ####################################################"
   echo " "
   echo " "
   exit
fi

#
# Checking for G2TMPL source code directory
#
cd $dir/src
export chkfile=$dir/src/grib2_all_tables_module.f

if  [  ! -f $chkfile ] ; then
    echo " "
    echo " "
    echo " #####  G2TMPL library source code NOT found  #####"
    echo " "
    echo " The G2TMPL installation can not continue.  Aborted ! "
    echo " "
    echo " "
    echo " Please change to g2tmpl/${version} on on WCOSS (Luna/Surge or Tide/Gyre) "
    echo " "
    echo " "
    echo "  ####################################################"
    echo "  #                                                  #"
    echo "  #   Usage:                                         #"
    echo "  #                                                  #"
    echo "  #         $0   wcoss          #"  
    echo "  #      or                                          #"
    echo "  #                                                  #"
    echo "  #         $0   intel          #"  
    echo "  #                (craype-sandybridge)              #"
    echo "  #                                                  #"
    echo "  #      or                                          #"
    echo "  #                                                  #"
    echo "  #         $0   cray           #"
    echo "  #                  (craype-haswell)                #"
    echo "  #                                                  #"
    echo "  ####################################################"
    echo " "
    echo " "
    exit
fi

case $target in
wcoss) architecture=ivybridge;;
intel) architecture=sandybridge;;
cray) architecture=haswell;;
*) set +x
   echo "  "
   echo "  "
   echo "  Do not know how to build library on $1 "
   echo " "
   echo " "
   echo "  ####################################################"
   echo "  #                                                  #"
   echo "  #   Usage:                                         #"
   echo "  #                                                  #"
   echo "  #         $0   wcoss          #"  
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   intel          #"  
   echo "  #                (craype-sandybridge)              #"
   echo "  #                                                  #"
   echo "  #      or                                          #"
   echo "  #                                                  #"
   echo "  #         $0   cray           #"
   echo "  #                  (craype-haswell)                #"
   echo "  #                                                  #"
   echo "  ####################################################"
   echo " "
   echo " "
   exit 1;;
esac

module purge
if [ -s ${dir}/modulefiles/modulefile_g2tmpl-${target}-${architecture} ]; then
   module use ${dir}/modulefiles
   module load modulefile_g2tmpl-${target}-${architecture}
else
   >&2 echo "Cannot locate the modulefile at ${PWD:?}/modulefiles/modulefile_g2tmpl-${target}-${architecture}. Exiting..."
   exit 1
fi
echo " "
module list 2>compile-g2tmpl-$target.log
module list
echo " "
echo " PLEASE WAIT FOR WRITING to LOG file "
echo " " 

./makeg2tmpllib_$target.sh &>>compile-g2tmpl-$target.log

if [ $? -eq 0 ]; then
   echo " "
   echo " Installation completed. Please refer to log file (src/compile-g2tmpl-$target.log) for details."
else
   echo " "
   echo " Installation encountered an error. Please refer to log file (src/compile-g2tmpl-$target.log) for details."
fi

echo " "
