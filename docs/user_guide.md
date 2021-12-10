@mainpage

# Introduction

This document briefly describes the NCEPLIBS-g2tmpl library.

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
