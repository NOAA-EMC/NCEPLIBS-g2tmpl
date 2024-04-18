@mainpage

## Introduction

This document briefly describes the NCEPLIBS-g2tmpl library.

## GRIB2 Tables/Templates

NCO Provides documentation on WMO GRIB2 at
https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/

WMO's GRIB2 specification "FM 92-XII GRIB - General
Regularly-distributed Information in Binary Form" contains
descriptions of each template and code table information. This
document can be found at https://codes.wmo.int/grib2/_codeflag (PDF
and MSWord formats are available).

## Editing Parameters in the GRIB2 Tables

### GRIB2 - TABLE 4.2-0-0 PARAMETERS FOR DISCIPLINE 0 CATEGORY 0

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
<pre>
    cp params_grib2_tbl_new  params_grib2_tbl_new.save
</pre>
2.  edit   params_grib2_tbl_new file
3.  add    new parameter 
    example:
<pre>
           0  19    37   0 ICESEV
</pre>
4.  run the sort_params_grib2_tbl  manually to write output file which it will be sorted.

## Adding New Generating Process ID or Model ID PDT in GRIB2 tables

The following variables are often requested by developers: parameters, model id or new
grid id to add to NCEPGRIB2 tables.  Example:
* parameter category (see Code table 4.1)
* parameter number (see Code table 4.2)
* generating process identified (see Code ON388 Table A)
* fixed surface level (see Code Table 4.5)
* derived forecast (see Code Table 4.7)
* New grid ID - example: Latitude/Longitude grid (See Template 3.0)

Developer will provide the following information for new variable: definition (i.e.,meaning
of parameter) unit, GRIB2 discipline and category which this variable should be belongs to in
GRIB2 tables. 

Then, We will check for new variable in NCEP GRIB2 tables before we
define new variable in NCEP GRIB2 tables to avoid a duplication.  If
the new variables will be used for exchange between UKMet or ECMWF.
In this case, we need to request approval from WMO.  We will ask Jeff
Ator (Who is our WMO representative at EMC) to submit this request to
WMO.  This request usually takes weeks.  Otherwise, We can define it
as in NCEP local use.

For example, parameter “TMP” has defined in discipline 0, category 0
(Meteorological products,Temperature category) and parameter number is
0 (see Table 4.2-0-0) as an WMO official and parameter number is above
192 to 254 are NCEP local define.

After we have added a new variable in WMO NCEP GRIB2 tables, we need
to update the G2TMP library. We need to check out code of the g2tmpl
at NOAA-EMC github.com

<pre>
             export dir=` pwd `
             mkdir -p  g2tmpl
             cd g2tmpl
             git clone   git@github.com:NOAA-EMC/NCEPLIBS-g2tmpl.git
 cd  NCEPLIBS-g2tmpl
 git  checkout   -b   g2tmpl_v1.6.0
            cd g2tmpl_v1.6.0
            cd src
</pre>

## Adding New Parameter in G2TMPL library
1. Edit the params_grib2_tbl_new.text file to add new variable
        We need to save a copy of params_grib2_tbl_new.tex file and params_grib2_tbl_org
        file before We begin to add new variables. The steps are below:
	- cp   params_grib2_tbl_new.text  params_grib2_tbl_new.text_org
	- cp   params_grib2_tbl_new  params_grib2_tbl_new_org
	- vi    params_grib2_tbl_new.text
<pre>
Example:  Temperature  ⇒  it is in discipline 0 category 0 and parameter 0

* WMO parameters have values ranging from 0 to 191 - set to 0
* NCEP local table parameters have values from 192 to 254 - set to 1
* parameter value 255 is a missing or undefined

! GRIB2 - TABLE 4.2-0-0 PARAMETERS FOR DISCIPLINE 0 CATEGORY 0
column  1    ||   Column 2   ||  Parameter   ||   WMO or local  || Abbreviation
     0                    0                           0                         0                    TMP
!  NCEP Local use
     0                    0                    192                       1                   SNOHF

Remember to add a comment line when we add new variable

Example:

!  Added more parameters on 02/25/2021
      0                 0                      205                         1                  ELMELT
</pre>

2. Save the params_grib2_tbl_new.text file
3. Copy params_grib2_tbl_new.text file   to   params_grib2_tbl_new file
    cp   params_grib2_tbl_new.text     params_grib2_tbl_new
