@mainpage

# Introduction

This document briefly describes the NCEPLIBS-g2tmpl library.

# Editing Parameters in the GRIB2 Tables

## GRIB2 - TABLE 4.2-0-0 PARAMETERS FOR DISCIPLINE 0 CATEGORY 0

GRIB2 parameter table for all disciplines and categories and parameter. These fields are 
in order as below:

<pre>
grib2_disc#  grib2_cat#  grib2_param# local_flg#     Mnemonic
</pre>

Where:
- grib2_disc#      grib2_discipline  
- grib2_cat#       grib2_category 
- grib2_param#     grib2_parameter_number
                 WMO parameters have values ranging from 0 to 191
                 and NCEP local table parameters have values from 192a to 254
                 the parameter value 255 is a missing or undefined.
- local_flg#       grib2_table_flag information (0 for the parameter from the WMO table
                 and 1 for the parameter from the NCEP local table)
- Mnemonic         grib2_NCEP_mnemonic (locally defined at NCEP). 

## Example

An entry of paramter TEMPERATURE in grib2 table 4.2

<pre>
grib2_disc#  grib2_cat#  grib2_param# local_flg#     Mnemonic
    0             0           0            0            TMP
</pre>

 Where:
 - grib2_disc#        is DISCIPLINE
 - grib2_cat#         is CATEGORY
 - grib2_param#       is PARAMETER NUMBER
 - local_flg#         is 0 = WMO table
                         is 1 = locally defined at NCEP
 - Mnemonic           is Mnemonic of parameter

After you added parameters, You need to run executable program sort_params_grib2_tbl to 
write out a "params_grib2_tbl_new" SORTED file in a format suitable for subsequent 
reading via the open_and_read_4dot2() function.

@note DO NOT use UNIX command "sort" to sort params_grib2_tbl_new file.

The procedures are following:

1.  Save the original file 
    cp params_grib2_tbl_new  params_grib2_tbl_new.save
2.  edit   params_grib2_tbl_new file
3.  add    new parameter 
    example:
           0  19    37   0 ICESEV
4.  run the sort_params_grib2_tbl  manually to write output file which it will be sorted.

# History

Version | Date | Notes
--------|------|------
1.0.0 | Dec  04 2009 | Original version
1.1.0 | Jan  25 2012 | Add product template 4.44 and 4.48
1.2.1 | Feb  20 2012 | Add complex packing
1.2.2 | Jul  08 2014 | Corrected Scaled value of second fixed surfaces in template 4.8 and Added generating process model HRRR
1.3.0 | Jan  09 2015 | Added product template 4.1, 4.11 and 4.12; Added code tables 4.6 (Type of Ensemble Forecast) and 4.7 (Derived Forecast); Added routines: get_g2_typeofensfcst, get_g2_typeofderivefcst
1.4.0 | Aug  26 2015 | Added more parameters and updated table 4.2-0-20; Added 4 type of aerosols in table4_233
1.5.0 | Mar  09 2017 | Added more parameters in grib2 table 4.2
1.5.2 | Nov  10 2019 | fixed issues in error messages
1.6.0 | Dec  11 2019 | Removed "qsort" in routine process_4dot2.c; Added more parameters
1.10.0 | Apr  28 2021| Added more parameters; Added generating process ID for models: RRFS and CORE; Removed routine gdtsec3.f (obsolete)

# GRIB2 Tables/Templates

NCO Provides documentation on WMO GRIB2 at
https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/

WMO's GRIB2 specification "FM 92-XII GRIB - General
Regularly-distributed Information in Binary Form" contains
descriptions of each template and code table information. This
document can be found at https://codes.wmo.int/grib2/_codeflag (PDF
and MSWord formats are available).
