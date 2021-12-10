![Status](https://github.com/NOAA-EMC/NCEPLIBS-sp/workflows/Build%20and%20Test/badge.svg)

# G2TMPL

Utilities for GRIB2 templates. This is part of the
[NCEPLIBS](https://github.com/NOAA-EMC/NCEPLIBS) project.

## Authors

NCEP/EMC Developers

Code Manager: Ed Hartnett, Hang Lei

## History

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

## Installing

```
mkdir build
cd build
cmake ..
make -j2
make install
```

## Disclaimer

The United States Department of Commerce (DOC) GitHub project code is
provided on an "as is" basis and the user assumes responsibility for
its use. DOC has relinquished control of the information and no longer
has responsibility to protect the integrity, confidentiality, or
availability of the information. Any claims against the Department of
Commerce stemming from the use of its GitHub project will be governed
by all applicable Federal law. Any reference to specific commercial
products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their
endorsement, recommendation or favoring by the Department of
Commerce. The Department of Commerce seal and logo, or the seal and
logo of a DOC bureau, shall not be used in any manner to imply
endorsement of any commercial product or activity by DOC or the United
States Government.







