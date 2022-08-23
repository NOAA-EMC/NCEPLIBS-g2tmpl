! This is a test for the NCEPLIBS-g2tmpl project.
!
! This tests the grib2_all_tables_module code.
!
! Ed Hartnett, 8/23/22
program test_all_tables
  use grib2_all_tables_module

  character(len=20) :: key
  integer :: val1, ierr

  print *, 'Testing grib2_all_tables_module, expect and ignore error messages...'

  print *, 'testing get_g2_subcenters'
  call get_g2_subcenters('ncep_reanl', val1, ierr)
  if (val1 .ne. 1) stop 1
  call get_g2_subcenters('ncep_ensem', val1, ierr)
  if (val1 .ne. 2) stop 1
  call get_g2_subcenters('ncep_nco', val1, ierr)
  if (val1 .ne. 3) stop 1
  call get_g2_subcenters('ncep_emc', val1, ierr)
  if (val1 .ne. 4) stop 1
  call get_g2_subcenters('ncep_wpc', val1, ierr)
  if (val1 .ne. 5) stop 1
  call get_g2_subcenters('ncep_opc', val1, ierr)
  if (val1 .ne. 6) stop 1
  call get_g2_subcenters('ncep_cpc', val1, ierr)
  if (val1 .ne. 7) stop 1
  call get_g2_subcenters('ncep_awc', val1, ierr)
  if (val1 .ne. 8) stop 1
  call get_g2_subcenters('ncep_spc', val1, ierr)
  if (val1 .ne. 9) stop 1
  call get_g2_subcenters('ncep_nhc', val1, ierr)
  if (val1 .ne. 10) stop 1
  call get_g2_subcenters('nws_tdl', val1, ierr)
  if (val1 .ne. 11) stop 1
  call get_g2_subcenters('nesdis_ora', val1, ierr)
  if (val1 .ne. 12) stop 1
  call get_g2_subcenters('faa', val1, ierr)
  if (val1 .ne. 13) stop 1
  call get_g2_subcenters('nws_mdl', val1, ierr)
  if (val1 .ne. 14) stop 1
  call get_g2_subcenters('narr', val1, ierr)
  if (val1 .ne. 15) stop 1
  call get_g2_subcenters('swpc', val1, ierr)
  if (val1 .ne. 16) stop 1
  call get_g2_subcenters('xxxxx', val1, ierr)
  if (ierr .ne. 9) stop 1

  print *, 'testing get_g2_versionno'
  call get_g2_versionno('expt', val1, ierr)
  if (val1 .ne. 0) stop 2
  call get_g2_versionno('v2001', val1, ierr)
  if (val1 .ne. 1) stop 2
  call get_g2_versionno('v2003', val1, ierr)
  if (val1 .ne. 2) stop 2
  call get_g2_versionno('v2005', val1, ierr)
  if (val1 .ne. 3) stop 2
  call get_g2_versionno('v2007', val1, ierr)
  if (val1 .ne. 4) stop 2
  call get_g2_versionno('v2009', val1, ierr)
  if (val1 .ne. 5) stop 2
  call get_g2_versionno('v2010', val1, ierr)
  if (val1 .ne. 6) stop 2
  call get_g2_versionno('v052011', val1, ierr)
  if (val1 .ne. 7) stop 2
  call get_g2_versionno('v112011', val1, ierr)
  if (val1 .ne. 8) stop 2
  call get_g2_versionno('v052012', val1, ierr)
  if (val1 .ne. 9) stop 2
  call get_g2_versionno('v112012', val1, ierr)
  if (val1 .ne. 10) stop 2
  call get_g2_versionno('v052013', val1, ierr)
  if (val1 .ne. 11) stop 2
  call get_g2_versionno('v112013', val1, ierr)
  if (val1 .ne. 12) stop 2
  call get_g2_versionno('v052014', val1, ierr)
  if (val1 .ne. 13) stop 2
  call get_g2_versionno('v112014', val1, ierr)
  if (val1 .ne. 14) stop 2
  call get_g2_versionno('v052015', val1, ierr)
  if (val1 .ne. 15) stop 2
  call get_g2_versionno('v112015', val1, ierr)
  if (val1 .ne. 16) stop 2
  call get_g2_versionno('v052016', val1, ierr)
  if (val1 .ne. 17) stop 2
  call get_g2_versionno('v112016', val1, ierr)
  if (val1 .ne. 18) stop 2
  call get_g2_versionno('v052017', val1, ierr)
  if (val1 .ne. 19) stop 2
  call get_g2_versionno('v112017', val1, ierr)
  if (val1 .ne. 20) stop 2
  call get_g2_versionno('v052018', val1, ierr)
  if (val1 .ne. 21) stop 2
  call get_g2_versionno('v112018', val1, ierr)
  if (val1 .ne. 22) stop 2
  call get_g2_versionno('v052019', val1, ierr)
  if (val1 .ne. 23) stop 2
  call get_g2_versionno('v112019', val1, ierr)
  if (val1 .ne. 24) stop 2
  call get_g2_versionno('v052020', val1, ierr)
  if (val1 .ne. 25) stop 2
  call get_g2_versionno('v112020', val1, ierr)
  if (val1 .ne. 26) stop 2
  call get_g2_versionno('v052021', val1, ierr)
  if (val1 .ne. 27) stop 2
  call get_g2_versionno('v112021', val1, ierr)
  if (val1 .ne. 28) stop 2
  call get_g2_versionno('preoper', val1, ierr)
  if (val1 .ne. 29) stop 2
  call get_g2_versionno('xxx', val1, ierr)
  if (ierr .ne. 9) stop 2

  print *, 'get_g2_loctabversno'
  call get_g2_loctabversno('local_tab_no', val1, ierr)
  if (val1 .ne. 0) stop 3
  call get_g2_loctabversno('local_tab_yes1', val1, ierr)
  if (val1 .ne. 1) stop 3
  call get_g2_loctabversno('local_tab_yes2', val1, ierr)
  if (val1 .ne. 2) stop 3
  call get_g2_loctabversno('local_tab_yes3', val1, ierr)
  if (val1 .ne. 3) stop 3
  call get_g2_loctabversno('local_tab_yes4', val1, ierr)
  if (val1 .ne. 4) stop 3
  call get_g2_loctabversno('local_tab_yes5', val1, ierr)
  if (val1 .ne. 5) stop 3
  call get_g2_loctabversno('missing', val1, ierr)
  if (val1 .ne. 255) stop 3
  call get_g2_loctabversno('anal', val1, ierr)
  if (ierr .ne. 9) stop 3
  


  print *, 'SUCCESS!!'
end program test_all_tables
