SHELL=/bin/sh

module purge

mac=$(hostname | cut -c1-1)
mac2=$(hostname | cut -c1-2)

if [ $mac2 = hf ] ; then                        # For Hera
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
elif [ $mac = l -o $mac = s ] ; then             #    wcoss_c (i.e. luna and surge)
 export machine=cray-intel
 module switch intel intel/16.3.210
 module load craype/2.3.0
 module use -a /usrx/local/nceplibs/NCEPLIBS/modulefiles
 module load g2tmpl/1.6.0
fi

#
set -x
module list

BASE=`pwd`

#####################################
cd ${BASE}
make -f makefile_sort_params_table
