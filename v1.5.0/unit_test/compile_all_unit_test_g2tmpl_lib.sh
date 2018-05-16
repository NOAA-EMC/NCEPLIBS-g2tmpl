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
 echo "  ##################################################################"
 echo "  #                                                                #"
 echo "  #   Usage:                                                       #"
 echo "  #                                                                #"
 echo "  #         $0   wcoss          #"
 echo "  #      or                                                        #"
 echo "  #                                                                #"
 echo "  #         $0   intel          #"
 echo "  #                (craype-sandybridge)                            #"
 echo "  #                                                                #"
 echo "  ##################################################################"
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
   echo " "
   echo "  ##################################################################"
   echo "  #                                                                #"
   echo "  #   Usage:                                                       #"
   echo "  #                                                                #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                                        #"
   echo "  #                                                                #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)                            #"
   echo "  #                                                                #"
   echo "  ##################################################################"
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
   echo "  ##################################################################"
   echo "  #                                                                #"
   echo "  #   Usage:                                                       #"
   echo "  #                                                                #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                                        #"
   echo "  #                                                                #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)                            #"
   echo "  #                                                                #"
   echo "  ##################################################################"
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
   echo "  ##################################################################"
   echo "  #                                                                #"
   echo "  #   Usage:                                                       #"
   echo "  #                                                                #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                                        #"
   echo "  #                                                                #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)                            #"
   echo "  #                                                                #"
   echo "  ##################################################################"
   echo " "
   echo " "
   exit
elif [ $target != "wcoss" ] && [ $target != "intel" ] && [ $target != "cray" ]; then
   set +x
   echo "  "
   echo "  "
   echo "  $1  is invalid argument.  "
   echo " "
   echo " "
   echo "  ##################################################################"
   echo "  #                                                                #"
   echo "  #   Usage:                                                       #"
   echo "  #                                                                #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                                        #"
   echo "  #                                                                #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)                            #"
   echo "  #                                                                #"
   echo "  ##################################################################"
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
   echo "  ##################################################################"
   echo "  #                                                                #"
   echo "  #   Usage:                                                       #"
   echo "  #                                                                #"
   echo "  #         $0   wcoss          #"
   echo "  #      or                                                        #"
   echo "  #                                                                #"
   echo "  #         $0   intel          #"
   echo "  #                (craype-sandybridge)                            #"
   echo "  #                                                                #"
   echo "  ##################################################################"
   echo " "
   echo " "
   exit 1;;
esac

module purge

if [ -s ../modulefiles/modulefile_g2tmpl-${target}-${architecture} ]; then
   module use ../modulefiles
   module load modulefile_g2tmpl-${target}-${architecture}
#   module use /gpfs/hps/nco/ops/nwprod/lib/modulefiles
#
#  Testing g2tmpl v1.5.0 library
#
   module use /usrx/local/nceplibs/g2tmpl/v1.5.0/modulefiles
   if [ $target = wcoss ]; then
      module load g2tmpl-intel/v1.5.0
   elif [ $target = "intel" ]  ; then
      module load g2tmpl-intel/1.5.0
   fi
else
   >&2 echo "Cannot locate the modulefile at ${PWD:?}/modulefiles/modulefile_g2tmpl-${target}-${architecture}. Exiting..."
   exit 1
fi

cd $dir

for file in pdt4_1 pdt4_11 pdt4_12 pdt4_8 table_233 params_table
do

echo " "
# module list 2>compile_all_unit_test_g2tmpl_lib-$target.log
module list
echo " "
echo " PLEASE WAIT FOR WRITING to LOG file "
echo " " 

# make -f makefile_$file &>>compile_all_unit_test_g2tmpl_lib-$target.log
make -f makefile_$file 
make -f makefile_$file clean
done

if [ $? -eq 0 ]; then
   echo " "
   echo " Installation completed. Please refer to log file (unit_test/compile-g2tmpl-$target.log) for details."
else
   echo " "
   echo " Installation encountered an error. Please refer to log file (unit_test/compile-g2tmpl-$target.log) for details."
fi

echo " "
