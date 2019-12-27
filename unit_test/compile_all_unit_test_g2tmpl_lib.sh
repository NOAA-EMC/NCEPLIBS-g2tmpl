SHELL=/bin/sh

module purge

mac=$(hostname | cut -c1-1)
mac2=$(hostname | cut -c1-2)

if [ $mac2 = hf ] ; then                         # For Hera
 machine=hera
 . /etc/profile
 . /etc/profile.d/modules.sh
 module load intel/18.0.5.274
 module load impi/2018.0.4
elif [ $mac = v -o $mac = m  ] ; then            # For Dell (i.e. Mars and Venus)
 machine=wcoss_dell_p3
 . $MODULESHOME/init/bash
 module load ips/18.0.1.163
 module use -a /usrx/local/nceplibs/dev/NCEPLIBS/modulefiles
 module load g2tmpl/1.6.0
elif [ $mac = l -o $mac = s ] ; then             # for wcoss (i.e. luna and surge)
 export machine=cray-intel
 module switch intel intel/16.3.210
 module load craype/2.3.0
 module use -a /usrx/local/nceplibs/NCEPLIBS/modulefiles
 module load g2tmpl/1.6.0
fi

#
module list

set -x

BASE=`pwd`

#####################################
cd ${BASE}
for file in pdt4_1 pdt4_11 pdt4_12 pdt4_8 table_233 params_table
do

echo " "
module list 2>compile_all_unit_test_g2tmpl_lib-$machine.log
module list
echo " "
echo " PLEASE WAIT FOR WRITING to LOG file "
echo " "

make -f makefile_$file &>>compile_all_unit_test_g2tmpl_lib-$machine.log
# make -f makefile_$file
make -f makefile_$file clean
done

if [ $? -eq 0 ]; then
   echo " "
   echo " Installation completed. Please refer to log file (unit_test/compile-g2tmpl-$machine.log) for details."
else
   echo " "
   echo " Installation encountered an error. Please refer to log file (unit_test/compile-g2tmpl-$machine.log) for details."
fi

echo " "
