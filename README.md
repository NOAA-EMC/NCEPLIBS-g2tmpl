![Status](https://github.com/NOAA-EMC/NCEPLIBS-sp/workflows/Build%20and%20Test/badge.svg)

# The NCEPLIBS-g2tmpl Library

Utilities for GRIB2 templates. This is part of the
[NCEPLIBS](https://github.com/NOAA-EMC/NCEPLIBS) project.

For more detailed documentation see
https://noaa-emc.github.io/NCEPLIBS-g2tmpl/. For the NCEP WMO GRIB2
Documentation see
https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/.

NCEPLIBS-g2tmpl is used in:
* [Unified Post-Processing (UPP)](https://github.com/NOAA-EMC/UPP)
* [Global Forecast System (GFS)](https://www.ncei.noaa.gov/products/weather-climate-models/global-forecast)
V17
* [Rapid Refresh Forecast System (RRFS)](https://gsl.noaa.gov/focus-areas/unified_forecast_system/rrfs)
* [Hurricane Analysis And Forecast System (HAFS)](https://hfip.org/hafs)
* [High-Resolution Rapid Refresh (HRRR)](https://rapidrefresh.noaa.gov/hrrr/)
* [Real-Time Mesoscale Analysis (RTMA)](https://www.nco.ncep.noaa.gov/pmb/products/rtma/)
* [North American Mesoscale Forecast System (NAM)](https://www.ncei.noaa.gov/products/weather-climate-models/north-american-mesoscale)
* [Weather Research and Forecasting Model (WRF)](https://www.mmm.ucar.edu/weather-research-and-forecasting-model)
* many or all other NOAA [FV3](https://github.com/NOAA-EMC/fv3atm) based applications

## Related NCEPLIBS Projects

Repository | Notes
-----------|------
[NCEPLIBS-g2](https://github.com/NOAA-EMC/NCEPLIBS-g2) | Fortran GRIB 2 library.
[NCEPLIBS-g2c](https://github.com/NOAA-EMC/NCEPLIBS-g2c) | C GRIB 2 library.
[NCEPLIBS-grib_util](https://github.com/NOAA-EMC/NCEPLIBS-grib_util) | A collection of GRIB1 and GRIB2 utilities.

## Authors

V. Krishna, Jun Wang, Boi Vuong, Jeff Ator, other NCEP/EMC Developers.

Code Manager: Ed Hartnett, Hang Lei

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







