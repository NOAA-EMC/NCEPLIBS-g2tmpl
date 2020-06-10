#!/bin/sh

#
#  This script uses to test g2_pdt4.1, g2_pdt4.11, g2_pdt4.12, g2_pdt4.8,
#  table_4.233 and  params_grib2_tbl 4.2
#

dir=` pwd `
output_dir=$dir/output
rm -rf $output_dir
for test_name in g2tmpl_pdt4_1 g2tmpl_pdt4_11 g2tmpl_pdt4_12 g2tmpl_pdt4_8 g2tmpl_table_233 params_grib2_tbl_new
do
    echo " "
    echo -n "Running test ${test_name}..."
    mkdir -p $output_dir
    ./test_${test_name} &>${output_dir}/${test_name}.log
    err=$?
    if [ $err -ne 0 ]; then
        >&2 echo "WARNING: ONE OR MORE ERRORS WERE REPORTED!"
       echo " done ---> FAIL  "
    elif [ $err -eq 0 ]; then
       echo " done ---> PASS  "
    fi
    echo " "
    echo "  --> Please view $output_dir/$test_name.log"
    echo " "
done

