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
  
  print *, 'testing get_g2_sigreftime'
  call get_g2_sigreftime('anal', val1, ierr)
  if (val1 .ne. 0) stop 4
  call get_g2_sigreftime('fcst', val1, ierr)
  if (val1 .ne. 1) stop 4
  call get_g2_sigreftime('vfcst', val1, ierr)
  if (val1 .ne. 2) stop 4
  call get_g2_sigreftime('obstime', val1, ierr)
  if (val1 .ne. 3) stop 4
  call get_g2_sigreftime('missing', val1, ierr)
  if (val1 .ne. 255) stop 4
  call get_g2_sigreftime('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 4

  print *, 'testing get_g2_prodstatus'
  call get_g2_prodstatus('oper', val1, ierr)
  if (val1 .ne. 0) stop 5
  call get_g2_prodstatus('oper_test', val1, ierr)
  if (val1 .ne. 1) stop 5
  call get_g2_prodstatus('res', val1, ierr)
  if (val1 .ne. 2) stop 5
  call get_g2_prodstatus('reanal', val1, ierr)
  if (val1 .ne. 3) stop 5
  call get_g2_prodstatus('tigge', val1, ierr)
  if (val1 .ne. 4) stop 5
  call get_g2_prodstatus('tigge_test', val1, ierr)
  if (val1 .ne. 5) stop 5
  call get_g2_prodstatus('missing', val1, ierr)
  if (val1 .ne. 255) stop 5
  call get_g2_prodstatus('s2s_oper', val1, ierr)
  if (val1 .ne. 6) stop 5
  call get_g2_prodstatus('s2s_test', val1, ierr)
  if (val1 .ne. 7) stop 5
  call get_g2_prodstatus('unens_rreanl', val1, ierr)
  if (val1 .ne. 8) stop 5
  call get_g2_prodstatus('unens_rreanl_test', val1, ierr)
  if (val1 .ne. 9) stop 5
  call get_g2_prodstatus('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 5

  print *, 'testing get_g2_typeofdata'
  call get_g2_typeofdata('anal', val1, ierr)
  if (val1 .ne. 0) stop 6
  call get_g2_typeofdata('fcst', val1, ierr)
  if (val1 .ne. 1) stop 6
  call get_g2_typeofdata('anal_fcst', val1, ierr)
  if (val1 .ne. 2) stop 6
  call get_g2_typeofdata('con_fcst', val1, ierr)
  if (val1 .ne. 3) stop 6
  call get_g2_typeofdata('per_fcst', val1, ierr)
  if (val1 .ne. 4) stop 6
  call get_g2_typeofdata('con_per_fcst', val1, ierr)
  if (val1 .ne. 5) stop 6
  call get_g2_typeofdata('proc_sat_obs', val1, ierr)
  if (val1 .ne. 6) stop 6
  call get_g2_typeofdata('proc_rad_obs', val1, ierr)
  if (val1 .ne. 7) stop 6
  call get_g2_typeofdata('event_prob', val1, ierr)
  if (val1 .ne. 8) stop 6
  call get_g2_typeofdata('missing', val1, ierr)
  if (val1 .ne. 255) stop 6
  ! Note that the file grib2_all_tables_module.f90 has 'experimental_products'.
  call get_g2_typeofdata('experimental_product', val1, ierr)
  if (val1 .ne. 192) stop 6
  call get_g2_typeofdata('xxxx', val1, ierr)  
  if (ierr .ne. 9) stop 6
  
  print *, 'testing get_g2_typeofgenproc'
  call get_g2_typeofgenproc('anal', val1, ierr)
  if (val1 .ne. 0) stop 7
  call get_g2_typeofgenproc('init', val1, ierr)
  if (val1 .ne. 1) stop 7
  call get_g2_typeofgenproc('fcst', val1, ierr)
  if (val1 .ne. 2) stop 7
  call get_g2_typeofgenproc('bias_corr_fcst', val1, ierr)
  if (val1 .ne. 3) stop 7
  call get_g2_typeofgenproc('ens_fcst', val1, ierr)
  if (val1 .ne. 4) stop 7
  call get_g2_typeofgenproc('prob_fcst', val1, ierr)
  if (val1 .ne. 5) stop 7
  call get_g2_typeofgenproc('fcst_err', val1, ierr)
  if (val1 .ne. 6) stop 7
  call get_g2_typeofgenproc('anal_err', val1, ierr)
  if (val1 .ne. 7) stop 7
  call get_g2_typeofgenproc('obs', val1, ierr)
  if (val1 .ne. 8) stop 7
  call get_g2_typeofgenproc('clim', val1, ierr)
  if (val1 .ne. 9) stop 7
  call get_g2_typeofgenproc('prob_wt_fcst', val1, ierr)
  if (val1 .ne. 10) stop 7
  call get_g2_typeofgenproc('fcst_con_ind', val1, ierr)
  if (val1 .ne. 192) stop 7
  call get_g2_typeofgenproc('bias_corr_ens_fcst', val1, ierr)
  if (val1 .ne. 11) stop 7
  call get_g2_typeofgenproc('missing', val1, ierr)
  if (val1 .ne. 255) stop 7
  call get_g2_typeofgenproc('post_proc_anal', val1, ierr)
  if (val1 .ne. 12) stop 7
  call get_g2_typeofgenproc('post_proc_fcst', val1, ierr)
  if (val1 .ne. 13) stop 7
  call get_g2_typeofgenproc('nowcast', val1, ierr)
  if (val1 .ne. 14) stop 7
  call get_g2_typeofgenproc('hincsast', val1, ierr)
  if (val1 .ne. 15) stop 7
  call get_g2_typeofgenproc('physical_retrieval', val1, ierr)
  if (val1 .ne. 16) stop 7
  call get_g2_typeofgenproc('regression_analysis', val1, ierr)
  if (val1 .ne. 17) stop 7
  call get_g2_typeofgenproc('difference_two_forecasts', val1, ierr)
  if (val1 .ne. 18) stop 7
  call get_g2_typeofgenproc('prob_matched_mean', val1, ierr)
  if (val1 .ne. 193) stop 7
  call get_g2_typeofgenproc('neighborhood_prob', val1, ierr)
  if (val1 .ne. 194) stop 7
  call get_g2_typeofgenproc('bias_corrected_downscale', val1, ierr)
  if (val1 .ne. 195) stop 7
  call get_g2_typeofgenproc('perturbed_analysis', val1, ierr)
  if (val1 .ne. 196) stop 7
  call get_g2_typeofgenproc('ens_scale_prob', val1, ierr)
  if (val1 .ne. 197) stop 7
  call get_g2_typeofgenproc('post_dew_fcst', val1, ierr)
  if (val1 .ne. 198) stop 7
  call get_g2_typeofgenproc('ens_fcst_base', val1, ierr)
  if (val1 .ne. 199) stop 7
  call get_g2_typeofgenproc('local_prob_match_mean', val1, ierr)
  if (val1 .ne. 200) stop 7
  call get_g2_typeofgenproc('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 7

  print *, 'SUCCESS!!'
end program test_all_tables