4. When we completed adding variables, we need to run the program
    sort_params_grib2_tbl to sort the params_grib2_tbl_new file with a format
    suitable for subsequent reading.
   (if the executable has not been built, we will run script to build it)
    -Build executable   ===>  sort_params_grib2_tbl
         Run script   build_sort_grib2_tbl.sh
    -Run it to sort the params_grib2_tbl_new file
        Sort_params_grib2_tbl
         ==>   The output file is:  params_grib2_tbl_new   file
5. We will give these two files: params_grib2_tbl_new.text  and params_grib2_tbl_new to developer for testing and UPP (code manager is Wen).

### New Generating Process ID (see Code ON388 Table A) or  Product Definition Template.

(see PDT at https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/grib2_table4-0.shtml)
           We need to modify the following files in g2tmpl library:
* g2sec4_temp11.f90 (It is for PDT 4.11)
* g2sec4_temp12.f90  (It is for PDT 4.12)
* g2sec4_temp1.f90   (It is for PDT 4.1)
* Grib2_all_tables_module.f90

After you have received a confirm from developer, You can submit a PR
and nceplibs team will implement g2tmpl v?.?.? in hpc-stack and
delivery code to NCO to implement on WCOSS2.  NCO requires to have
release notes with delivery code form An example of release note
(g2tmpl v1.6.0) for delivery code form
https://docs.google.com/document/d/1VK3j0K0CXRxaP7ZW-uJuyGKosVVAuIOkBBIafY2tzW0/edit
-Guidance for Adding a new variable to the UPP code (Please contact
Wen Meng)
https://docs.google.com/document/d/1r2BQtAI33S_zCDh6Ko-aFW0kO79MYILspW31Bw4zE60/edit

### Maintaining NCEP WMO GRIB2 DOCUMENTATION and Update GRIB2 library

The NCEP WMO grib2 document is on NCO RZDM web site:
https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/ WMO updates
documentation grib2 tables every 6 months (May and November).  The WMO
documents are in the machine-readable format (e.g. XML, CVS).  Because
WMO does not have resources to keep the WMO document in PDF format
since WMO version 25.0 (Released date - May 06, 2020).  The WMO latest
version is at this link:
https://community.wmo.int/activity-areas/wis/latest-version
  
I have updated (8/15/2022) the NCEP WMO GRIB2 documentation and ON-388
to the latest version 29.0 - WMO released date May 20, 2022.

This is an operational NCO Web-site. Please be careful of using this web-site
(e.g., remove files,...). NCO is creating a group account for EMC to access on NCORZDM.
The location of files (shtml) are following:

1. Document for GRIB2
/home/people/nco/nwprod/pmb/docs/grib2/grib2_doc
     Example:
     Adding new variable  “Simulated Brightness Temperature for Himawari-8, Band-16”
     in grib2 4-3-192 table (grib2_table4-2-3-192.shtml).
                vi        grib2_table4-2-3-192.shtml
     We will add “Simulated Brightness Temperature for Himawari-8, Band-16” in grib2 table
     4.2.3.192 and assign it to next value of parameter number which we already assigned to it
    as above in steps.    See  grib2_table4-2-3-192.shtml at this link:
https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/grib2_table4-2-3-192.shtml


2.   Document for GRIB1
          /home/people/nco/nwprod/pmb/docs/on388

3.  Source code
          /home/people/nco/nwprod/pmb/codes/GRIB2
         (This site has been redirected to GitHub)

4. Updated existing grib2 tables or add new grib2 (GDT/PDT) in G2 and G2C library
          We need to modify the following files in G2 or G2C library:
* gridtemplates.F90
This file updates “Grid Definition Template”s used in Section 3
* pdstemplates.F90
This file updates “Product Definition Templates” used in Section 4
* params.F90
This file updates the available parameters in GRIB2 tables.
* New file as needed (e.g., new compression, new feature, …)

### Documentation for Previous Versions of NCEPLIBS-g2tmpl

* [NCEPLIBS-g2tmpl Version 1.11.0](ver-1.11.0/index.html)
* [NCEPLIBS-g2tmpl Version 1.10.0](ver-1.10.0/index.html)

