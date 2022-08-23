! This is a test for the NCEPLIBS-g2tmpl project.
!
! This tests the grib2_all_tables_module code.
!
! Ed Hartnett, 8/23/22
program test_all_tables
  use grib2_all_tables_module

  character(len=20) :: key
  integer :: val1, ierr

  print *, 'Testing grib2_all_tables_module...'
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

  print *, 'SUCCESS!!'
end program test_all_tables
