! This is a test for the NCEPLIBS-g2tmpl project.
!
! This tests the grib2_all_tables_module code which involved key lookups.
!
! Ed Hartnett, 8/23/22
program test_all_tables
  use grib2_all_tables_module
  implicit none
  
  integer :: val1, ierr

  print *, 'Testing grib2_all_tables_module subroutines with key parameters...'
  print *, '(Expect and ignore error messages.)'

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
  call get_g2_versionno('v052022', val1, ierr)
  if (val1 .ne. 29) stop 2
  call get_g2_versionno('v112022', val1, ierr)
  if (val1 .ne. 30) stop 2
  call get_g2_versionno('v062023', val1, ierr)
  if (val1 .ne. 31) stop 2
  call get_g2_versionno('v112023', val1, ierr)
  if (val1 .ne. 32) stop 2
  call get_g2_versionno('preoper', val1, ierr)
  if (val1 .ne. 33) stop 2
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
  call get_g2_sigreftime('local', val1, ierr)
  if (val1 .ne. 4) stop 4
  call get_g2_sigreftime('sim_start', val1, ierr)
  if (val1 .ne. 5) stop 4
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
  call get_g2_prodstatus('copernic_rreanl', val1, ierr)
  if (val1 .ne. 10) stop 5
  call get_g2_prodstatus('copernic_rreanl_test', val1, ierr)
  if (val1 .ne. 11) stop 5
  call get_g2_prodstatus('dest_earth', val1, ierr)
  if (val1 .ne. 12) stop 5
  call get_g2_prodstatus('dest_earth_test', val1, ierr)
  if (val1 .ne. 13) stop 5
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
  call get_g2_typeofgenproc('first_guess', val1, ierr)
  if (val1 .ne. 19) stop 7
  call get_g2_typeofgenproc('anal_inc', val1, ierr)
  if (val1 .ne. 20) stop 7
  call get_g2_typeofgenproc('init_inc', val1, ierr)
  if (val1 .ne. 21) stop 7
  call get_g2_typeofgenproc('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 7

  print *, 'testing get_g2_unitoftimerange'
  call get_g2_unitoftimerange('minute', val1, ierr)
  if (val1 .ne. 0) stop 8
  call get_g2_unitoftimerange('hour', val1, ierr)
  if (val1 .ne. 1) stop 8
  call get_g2_unitoftimerange('day', val1, ierr)
  if (val1 .ne. 2) stop 8
  call get_g2_unitoftimerange('month', val1, ierr)
  if (val1 .ne. 3) stop 8
  call get_g2_unitoftimerange('year', val1, ierr)
  if (val1 .ne. 4) stop 8
  call get_g2_unitoftimerange('decade', val1, ierr)
  if (val1 .ne. 5) stop 8
  call get_g2_unitoftimerange('normal_30y', val1, ierr)
  if (val1 .ne. 6) stop 8
  call get_g2_unitoftimerange('century', val1, ierr)
  if (val1 .ne. 7) stop 8
  call get_g2_unitoftimerange('3hours', val1, ierr)
  if (val1 .ne. 10) stop 8
  call get_g2_unitoftimerange('6hours', val1, ierr)
  if (val1 .ne. 11) stop 8
  call get_g2_unitoftimerange('12hours', val1, ierr)
  if (val1 .ne. 12) stop 8
  call get_g2_unitoftimerange('second', val1, ierr)
  if (val1 .ne. 13) stop 8
  call get_g2_unitoftimerange('missing', val1, ierr)
  if (val1 .ne. 255) stop 8
  call get_g2_unitoftimerange('xxx', val1, ierr)
  if (ierr .ne. 9) stop 8

  print *, 'testing get_g2_fixedsurfacetypes'
  call get_g2_fixedsurfacetypes('surface', val1, ierr)
  if (val1 .ne. 1) stop 9
  call get_g2_fixedsurfacetypes('cloud_base', val1, ierr)
  if (val1 .ne. 2) stop 9
  call get_g2_fixedsurfacetypes('cloud_top', val1, ierr)
  if (val1 .ne. 3) stop 9
  call get_g2_fixedsurfacetypes('0C_isotherm', val1, ierr)
  if (val1 .ne. 4) stop 9
  call get_g2_fixedsurfacetypes('lvl_of_adiab_cond_from_sfc', val1, ierr)
  if (val1 .ne. 5) stop 9
  call get_g2_fixedsurfacetypes('max_wind', val1, ierr)
  if (val1 .ne. 6) stop 9
  call get_g2_fixedsurfacetypes('tropopause', val1, ierr)
  if (val1 .ne. 7) stop 9
  call get_g2_fixedsurfacetypes('top_of_atmos', val1, ierr)
  if (val1 .ne. 8) stop 9
  call get_g2_fixedsurfacetypes('sea_bottom', val1, ierr)
  if (val1 .ne. 9) stop 9
  call get_g2_fixedsurfacetypes('entire_atmos', val1, ierr)
  if (val1 .ne. 10) stop 9
  call get_g2_fixedsurfacetypes('cb_base', val1, ierr)
  if (val1 .ne. 11) stop 9
  call get_g2_fixedsurfacetypes('cb_top', val1, ierr)
  if (val1 .ne. 12) stop 9
  call get_g2_fixedsurfacetypes('isothermal', val1, ierr)
  if (val1 .ne. 20) stop 9
  call get_g2_fixedsurfacetypes('isobaric_sfc', val1, ierr)
  if (val1 .ne. 100) stop 9
  call get_g2_fixedsurfacetypes('mean_sea_lvl', val1, ierr)
  if (val1 .ne. 101) stop 9
  call get_g2_fixedsurfacetypes('spec_alt_above_mean_sea_lvl', val1, ierr)
  if (val1 .ne. 102) stop 9
  call get_g2_fixedsurfacetypes('spec_hgt_lvl_above_grnd', val1, ierr)
  if (val1 .ne. 103) stop 9
  call get_g2_fixedsurfacetypes('sigma_lvl', val1, ierr)
  if (val1 .ne. 104) stop 9
  call get_g2_fixedsurfacetypes('hybrid_lvl', val1, ierr)
  if (val1 .ne. 105) stop 9
  call get_g2_fixedsurfacetypes('depth_bel_land_sfc', val1, ierr)
  if (val1 .ne. 106) stop 9
  call get_g2_fixedsurfacetypes('isentropic_lvl', val1, ierr)
  if (val1 .ne. 107) stop 9
  call get_g2_fixedsurfacetypes('spec_pres_above_grnd', val1, ierr)
  if (val1 .ne. 108) stop 9
  call get_g2_fixedsurfacetypes('pot_vort_sfc', val1, ierr)
  if (val1 .ne. 109) stop 9
  call get_g2_fixedsurfacetypes('eta_lvl', val1, ierr)
  if (val1 .ne. 111) stop 9
  call get_g2_fixedsurfacetypes('mixed_lyr_depth', val1, ierr)
  if (val1 .ne. 117) stop 9
  call get_g2_fixedsurfacetypes('depth_below_sea_lvl', val1, ierr)
  if (val1 .ne. 160) stop 9
  call get_g2_fixedsurfacetypes('entire_atmos_single_lyr', val1, ierr)
  if (val1 .ne. 200) stop 9
  call get_g2_fixedsurfacetypes('entire_ocean_single_lyr', val1, ierr)
  if (val1 .ne. 201) stop 9
  call get_g2_fixedsurfacetypes('hghst_trop_frz_lvl', val1, ierr)
  if (val1 .ne. 204) stop 9
  call get_g2_fixedsurfacetypes('grid_scale_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 206) stop 9
  call get_g2_fixedsurfacetypes('grid_scale_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 207) stop 9
  call get_g2_fixedsurfacetypes('bound_lyr_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 209) stop 9
  call get_g2_fixedsurfacetypes('bound_lyr_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 210) stop 9
  call get_g2_fixedsurfacetypes('bound_lyr_cloud_lyr', val1, ierr)
  if (val1 .ne. 211) stop 9
  call get_g2_fixedsurfacetypes('low_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 212) stop 9
  call get_g2_fixedsurfacetypes('low_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 213) stop 9
  call get_g2_fixedsurfacetypes('low_cloud_lyr', val1, ierr)
  if (val1 .ne. 214) stop 9
  call get_g2_fixedsurfacetypes('cloud_ceilng', val1, ierr)
  if (val1 .ne. 215) stop 9
  call get_g2_fixedsurfacetypes('planetary_bound_lyr', val1, ierr)
  if (val1 .ne. 220) stop 9
  call get_g2_fixedsurfacetypes('lyr_betwn_2hybrid_lvls', val1, ierr)
  if (val1 .ne. 221) stop 9
  call get_g2_fixedsurfacetypes('mid_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 222) stop 9
  call get_g2_fixedsurfacetypes('mid_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 223) stop 9
  call get_g2_fixedsurfacetypes('mid_cloud_lyr', val1, ierr)
  if (val1 .ne. 224) stop 9
  call get_g2_fixedsurfacetypes('high_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 232) stop 9
  call get_g2_fixedsurfacetypes('high_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 233) stop 9
  call get_g2_fixedsurfacetypes('high_cloud_lyr', val1, ierr)
  if (val1 .ne. 234) stop 9
  call get_g2_fixedsurfacetypes('ocean_isotherm_lvl', val1, ierr)
  if (val1 .ne. 235) stop 9
  call get_g2_fixedsurfacetypes('lyr_betwn_2depths_below_ocean_sfc', val1, ierr)
  if (val1 .ne. 236) stop 9
  call get_g2_fixedsurfacetypes('bot_of_ocean_mix_lyr', val1, ierr)
  if (val1 .ne. 237) stop 9
  call get_g2_fixedsurfacetypes('bot_of_ocean_isoth_lyr', val1, ierr)
  if (val1 .ne. 238) stop 9
  call get_g2_fixedsurfacetypes('lyr_ocean_sfc_26c_ocean_isotherm_lvl', val1, ierr)
  if (val1 .ne. 239) stop 9
  call get_g2_fixedsurfacetypes('ocean_mix_lyr', val1, ierr)
  if (val1 .ne. 240) stop 9
  call get_g2_fixedsurfacetypes('ordered_seq_of_data', val1, ierr)
  if (val1 .ne. 241) stop 9
  call get_g2_fixedsurfacetypes('convective_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 242) stop 9
  call get_g2_fixedsurfacetypes('convective_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 243) stop 9
  call get_g2_fixedsurfacetypes('convective_cloud_lyr', val1, ierr)
  if (val1 .ne. 244) stop 9
  call get_g2_fixedsurfacetypes('lwst_lvl_of_wet_bulb_zero', val1, ierr)
  if (val1 .ne. 245) stop 9
  call get_g2_fixedsurfacetypes('max_equiv_pot_temp_lvl', val1, ierr)
  if (val1 .ne. 246) stop 9
  call get_g2_fixedsurfacetypes('equil_lvl', val1, ierr)
  if (val1 .ne. 247) stop 9
  call get_g2_fixedsurfacetypes('shall_convective_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 248) stop 9
  call get_g2_fixedsurfacetypes('shall_convective_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 249) stop 9
  call get_g2_fixedsurfacetypes('deep_convective_cloud_bot_lvl', val1, ierr)
  if (val1 .ne. 251) stop 9
  call get_g2_fixedsurfacetypes('deep_convective_cloud_top_lvl', val1, ierr)
  if (val1 .ne. 252) stop 9
  call get_g2_fixedsurfacetypes('lwst_bot_lvl_of_supercooled_liq_water_lyr', val1, ierr)
  if (val1 .ne. 253) stop 9
  call get_g2_fixedsurfacetypes('hghst_top_lvl_of_supercooled_liq_water_lyr', val1, ierr)
  if (val1 .ne. 254) stop 9
  call get_g2_fixedsurfacetypes('missing', val1, ierr)
  if (val1 .ne. 255) stop 9
  call get_g2_fixedsurfacetypes('hybrid_height_lvl', val1, ierr)
  if (val1 .ne. 118) stop 9
  call get_g2_fixedsurfacetypes('hybrid_pres_lvl', val1, ierr)
  if (val1 .ne. 119) stop 9
  call get_g2_fixedsurfacetypes('gen_vertical_height_coor', val1, ierr)
  if (val1 .ne. 150) stop 9
  call get_g2_fixedsurfacetypes('depth_below_water_lvl', val1, ierr)
  if (val1 .ne. 161) stop 9
  call get_g2_fixedsurfacetypes('lake_or_river_bottom', val1, ierr)
  if (val1 .ne. 162) stop 9
  call get_g2_fixedsurfacetypes('bottom_of_sediment_layer', val1, ierr)
  if (val1 .ne. 163) stop 9
  call get_g2_fixedsurfacetypes('bottom_of_therm_sediment_layer', val1, ierr)
  if (val1 .ne. 164) stop 9
  call get_g2_fixedsurfacetypes('bottom_of_sediment_layer_thermal_wave', val1, ierr)
  if (val1 .ne. 165) stop 9
  call get_g2_fixedsurfacetypes('maxing_layer', val1, ierr)
  if (val1 .ne. 166) stop 9
  call get_g2_fixedsurfacetypes('bottom_root_zone', val1, ierr)
  if (val1 .ne. 167) stop 9
  call get_g2_fixedsurfacetypes('topsfc_ice_onsealakeriver', val1, ierr)
  if (val1 .ne. 174) stop 9
  call get_g2_fixedsurfacetypes('topsfc_ice_unsnow_onsealakeriver', val1, ierr)
  if (val1 .ne. 175) stop 9
  call get_g2_fixedsurfacetypes('bottomsfc_ice_onsealakeriver', val1, ierr)
  if (val1 .ne. 176) stop 9
  call get_g2_fixedsurfacetypes('deep_soil', val1, ierr)
  if (val1 .ne. 177) stop 9
  call get_g2_fixedsurfacetypes('topsfc_glacierice_inlandice', val1, ierr)
  if (val1 .ne. 179) stop 9
  call get_g2_fixedsurfacetypes('deepinland_glacierice', val1, ierr)
  if (val1 .ne. 180) stop 9
  call get_g2_fixedsurfacetypes('gridtile_landfrac', val1, ierr)
  if (val1 .ne. 181) stop 9
  call get_g2_fixedsurfacetypes('gridtile_waterfrac', val1, ierr)
  if (val1 .ne. 182) stop 9
  call get_g2_fixedsurfacetypes('gridtile_icefrac_onsealakeriver', val1, ierr)
  if (val1 .ne. 183) stop 9
  call get_g2_fixedsurfacetypes('gridtile_glacierice_inland_icefrac', val1, ierr)
  if (val1 .ne. 184) stop 9
  call get_g2_fixedsurfacetypes('lowest_level_vertical_icc', val1, ierr)
  if (val1 .ne. 13) stop 9
  call get_g2_fixedsurfacetypes('level_free_convection', val1, ierr)
  if (val1 .ne. 14) stop 9
  call get_g2_fixedsurfacetypes('covection_conden_level', val1, ierr)
  if (val1 .ne. 15) stop 9
  call get_g2_fixedsurfacetypes('level_neutral_buoy', val1, ierr)
  if (val1 .ne. 16) stop 9
  call get_g2_fixedsurfacetypes('soil_level', val1, ierr)
  if (val1 .ne. 151) stop 9
  call get_g2_fixedsurfacetypes('lowest_mass_den', val1, ierr)
  if (val1 .ne. 21) stop 9
  call get_g2_fixedsurfacetypes('highest_mass_den', val1, ierr)
  if (val1 .ne. 22) stop 9
  call get_g2_fixedsurfacetypes('lowest_air_con', val1, ierr)
  if (val1 .ne. 23) stop 9
  call get_g2_fixedsurfacetypes('highest_air_con', val1, ierr)
  if (val1 .ne. 24) stop 9
  call get_g2_fixedsurfacetypes('highest_rref', val1, ierr)
  if (val1 .ne. 25) stop 9
  call get_g2_fixedsurfacetypes('log_hyb_lev', val1, ierr)
  if (val1 .ne. 113) stop 9
  call get_g2_fixedsurfacetypes('snow_lev', val1, ierr)
  if (val1 .ne. 114) stop 9
  call get_g2_fixedsurfacetypes('sigma_hi_lev', val1, ierr)
  if (val1 .ne. 115) stop 9
  call get_g2_fixedsurfacetypes('ocean_model_level', val1, ierr)
  if (val1 .ne. 168) stop 9
  call get_g2_fixedsurfacetypes('ocean_level_water_density', val1, ierr)
  if (val1 .ne. 169) stop 9
  call get_g2_fixedsurfacetypes('ocean_level_water_potential_temp', val1, ierr)
  if (val1 .ne. 170) stop 9
  call get_g2_fixedsurfacetypes('eff_layer_top_level', val1, ierr)
  if (val1 .ne. 216) stop 9
  call get_g2_fixedsurfacetypes('eff_layer_bottom_level', val1, ierr)
  if (val1 .ne. 217) stop 9
  call get_g2_fixedsurfacetypes('eff_layer', val1, ierr)
  if (val1 .ne. 218) stop 9
  call get_g2_fixedsurfacetypes('dep_level_unstable_parcel_air', val1, ierr)
  if (val1 .ne. 17) stop 9
  call get_g2_fixedsurfacetypes('dep_level_mixed_parcel_air', val1, ierr)
  if (val1 .ne. 18) stop 9
  call get_g2_fixedsurfacetypes('lowest_cloud_cover', val1, ierr)
  if (val1 .ne. 19) stop 9
  call get_g2_fixedsurfacetypes('conv_cloud_base', val1, ierr)
  if (val1 .ne. 26) stop 9
  call get_g2_fixedsurfacetypes('conv_cloud_top', val1, ierr)
  if (val1 .ne. 27) stop 9
  call get_g2_fixedsurfacetypes('spec_rad_centre_sun', val1, ierr)
  if (val1 .ne. 30) stop 9
  call get_g2_fixedsurfacetypes('solar_photosphere', val1, ierr)
  if (val1 .ne. 31) stop 9
  call get_g2_fixedsurfacetypes('ion_d_region_lev', val1, ierr)
  if (val1 .ne. 32) stop 9
  call get_g2_fixedsurfacetypes('ion_e_region_lev', val1, ierr)
  if (val1 .ne. 33) stop 9
  call get_g2_fixedsurfacetypes('ion_f1_region_lev', val1, ierr)
  if (val1 .ne. 34) stop 9
  call get_g2_fixedsurfacetypes('ion_f2_region_lev', val1, ierr)
  if (val1 .ne. 35) stop 9
  call get_g2_fixedsurfacetypes('sea_ice_lev', val1, ierr)
  if (val1 .ne. 152) stop 9
  call get_g2_fixedsurfacetypes('ocean_level_vert_eddy_diffus', val1, ierr)
  if (val1 .ne. 171) stop 9
  call get_g2_fixedsurfacetypes('ocean_level_rho_diff', val1, ierr)
  if (val1 .ne. 172) stop 9
  call get_g2_fixedsurfacetypes('top_snow_over_sea_ice', val1, ierr)
  if (val1 .ne. 173) stop 9
  call get_g2_fixedsurfacetypes('roof_lev', val1, ierr)
  if (val1 .ne. 185) stop 9
  call get_g2_fixedsurfacetypes('wall_lev', val1, ierr)
  if (val1 .ne. 186) stop 9
  call get_g2_fixedsurfacetypes('road_lev', val1, ierr)
  if (val1 .ne. 187) stop 9
  call get_g2_fixedsurfacetypes('melt_pond_top_surf', val1, ierr)
  if (val1 .ne. 188) stop 9
  call get_g2_fixedsurfacetypes('melt_pond_bottom_surf', val1, ierr)
  if (val1 .ne. 189) stop 9
  call get_g2_fixedsurfacetypes('xxx', val1, ierr)
  if (ierr .ne. 9) stop 9

  print *, 'testing get_g2_statprocesstypes'
  call get_g2_statprocesstypes('AVE', val1, ierr)
  if (val1 .ne. 0) stop 10
  call get_g2_statprocesstypes('ACM', val1, ierr)
  if (val1 .ne. 1) stop 10
  call get_g2_statprocesstypes('MAX', val1, ierr)
  if (val1 .ne. 2) stop 10
  call get_g2_statprocesstypes('MIN', val1, ierr)
  if (val1 .ne. 3) stop 10
  call get_g2_statprocesstypes('diff_end-beg', val1, ierr)
  if (val1 .ne. 4) stop 10
  call get_g2_statprocesstypes('rms', val1, ierr)
  if (val1 .ne. 5) stop 10
  call get_g2_statprocesstypes('std_devn', val1, ierr)
  if (val1 .ne. 6) stop 10
  call get_g2_statprocesstypes('covariance', val1, ierr)
  if (val1 .ne. 7) stop 10
  call get_g2_statprocesstypes('diff_beg-end', val1, ierr)
  if (val1 .ne. 8) stop 10
  call get_g2_statprocesstypes('ratio', val1, ierr)
  if (val1 .ne. 9) stop 10
  call get_g2_statprocesstypes('std_anomaly', val1, ierr)
  if (val1 .ne. 10) stop 10
  call get_g2_statprocesstypes('clim_mean', val1, ierr)
  if (val1 .ne. 192) stop 10
  call get_g2_statprocesstypes('ave_n_fcsts', val1, ierr)
  if (val1 .ne. 193) stop 10
  call get_g2_statprocesstypes('ave_n_unin_anal', val1, ierr)
  if (val1 .ne. 194) stop 10
  call get_g2_statprocesstypes('ave_fcst_acc_24', val1, ierr)
  if (val1 .ne. 195) stop 10
  call get_g2_statprocesstypes('ave_succ_fcst_acc', val1, ierr)
  if (val1 .ne. 196) stop 10
  call get_g2_statprocesstypes('ave_fcst_ave_24', val1, ierr)
  if (val1 .ne. 197) stop 10
  call get_g2_statprocesstypes('ave_succ_fcst_ave', val1, ierr)
  if (val1 .ne. 198) stop 10
  call get_g2_statprocesstypes('clim_ave_n_anal', val1, ierr)
  if (val1 .ne. 199) stop 10
  call get_g2_statprocesstypes('clim_ave_n_fcst', val1, ierr)
  if (val1 .ne. 200) stop 10
  call get_g2_statprocesstypes('clim_rms_diff', val1, ierr)
  if (val1 .ne. 201) stop 10
  call get_g2_statprocesstypes('clim_std_n_fcst', val1, ierr)
  if (val1 .ne. 202) stop 10
  call get_g2_statprocesstypes('clim_std_n_anal', val1, ierr)
  if (val1 .ne. 203) stop 10
  call get_g2_statprocesstypes('ave_fcst_acc_6', val1, ierr)
  if (val1 .ne. 204) stop 10
  call get_g2_statprocesstypes('ave_fcst_ave_6', val1, ierr)
  if (val1 .ne. 205) stop 10
  call get_g2_statprocesstypes('ave_fcst_acc_12', val1, ierr)
  if (val1 .ne. 206) stop 10
  call get_g2_statprocesstypes('ave_fcst_ave_12', val1, ierr)
  if (val1 .ne. 207) stop 10
  call get_g2_statprocesstypes('missing', val1, ierr)
  if (val1 .ne. 255) stop 10
  call get_g2_statprocesstypes('summation', val1, ierr)
  if (val1 .ne. 11) stop 10
  call get_g2_statprocesstypes('confidence_index', val1, ierr)
  if (val1 .ne. 12) stop 10
  call get_g2_statprocesstypes('quality_indicator', val1, ierr)
  if (val1 .ne. 13) stop 10
  call get_g2_statprocesstypes('variance', val1, ierr)
  if (val1 .ne. 208) stop 10
  call get_g2_statprocesstypes('confficient', val1, ierr)
  if (val1 .ne. 209) stop 10
  call get_g2_statprocesstypes('severity', val1, ierr)
  if (val1 .ne. 100) stop 10
  call get_g2_statprocesstypes('mode', val1, ierr)
  if (val1 .ne. 101) stop 10
  call get_g2_statprocesstypes('index_proc', val1, ierr)
  if (val1 .ne. 102) stop 10
  call get_g2_statprocesstypes('xxxxx', val1, ierr)
  if (ierr .ne. 9) stop 10

  print *, 'testing get_g2_typeoftimeintervals'
  call get_g2_typeoftimeintervals('reserved', val1, ierr)
  if (val1 .ne. 0) stop 11
  call get_g2_typeoftimeintervals('same_fcst_time_start_time_fcst_inc', val1, ierr)
  if (val1 .ne. 1) stop 11
  call get_g2_typeoftimeintervals('same_start_time_fcst_fcst_time_inc', val1, ierr)
  if (val1 .ne. 2) stop 11
  call get_g2_typeoftimeintervals('start_time_fcst_inc_fcst_time_dec', val1, ierr)
  if (val1 .ne. 3) stop 11
  call get_g2_typeoftimeintervals('start_time_fcst_dec_fcst_time_inc', val1, ierr)
  if (val1 .ne. 4) stop 11
  call get_g2_typeoftimeintervals('fltng_time_betwn_fcst_time_end_time_intvl', val1, ierr)
  if (val1 .ne. 5) stop 11
  call get_g2_typeoftimeintervals('local1', val1, ierr)
  if (val1 .ne. 192) stop 11
  call get_g2_typeoftimeintervals('local2', val1, ierr)
  if (val1 .ne. 193) stop 11
  call get_g2_typeoftimeintervals('local3', val1, ierr)
  if (val1 .ne. 194) stop 11
  call get_g2_typeoftimeintervals('missing', val1, ierr)
  if (val1 .ne. 255) stop 11
  call get_g2_typeoftimeintervals('xxx', val1, ierr)
  if (ierr .ne. 9) stop 11


  print *, 'testing get_g2_typeofintervals'
  call get_g2_typeofintervals('smaller_than_first_limit', val1, ierr)
  if (val1 .ne. 0) stop 12
  call get_g2_typeofintervals('greater_than_second_limit', val1, ierr)
  if (val1 .ne. 1) stop 12
  call get_g2_typeofintervals('between_first_second_limit_noincl2ndlmt', val1, ierr)
  if (val1 .ne. 2) stop 12
  call get_g2_typeofintervals('greater_than_first_limit', val1, ierr)
  if (val1 .ne. 3) stop 12
  call get_g2_typeofintervals('smaller_than_second_limit', val1, ierr)
  if (val1 .ne. 4) stop 12
  call get_g2_typeofintervals('smaller_or_equal_first_limit', val1, ierr)
  if (val1 .ne. 5) stop 12
  call get_g2_typeofintervals('greater_or_equal_second_limit', val1, ierr)
  if (val1 .ne. 6) stop 12
  call get_g2_typeofintervals('between_first_second_limit', val1, ierr)
  if (val1 .ne. 7) stop 12
  call get_g2_typeofintervals('greater_or_equal_first_limit', val1, ierr)
  if (val1 .ne. 8) stop 12
  call get_g2_typeofintervals('smaller_or_equal_second_limit', val1, ierr)
  if (val1 .ne. 9) stop 12
  call get_g2_typeofintervals('between_first_second_limit_noincl1stlmt', val1, ierr)
  if (val1 .ne. 10) stop 12
  call get_g2_typeofintervals('equall_to_first_limit', val1, ierr)
  if (val1 .ne. 11) stop 12
  call get_g2_typeofintervals('missing', val1, ierr)
  if (val1 .ne. 255) stop 12
  call get_g2_typeofintervals('', val1, ierr)
  if (val1 .ne. 255) stop 12
  call get_g2_typeofintervals('xxx', val1, ierr)
  if (ierr .ne. 9) stop 12

  print *, 'testing get_g2_typeofaerosol'
  call get_g2_typeofaerosol('ozone', val1, ierr)
  if (val1 .ne. 0) stop 13
  call get_g2_typeofaerosol('water_vapor', val1, ierr)
  if (val1 .ne. 1) stop 13
  call get_g2_typeofaerosol('methane', val1, ierr)
  if (val1 .ne. 2) stop 13
  call get_g2_typeofaerosol('carbon_dioxide', val1, ierr)
  if (val1 .ne. 3) stop 13
  call get_g2_typeofaerosol('carbon_monoxide', val1, ierr)
  if (val1 .ne. 4) stop 13
  call get_g2_typeofaerosol('nitrogen_dioxide', val1, ierr)
  if (val1 .ne. 5) stop 13
  call get_g2_typeofaerosol('nitrous_oxide', val1, ierr)
  if (val1 .ne. 6) stop 13
  call get_g2_typeofaerosol('formaldehyde', val1, ierr)
  if (val1 .ne. 7) stop 13
  call get_g2_typeofaerosol('sulphur_dioxide', val1, ierr)
  if (val1 .ne. 8) stop 13
  call get_g2_typeofaerosol('ammonia', val1, ierr)
  if (val1 .ne. 9) stop 13
  call get_g2_typeofaerosol('ammonium', val1, ierr)
  if (val1 .ne. 10) stop 13
  call get_g2_typeofaerosol('nitrogen_monoxide', val1, ierr)
  if (val1 .ne. 11) stop 13
  call get_g2_typeofaerosol('atomic_oxygen', val1, ierr)
  if (val1 .ne. 12) stop 13
  call get_g2_typeofaerosol('nitrate_radical', val1, ierr)
  if (val1 .ne. 13) stop 13
  call get_g2_typeofaerosol('hydroperoxyl_radical', val1, ierr)
  if (val1 .ne. 14) stop 13
  call get_g2_typeofaerosol('dinitrogen_pentoxide', val1, ierr)
  if (val1 .ne. 15) stop 13
  call get_g2_typeofaerosol('nitrous_acid', val1, ierr)
  if (val1 .ne. 16) stop 13
  call get_g2_typeofaerosol('nitric_acid', val1, ierr)
  if (val1 .ne. 17) stop 13
  call get_g2_typeofaerosol('peroxynitric_acid', val1, ierr)
  if (val1 .ne. 18) stop 13
  call get_g2_typeofaerosol('hydrogen_peroxide', val1, ierr)
  if (val1 .ne. 19) stop 13
  call get_g2_typeofaerosol('molecular_hydrogen', val1, ierr)
  if (val1 .ne. 20) stop 13
  call get_g2_typeofaerosol('atomic_nitrogen', val1, ierr)
  if (val1 .ne. 21) stop 13
  call get_g2_typeofaerosol('sulphate', val1, ierr)
  if (val1 .ne. 22) stop 13
  call get_g2_typeofaerosol('radon', val1, ierr)
  if (val1 .ne. 23) stop 13
  call get_g2_typeofaerosol('elemental_mercury', val1, ierr)
  if (val1 .ne. 24) stop 13
  call get_g2_typeofaerosol('divalent_mercury', val1, ierr)
  if (val1 .ne. 25) stop 13
  call get_g2_typeofaerosol('atomic_chlorine', val1, ierr)
  if (val1 .ne. 26) stop 13
  call get_g2_typeofaerosol('chlorine_monoxide', val1, ierr)
  if (val1 .ne. 27) stop 13
  call get_g2_typeofaerosol('dichlorine_peroxide', val1, ierr)
  if (val1 .ne. 28) stop 13
  call get_g2_typeofaerosol('hypochlorous_acid', val1, ierr)
  if (val1 .ne. 29) stop 13
  call get_g2_typeofaerosol('chlorine_nitrate', val1, ierr)
  if (val1 .ne. 30) stop 13
  call get_g2_typeofaerosol('chlorine_dioxide', val1, ierr)
  if (val1 .ne. 31) stop 13
  call get_g2_typeofaerosol('atomic_bromide', val1, ierr)
  if (val1 .ne. 32) stop 13
  call get_g2_typeofaerosol('bromine_monoxide', val1, ierr)
  if (val1 .ne. 33) stop 13
  call get_g2_typeofaerosol('bromine_chloride', val1, ierr)
  if (val1 .ne. 34) stop 13
  call get_g2_typeofaerosol('hydrogen_bromide', val1, ierr)
  if (val1 .ne. 35) stop 13
  call get_g2_typeofaerosol('hypobromous_acid', val1, ierr)
  if (val1 .ne. 36) stop 13
  call get_g2_typeofaerosol('bromine_nitrate', val1, ierr)
  if (val1 .ne. 37) stop 13
  call get_g2_typeofaerosol('hydroxyl_radical', val1, ierr)
  if (val1 .ne. 10000) stop 13
  call get_g2_typeofaerosol('methyl_peroxy_radical', val1, ierr)
  if (val1 .ne. 10001) stop 13
  call get_g2_typeofaerosol('methyl_hydroperoxide', val1, ierr)
  if (val1 .ne. 10002) stop 13
  call get_g2_typeofaerosol('methanol', val1, ierr)
  if (val1 .ne. 10004) stop 13
  call get_g2_typeofaerosol('formic_acid', val1, ierr)
  if (val1 .ne. 10005) stop 13
  call get_g2_typeofaerosol('hydrogen_cyanide', val1, ierr)
  if (val1 .ne. 10006) stop 13
  call get_g2_typeofaerosol('aceto_nitrile', val1, ierr)
  if (val1 .ne. 10007) stop 13
  call get_g2_typeofaerosol('ethane', val1, ierr)
  if (val1 .ne. 10008) stop 13
  call get_g2_typeofaerosol('ethene', val1, ierr)
  if (val1 .ne. 10009) stop 13
  call get_g2_typeofaerosol('ethyne', val1, ierr)
  if (val1 .ne. 10010) stop 13
  call get_g2_typeofaerosol('ethanol', val1, ierr)
  if (val1 .ne. 10011) stop 13
  call get_g2_typeofaerosol('acetic_acid', val1, ierr)
  if (val1 .ne. 10012) stop 13
  call get_g2_typeofaerosol('peroxyacetyl_nitrate', val1, ierr)
  if (val1 .ne. 10013) stop 13
  call get_g2_typeofaerosol('propane', val1, ierr)
  if (val1 .ne. 10014) stop 13
  call get_g2_typeofaerosol('propene', val1, ierr)
  if (val1 .ne. 10015) stop 13
  call get_g2_typeofaerosol('butanes', val1, ierr)
  if (val1 .ne. 10016) stop 13
  call get_g2_typeofaerosol('isoprene', val1, ierr)
  if (val1 .ne. 10017) stop 13
  call get_g2_typeofaerosol('alpha_pinene', val1, ierr)
  if (val1 .ne. 10018) stop 13
  call get_g2_typeofaerosol('beta_pinene', val1, ierr)
  if (val1 .ne. 10019) stop 13
  call get_g2_typeofaerosol('limonene', val1, ierr)
  if (val1 .ne. 10020) stop 13
  call get_g2_typeofaerosol('benzene', val1, ierr)
  if (val1 .ne. 10021) stop 13
  call get_g2_typeofaerosol('toluene', val1, ierr)
  if (val1 .ne. 10022) stop 13
  call get_g2_typeofaerosol('xylene', val1, ierr)
  if (val1 .ne. 10023) stop 13
  call get_g2_typeofaerosol('dumethyl_sulphide', val1, ierr)
  if (val1 .ne. 10500) stop 13
  call get_g2_typeofaerosol('hydrogen_chloride', val1, ierr)
  if (val1 .ne. 20001) stop 13
  call get_g2_typeofaerosol('cfc-11', val1, ierr)
  if (val1 .ne. 20002) stop 13
  call get_g2_typeofaerosol('cfc-12', val1, ierr)
  if (val1 .ne. 20003) stop 13
  call get_g2_typeofaerosol('cfc-113', val1, ierr)
  if (val1 .ne. 20004) stop 13
  call get_g2_typeofaerosol('cfc-113a', val1, ierr)
  if (val1 .ne. 20005) stop 13
  call get_g2_typeofaerosol('cfc-114', val1, ierr)
  if (val1 .ne. 20006) stop 13
  call get_g2_typeofaerosol('cfc-115', val1, ierr)
  if (val1 .ne. 20007) stop 13
  call get_g2_typeofaerosol('hcfc-22', val1, ierr)
  if (val1 .ne. 20008) stop 13
  call get_g2_typeofaerosol('hcfc-141b', val1, ierr)
  if (val1 .ne. 20009) stop 13
  call get_g2_typeofaerosol('hcfc-142b', val1, ierr)
  if (val1 .ne. 20010) stop 13
  call get_g2_typeofaerosol('halon-1202', val1, ierr)
  if (val1 .ne. 20011) stop 13
  call get_g2_typeofaerosol('halon-1211', val1, ierr)
  if (val1 .ne. 20012) stop 13
  call get_g2_typeofaerosol('halon-1301', val1, ierr)
  if (val1 .ne. 20013) stop 13
  call get_g2_typeofaerosol('halon-2402', val1, ierr)
  if (val1 .ne. 20014) stop 13
  call get_g2_typeofaerosol('methyl_chloride', val1, ierr)
  if (val1 .ne. 20015) stop 13
  call get_g2_typeofaerosol('carbon_tetrachloride', val1, ierr)
  if (val1 .ne. 20016) stop 13
  call get_g2_typeofaerosol('hcc-140a', val1, ierr)
  if (val1 .ne. 20017) stop 13
  call get_g2_typeofaerosol('methyl_bromide', val1, ierr)
  if (val1 .ne. 20018) stop 13
  call get_g2_typeofaerosol('hexachlorocyclohexane', val1, ierr)
  if (val1 .ne. 20019) stop 13
  call get_g2_typeofaerosol('alpha_hexachlorocyclohexane', val1, ierr)
  if (val1 .ne. 20020) stop 13
  call get_g2_typeofaerosol('hexachlorobiphenyl', val1, ierr)
  if (val1 .ne. 20021) stop 13
  call get_g2_typeofaerosol('radioactive_pollutant', val1, ierr)
  if (val1 .ne. 30000) stop 13
  call get_g2_typeofaerosol('hox_radical', val1, ierr)
  if (val1 .ne. 60000) stop 13
  call get_g2_typeofaerosol('total_inorganic_org_peroxy_radicals', val1, ierr)
  if (val1 .ne. 60001) stop 13
  call get_g2_typeofaerosol('passive_ozone', val1, ierr)
  if (val1 .ne. 60002) stop 13
  call get_g2_typeofaerosol('nox_nitrogen', val1, ierr)
  if (val1 .ne. 60003) stop 13
  call get_g2_typeofaerosol('all_nitrogen_oxides', val1, ierr)
  if (val1 .ne. 60004) stop 13
  call get_g2_typeofaerosol('total_inorganic_chlorine', val1, ierr)
  if (val1 .ne. 60005) stop 13
  call get_g2_typeofaerosol('total_inorganic_bromine', val1, ierr)
  if (val1 .ne. 60006) stop 13
  call get_g2_typeofaerosol('total_inorganic_chlorine_noHclClono2Clox', val1, ierr)
  if (val1 .ne. 60007) stop 13
  call get_g2_typeofaerosol('total_inorganic_bromine_noHbrBrono2Brox', val1, ierr)
  if (val1 .ne. 60008) stop 13
  call get_g2_typeofaerosol('lumped_alkanes', val1, ierr)
  if (val1 .ne. 60009) stop 13
  call get_g2_typeofaerosol('lumped_alkenes', val1, ierr)
  if (val1 .ne. 60010) stop 13
  call get_g2_typeofaerosol('lumped_aromatic_comp', val1, ierr)
  if (val1 .ne. 60011) stop 13
  call get_g2_typeofaerosol('lumped_terpenes', val1, ierr)
  if (val1 .ne. 60012) stop 13
  call get_g2_typeofaerosol('non_methane_volatile_org_comp_carbon)', val1, ierr)
  if (val1 .ne. 60013) stop 13
  call get_g2_typeofaerosol('anthropogenic_non_methane_voiatile_org_comp_carbon', val1, ierr)
  if (val1 .ne. 60014) stop 13
  call get_g2_typeofaerosol('biogenic_non_methane_volatile_org_comp_carbon', val1, ierr)
  if (val1 .ne. 60015) stop 13
  call get_g2_typeofaerosol('lumped_oxygenated_hydrocarbon', val1, ierr)
  if (val1 .ne. 60016) stop 13
  call get_g2_typeofaerosol('total_aerosol', val1, ierr)
  if (val1 .ne. 62000) stop 13
  call get_g2_typeofaerosol('dust_dry', val1, ierr)
  if (val1 .ne. 62001) stop 13
  call get_g2_typeofaerosol('water_in_ambient', val1, ierr)
  if (val1 .ne. 62002) stop 13
  call get_g2_typeofaerosol('ammonium_dry', val1, ierr)
  if (val1 .ne. 62003) stop 13
  call get_g2_typeofaerosol('nitrate_dry', val1, ierr)
  if (val1 .ne. 62004) stop 13
  call get_g2_typeofaerosol('nitric_acid_trihydrate', val1, ierr)
  if (val1 .ne. 62005) stop 13
  call get_g2_typeofaerosol('sulphate_dry', val1, ierr)
  if (val1 .ne. 62006) stop 13
  call get_g2_typeofaerosol('mercury_dry', val1, ierr)
  if (val1 .ne. 62007) stop 13
  call get_g2_typeofaerosol('sea_salt_dry', val1, ierr)
  if (val1 .ne. 62008) stop 13
  call get_g2_typeofaerosol('black_carbon_dry', val1, ierr)
  if (val1 .ne. 62009) stop 13
  call get_g2_typeofaerosol('particulate_org_matter_dry', val1, ierr)
  if (val1 .ne. 62010) stop 13
  call get_g2_typeofaerosol('primary_particulate_org_matter_dry', val1, ierr)
  if (val1 .ne. 62011) stop 13
  call get_g2_typeofaerosol('secondary_particulate_org_matter_dry', val1, ierr)
  if (val1 .ne. 62012) stop 13
  call get_g2_typeofaerosol('missing', val1, ierr)
  if (val1 .ne. 65535) stop 13
  call get_g2_typeofaerosol('black_carbon_hydrophilic', val1, ierr)
  if (val1 .ne. 62013) stop 13
  call get_g2_typeofaerosol('black_carbon_hydrophobic', val1, ierr)
  if (val1 .ne. 62014) stop 13
  call get_g2_typeofaerosol('particulate_org_matter_hydrophilic', val1, ierr)
  if (val1 .ne. 62015) stop 13
  call get_g2_typeofaerosol('particulate_org_matter_hydrophobic', val1, ierr)
  if (val1 .ne. 62016) stop 13
  call get_g2_typeofaerosol('nitrate_hydrophilic', val1, ierr)
  if (val1 .ne. 62017) stop 13
  call get_g2_typeofaerosol('nitrate_hydrophobic', val1, ierr)
  if (val1 .ne. 62018) stop 13
  call get_g2_typeofaerosol('smoke_hi_absorption', val1, ierr)
  if (val1 .ne. 62020) stop 13
  call get_g2_typeofaerosol('smoke_lo_absorption', val1, ierr)
  if (val1 .ne. 62021) stop 13
  call get_g2_typeofaerosol('aerosol_hi_absorption', val1, ierr)
  if (val1 .ne. 62022) stop 13
  call get_g2_typeofaerosol('aerosol_lo_absorption', val1, ierr)
  if (val1 .ne. 62023) stop 13
  call get_g2_typeofaerosol('volcanic_ash', val1, ierr)
  if (val1 .ne. 62025) stop 13
  call get_g2_typeofaerosol('brown_carbon_dry', val1, ierr)
  if (val1 .ne. 62036) stop 13
  call get_g2_typeofaerosol('', val1, ierr)
  if (val1 .ne. 65535) stop 13
  call get_g2_typeofaerosol('oxygen', val1, ierr)
  if (val1 .ne. 38) stop 13
  call get_g2_typeofaerosol('xxxx', val1, ierr)  
  if (ierr .ne. 9) stop 13
  
  print *, 'testing get_g2_on388origincenters'
  call get_g2_on388origincenters('melbourne1', val1, ierr)
  if (val1 .ne. 1) stop 14
  call get_g2_on388origincenters('melbourne2', val1, ierr)
  if (val1 .ne. 2) stop 14
  call get_g2_on388origincenters('melbourne3', val1, ierr)
  if (val1 .ne. 3) stop 14
  call get_g2_on388origincenters('moscow1', val1, ierr)
  if (val1 .ne. 4) stop 14
  call get_g2_on388origincenters('moscow2', val1, ierr)
  if (val1 .ne. 5) stop 14
  call get_g2_on388origincenters('moscow3', val1, ierr)
  if (val1 .ne. 6) stop 14
  call get_g2_on388origincenters('nws_ncep', val1, ierr)
  if (val1 .ne. 7) stop 14
  call get_g2_on388origincenters('nws_nwstg', val1, ierr)
  if (val1 .ne. 8) stop 14
  call get_g2_on388origincenters('nws_other', val1, ierr)
  if (val1 .ne. 9) stop 14
  call get_g2_on388origincenters('cairo1', val1, ierr)
  if (val1 .ne. 10) stop 14
  call get_g2_on388origincenters('cairo2', val1, ierr)
  if (val1 .ne. 11) stop 14
  call get_g2_on388origincenters('dakar1', val1, ierr)
  if (val1 .ne. 12) stop 14
  call get_g2_on388origincenters('dakar2', val1, ierr)
  if (val1 .ne. 13) stop 14
  call get_g2_on388origincenters('nairobi1', val1, ierr)
  if (val1 .ne. 14) stop 14
  call get_g2_on388origincenters('nairobi2', val1, ierr)
  if (val1 .ne. 15) stop 14
  call get_g2_on388origincenters('casablanca', val1, ierr)
  if (val1 .ne. 16) stop 14
  call get_g2_on388origincenters('tunis', val1, ierr)
  if (val1 .ne. 17) stop 14
  call get_g2_on388origincenters('tunis_casablanca1', val1, ierr)
  if (val1 .ne. 18) stop 14
  call get_g2_on388origincenters('tunis-casablanca2', val1, ierr)
  if (val1 .ne. 19) stop 14
  call get_g2_on388origincenters('las_palmas', val1, ierr)
  if (val1 .ne. 20) stop 14
  call get_g2_on388origincenters('algiers', val1, ierr)
  if (val1 .ne. 21) stop 14
  call get_g2_on388origincenters('acmad', val1, ierr)
  if (val1 .ne. 22) stop 14
  call get_g2_on388origincenters('mozambique', val1, ierr)
  if (val1 .ne. 23) stop 14
  call get_g2_on388origincenters('pretoria', val1, ierr)
  if (val1 .ne. 24) stop 14
  call get_g2_on388origincenters('la_reunion', val1, ierr)
  if (val1 .ne. 25) stop 14
  call get_g2_on388origincenters('khabarovsk1', val1, ierr)
  if (val1 .ne. 26) stop 14
  call get_g2_on388origincenters('khabarovsk2', val1, ierr)
  if (val1 .ne. 27) stop 14
  call get_g2_on388origincenters('new_delhi1', val1, ierr)
  if (val1 .ne. 28) stop 14
  call get_g2_on388origincenters('new_delhi2', val1, ierr)
  if (val1 .ne. 29) stop 14
  call get_g2_on388origincenters('novosibirsk1', val1, ierr)
  if (val1 .ne. 30) stop 14
  call get_g2_on388origincenters('novosibirsk2', val1, ierr)
  if (val1 .ne. 31) stop 14
  call get_g2_on388origincenters('tashkent', val1, ierr)
  if (val1 .ne. 32) stop 14
  call get_g2_on388origincenters('jeddah', val1, ierr)
  if (val1 .ne. 33) stop 14
  call get_g2_on388origincenters('jma_tokyo1', val1, ierr)
  if (val1 .ne. 34) stop 14
  call get_g2_on388origincenters('jma_tokyo2', val1, ierr)
  if (val1 .ne. 35) stop 14
  call get_g2_on388origincenters('bankok', val1, ierr)
  if (val1 .ne. 36) stop 14
  call get_g2_on388origincenters('ulan_bator', val1, ierr)
  if (val1 .ne. 37) stop 14
  call get_g2_on388origincenters('beijing1', val1, ierr)
  if (val1 .ne. 38) stop 14
  call get_g2_on388origincenters('beijing2', val1, ierr)
  if (val1 .ne. 39) stop 14
  call get_g2_on388origincenters('seoul', val1, ierr)
  if (val1 .ne. 40) stop 14
  call get_g2_on388origincenters('buenos_aires1', val1, ierr)
  if (val1 .ne. 41) stop 14
  call get_g2_on388origincenters('buenos_aires2', val1, ierr)
  if (val1 .ne. 42) stop 14
  call get_g2_on388origincenters('brasilia1', val1, ierr)
  if (val1 .ne. 43) stop 14
  call get_g2_on388origincenters('brasilia2', val1, ierr)
  if (val1 .ne. 44) stop 14
  call get_g2_on388origincenters('santiago', val1, ierr)
  if (val1 .ne. 45) stop 14
  call get_g2_on388origincenters('brazilian_inpe', val1, ierr)
  if (val1 .ne. 46) stop 14
  call get_g2_on388origincenters('columbia', val1, ierr)
  if (val1 .ne. 47) stop 14
  call get_g2_on388origincenters('ecuador', val1, ierr)
  if (val1 .ne. 48) stop 14
  call get_g2_on388origincenters('peru', val1, ierr)
  if (val1 .ne. 49) stop 14
  call get_g2_on388origincenters('venezuela', val1, ierr)
  if (val1 .ne. 50) stop 14
  call get_g2_on388origincenters('miami', val1, ierr)
  if (val1 .ne. 51) stop 14
  call get_g2_on388origincenters('tpc_nhc', val1, ierr)
  if (val1 .ne. 52) stop 14
  call get_g2_on388origincenters('cms_montreal1', val1, ierr)
  if (val1 .ne. 53) stop 14
  call get_g2_on388origincenters('cms_montreal2', val1, ierr)
  if (val1 .ne. 54) stop 14
  call get_g2_on388origincenters('san_francisco', val1, ierr)
  if (val1 .ne. 55) stop 14
  call get_g2_on388origincenters('arinc_center', val1, ierr)
  if (val1 .ne. 56) stop 14
  call get_g2_on388origincenters('usaf_gwc', val1, ierr)
  if (val1 .ne. 57) stop 14
  call get_g2_on388origincenters('us_navy_fnoc', val1, ierr)
  if (val1 .ne. 58) stop 14
  call get_g2_on388origincenters('noaa_fsl_boulder', val1, ierr)
  if (val1 .ne. 59) stop 14
  call get_g2_on388origincenters('ncar_boulder', val1, ierr)
  if (val1 .ne. 60) stop 14
  call get_g2_on388origincenters('service_argos', val1, ierr)
  if (val1 .ne. 61) stop 14
  call get_g2_on388origincenters('us_naval_ocean_off', val1, ierr)
  if (val1 .ne. 62) stop 14
  call get_g2_on388origincenters('honolulu', val1, ierr)
  if (val1 .ne. 64) stop 14
  call get_g2_on388origincenters('darwin1', val1, ierr)
  if (val1 .ne. 65) stop 14
  call get_g2_on388origincenters('darwin2', val1, ierr)
  if (val1 .ne. 66) stop 14
  call get_g2_on388origincenters('melbourne4', val1, ierr)
  if (val1 .ne. 67) stop 14
  call get_g2_on388origincenters('wellington1', val1, ierr)
  if (val1 .ne. 69) stop 14
  call get_g2_on388origincenters('wellington2', val1, ierr)
  if (val1 .ne. 70) stop 14
  call get_g2_on388origincenters('nadi', val1, ierr)
  if (val1 .ne. 71) stop 14
  call get_g2_on388origincenters('singapore', val1, ierr)
  if (val1 .ne. 72) stop 14
  call get_g2_on388origincenters('malaysia', val1, ierr)
  if (val1 .ne. 73) stop 14
  call get_g2_on388origincenters('ukmo_exeter1', val1, ierr)
  if (val1 .ne. 74) stop 14
  call get_g2_on388origincenters('ukmo_exeter2', val1, ierr)
  if (val1 .ne. 75) stop 14
  call get_g2_on388origincenters('moscow4', val1, ierr)
  if (val1 .ne. 76) stop 14
  call get_g2_on388origincenters('offenbach1', val1, ierr)
  if (val1 .ne. 78) stop 14
  call get_g2_on388origincenters('offenbach2', val1, ierr)
  if (val1 .ne. 79) stop 14
  call get_g2_on388origincenters('rome1', val1, ierr)
  if (val1 .ne. 80) stop 14
  call get_g2_on388origincenters('rome2', val1, ierr)
  if (val1 .ne. 81) stop 14
  call get_g2_on388origincenters('norrkoping1', val1, ierr)
  if (val1 .ne. 82) stop 14
  call get_g2_on388origincenters('norrkoping2', val1, ierr)
  if (val1 .ne. 83) stop 14
  call get_g2_on388origincenters('french_weather_toulouse1', val1, ierr)
  if (val1 .ne. 84) stop 14
  call get_g2_on388origincenters('french_weather_toulouse2', val1, ierr)
  if (val1 .ne. 85) stop 14
  call get_g2_on388origincenters('helsinki', val1, ierr)
  if (val1 .ne. 86) stop 14
  call get_g2_on388origincenters('belgrade', val1, ierr)
  if (val1 .ne. 87) stop 14
  call get_g2_on388origincenters('oslo', val1, ierr)
  if (val1 .ne. 88) stop 14
  call get_g2_on388origincenters('prague', val1, ierr)
  if (val1 .ne. 89) stop 14
  call get_g2_on388origincenters('episkopi', val1, ierr)
  if (val1 .ne. 90) stop 14
  call get_g2_on388origincenters('ankara', val1, ierr)
  if (val1 .ne. 91) stop 14
  call get_g2_on388origincenters('frankfurt_main', val1, ierr)
  if (val1 .ne. 92) stop 14
  call get_g2_on388origincenters('london', val1, ierr)
  if (val1 .ne. 93) stop 14
  call get_g2_on388origincenters('copenhagen', val1, ierr)
  if (val1 .ne. 94) stop 14
  call get_g2_on388origincenters('rota', val1, ierr)
  if (val1 .ne. 95) stop 14
  call get_g2_on388origincenters('athens', val1, ierr)
  if (val1 .ne. 96) stop 14
  call get_g2_on388origincenters('esa', val1, ierr)
  if (val1 .ne. 97) stop 14
  call get_g2_on388origincenters('ecmwf', val1, ierr)
  if (val1 .ne. 98) stop 14
  call get_g2_on388origincenters('de_bilt_netherlands', val1, ierr)
  if (val1 .ne. 99) stop 14
  call get_g2_on388origincenters('brazzaville', val1, ierr)
  if (val1 .ne. 100) stop 14
  call get_g2_on388origincenters('abidjan', val1, ierr)
  if (val1 .ne. 101) stop 14
  call get_g2_on388origincenters('libyan_arab_jamahiriya', val1, ierr)
  if (val1 .ne. 102) stop 14
  call get_g2_on388origincenters('madagascar', val1, ierr)
  if (val1 .ne. 103) stop 14
  call get_g2_on388origincenters('mauritius', val1, ierr)
  if (val1 .ne. 104) stop 14
  call get_g2_on388origincenters('niger', val1, ierr)
  if (val1 .ne. 105) stop 14
  call get_g2_on388origincenters('seychelles', val1, ierr)
  if (val1 .ne. 106) stop 14
  call get_g2_on388origincenters('uganda', val1, ierr)
  if (val1 .ne. 107) stop 14
  call get_g2_on388origincenters('tanzania', val1, ierr)
  if (val1 .ne. 108) stop 14
  call get_g2_on388origincenters('zimbabwe', val1, ierr)
  if (val1 .ne. 109) stop 14
  call get_g2_on388origincenters('hong_kong', val1, ierr)
  if (val1 .ne. 110) stop 14
  call get_g2_on388origincenters('afghanistan', val1, ierr)
  if (val1 .ne. 111) stop 14
  call get_g2_on388origincenters('bahrain', val1, ierr)
  if (val1 .ne. 112) stop 14
  call get_g2_on388origincenters('bangladesh', val1, ierr)
  if (val1 .ne. 113) stop 14
  call get_g2_on388origincenters('bhutan', val1, ierr)
  if (val1 .ne. 114) stop 14
  call get_g2_on388origincenters('cambodia', val1, ierr)
  if (val1 .ne. 115) stop 14
  call get_g2_on388origincenters('dprk', val1, ierr)
  if (val1 .ne. 116) stop 14
  call get_g2_on388origincenters('iran', val1, ierr)
  if (val1 .ne. 117) stop 14
  call get_g2_on388origincenters('iraq', val1, ierr)
  if (val1 .ne. 118) stop 14
  call get_g2_on388origincenters('kazakhstan', val1, ierr)
  if (val1 .ne. 119) stop 14
  call get_g2_on388origincenters('kuwait', val1, ierr)
  if (val1 .ne. 120) stop 14
  call get_g2_on388origincenters('kyrgyz_republic', val1, ierr)
  if (val1 .ne. 121) stop 14
  call get_g2_on388origincenters('lao_pdr', val1, ierr)
  if (val1 .ne. 122) stop 14
  call get_g2_on388origincenters('macao_china', val1, ierr)
  if (val1 .ne. 123) stop 14
  call get_g2_on388origincenters('maldives', val1, ierr)
  if (val1 .ne. 124) stop 14
  call get_g2_on388origincenters('myanmar', val1, ierr)
  if (val1 .ne. 125) stop 14
  call get_g2_on388origincenters('nepal', val1, ierr)
  if (val1 .ne. 126) stop 14
  call get_g2_on388origincenters('oman', val1, ierr)
  if (val1 .ne. 127) stop 14
  call get_g2_on388origincenters('pakistan', val1, ierr)
  if (val1 .ne. 128) stop 14
  call get_g2_on388origincenters('qatar', val1, ierr)
  if (val1 .ne. 129) stop 14
  call get_g2_on388origincenters('yemen', val1, ierr)
  if (val1 .ne. 130) stop 14
  call get_g2_on388origincenters('sri_lanka', val1, ierr)
  if (val1 .ne. 131) stop 14
  call get_g2_on388origincenters('tajikistan', val1, ierr)
  if (val1 .ne. 132) stop 14
  call get_g2_on388origincenters('turkmenistan', val1, ierr)
  if (val1 .ne. 133) stop 14
  call get_g2_on388origincenters('uae', val1, ierr)
  if (val1 .ne. 134) stop 14
  call get_g2_on388origincenters('uzbekistan', val1, ierr)
  if (val1 .ne. 135) stop 14
  call get_g2_on388origincenters('viet_nam ', val1, ierr)
  if (val1 .ne. 136) stop 14
  call get_g2_on388origincenters('bolivia', val1, ierr)
  if (val1 .ne. 140) stop 14
  call get_g2_on388origincenters('guyana', val1, ierr)
  if (val1 .ne. 141) stop 14
  call get_g2_on388origincenters('paraguay', val1, ierr)
  if (val1 .ne. 142) stop 14
  call get_g2_on388origincenters('suriname', val1, ierr)
  if (val1 .ne. 143) stop 14
  call get_g2_on388origincenters('uruguay', val1, ierr)
  if (val1 .ne. 144) stop 14
  call get_g2_on388origincenters('french_guyana', val1, ierr)
  if (val1 .ne. 145) stop 14
  call get_g2_on388origincenters('brazilian_navy_hydro_center', val1, ierr)
  if (val1 .ne. 146) stop 14
  call get_g2_on388origincenters('antigua_barbuda', val1, ierr)
  if (val1 .ne. 150) stop 14
  call get_g2_on388origincenters('bahamas', val1, ierr)
  if (val1 .ne. 151) stop 14
  call get_g2_on388origincenters('barbados', val1, ierr)
  if (val1 .ne. 152) stop 14
  call get_g2_on388origincenters('belize', val1, ierr)
  if (val1 .ne. 153) stop 14
  call get_g2_on388origincenters('british_caribbean_terr_center', val1, ierr)
  if (val1 .ne. 154) stop 14
  call get_g2_on388origincenters('san_jose', val1, ierr)
  if (val1 .ne. 155) stop 14
  call get_g2_on388origincenters('cuba', val1, ierr)
  if (val1 .ne. 156) stop 14
  call get_g2_on388origincenters('dominica', val1, ierr)
  if (val1 .ne. 157) stop 14
  call get_g2_on388origincenters('dominican_republic', val1, ierr)
  if (val1 .ne. 158) stop 14
  call get_g2_on388origincenters('el_salvador', val1, ierr)
  if (val1 .ne. 159) stop 14
  call get_g2_on388origincenters('us_noaa_nesdis', val1, ierr)
  if (val1 .ne. 160) stop 14
  call get_g2_on388origincenters('us_noaa_oar', val1, ierr)
  if (val1 .ne. 161) stop 14
  call get_g2_on388origincenters('guatemala', val1, ierr)
  if (val1 .ne. 162) stop 14
  call get_g2_on388origincenters('haiti', val1, ierr)
  if (val1 .ne. 163) stop 14
  call get_g2_on388origincenters('honduras', val1, ierr)
  if (val1 .ne. 164) stop 14
  call get_g2_on388origincenters('jamaica', val1, ierr)
  if (val1 .ne. 165) stop 14
  call get_g2_on388origincenters('mexico', val1, ierr)
  if (val1 .ne. 166) stop 14
  call get_g2_on388origincenters('netherlands_antilles_aruba', val1, ierr)
  if (val1 .ne. 167) stop 14
  call get_g2_on388origincenters('nicaragua', val1, ierr)
  if (val1 .ne. 168) stop 14
  call get_g2_on388origincenters('panama', val1, ierr)
  if (val1 .ne. 169) stop 14
  call get_g2_on388origincenters('saint_lucia', val1, ierr)
  if (val1 .ne. 170) stop 14
  call get_g2_on388origincenters('trinidad_tobago', val1, ierr)
  if (val1 .ne. 171) stop 14
  call get_g2_on388origincenters('french_departments', val1, ierr)
  if (val1 .ne. 172) stop 14
  call get_g2_on388origincenters('cook_islands', val1, ierr)
  if (val1 .ne. 190) stop 14
  call get_g2_on388origincenters('french_polynesia', val1, ierr)
  if (val1 .ne. 191) stop 14
  call get_g2_on388origincenters('tonga', val1, ierr)
  if (val1 .ne. 192) stop 14
  call get_g2_on388origincenters('vanuatu', val1, ierr)
  if (val1 .ne. 193) stop 14
  call get_g2_on388origincenters('brunei', val1, ierr)
  if (val1 .ne. 194) stop 14
  call get_g2_on388origincenters('indonesia', val1, ierr)
  if (val1 .ne. 195) stop 14
  call get_g2_on388origincenters('kiribati', val1, ierr)
  if (val1 .ne. 196) stop 14
  call get_g2_on388origincenters('federated_states_micronesia', val1, ierr)
  if (val1 .ne. 197) stop 14
  call get_g2_on388origincenters('new_caledonia', val1, ierr)
  if (val1 .ne. 198) stop 14
  call get_g2_on388origincenters('niue', val1, ierr)
  if (val1 .ne. 199) stop 14
  call get_g2_on388origincenters('papua_new_guinea', val1, ierr)
  if (val1 .ne. 200) stop 14
  call get_g2_on388origincenters('philippines', val1, ierr)
  if (val1 .ne. 201) stop 14
  call get_g2_on388origincenters('samoa', val1, ierr)
  if (val1 .ne. 202) stop 14
  call get_g2_on388origincenters('solomon_islands', val1, ierr)
  if (val1 .ne. 203) stop 14
  call get_g2_on388origincenters('frascati', val1, ierr)
  if (val1 .ne. 210) stop 14
  call get_g2_on388origincenters('lanion', val1, ierr)
  if (val1 .ne. 211) stop 14
  call get_g2_on388origincenters('lisboa', val1, ierr)
  if (val1 .ne. 212) stop 14
  call get_g2_on388origincenters('reykjavik', val1, ierr)
  if (val1 .ne. 213) stop 14
  call get_g2_on388origincenters('madrid', val1, ierr)
  if (val1 .ne. 214) stop 14
  call get_g2_on388origincenters('zurich', val1, ierr)
  if (val1 .ne. 215) stop 14
  call get_g2_on388origincenters('service_argos_toulouse_fr', val1, ierr)
  if (val1 .ne. 216) stop 14
  call get_g2_on388origincenters('bratislava', val1, ierr)
  if (val1 .ne. 217) stop 14
  call get_g2_on388origincenters('budapest', val1, ierr)
  if (val1 .ne. 218) stop 14
  call get_g2_on388origincenters('ljubljana', val1, ierr)
  if (val1 .ne. 219) stop 14
  call get_g2_on388origincenters('warsaw', val1, ierr)
  if (val1 .ne. 220) stop 14
  call get_g2_on388origincenters('zagreb', val1, ierr)
  if (val1 .ne. 221) stop 14
  call get_g2_on388origincenters('albania', val1, ierr)
  if (val1 .ne. 222) stop 14
  call get_g2_on388origincenters('armenia', val1, ierr)
  if (val1 .ne. 223) stop 14
  call get_g2_on388origincenters('austria', val1, ierr)
  if (val1 .ne. 224) stop 14
  call get_g2_on388origincenters('azerbaijan', val1, ierr)
  if (val1 .ne. 225) stop 14
  call get_g2_on388origincenters('belarus', val1, ierr)
  if (val1 .ne. 226) stop 14
  call get_g2_on388origincenters('belgium', val1, ierr)
  if (val1 .ne. 227) stop 14
  call get_g2_on388origincenters('bosnia_herzegovina', val1, ierr)
  if (val1 .ne. 228) stop 14
  call get_g2_on388origincenters('bulgaria', val1, ierr)
  if (val1 .ne. 229) stop 14
  call get_g2_on388origincenters('cyprus', val1, ierr)
  if (val1 .ne. 230) stop 14
  call get_g2_on388origincenters('estonia', val1, ierr)
  if (val1 .ne. 231) stop 14
  call get_g2_on388origincenters('georgia', val1, ierr)
  if (val1 .ne. 232) stop 14
  call get_g2_on388origincenters('dublin', val1, ierr)
  if (val1 .ne. 233) stop 14
  call get_g2_on388origincenters('israel', val1, ierr)
  if (val1 .ne. 234) stop 14
  call get_g2_on388origincenters('jordan', val1, ierr)
  if (val1 .ne. 235) stop 14
  call get_g2_on388origincenters('latvia', val1, ierr)
  if (val1 .ne. 236) stop 14
  call get_g2_on388origincenters('lebanon', val1, ierr)
  if (val1 .ne. 237) stop 14
  call get_g2_on388origincenters('lithuania', val1, ierr)
  if (val1 .ne. 238) stop 14
  call get_g2_on388origincenters('luxembourg', val1, ierr)
  if (val1 .ne. 239) stop 14
  call get_g2_on388origincenters('malta', val1, ierr)
  if (val1 .ne. 240) stop 14
  call get_g2_on388origincenters('monaco', val1, ierr)
  if (val1 .ne. 241) stop 14
  call get_g2_on388origincenters('romania', val1, ierr)
  if (val1 .ne. 242) stop 14
  call get_g2_on388origincenters('syrian_arab_republic', val1, ierr)
  if (val1 .ne. 243) stop 14
  call get_g2_on388origincenters('macedonia', val1, ierr)
  if (val1 .ne. 244) stop 14
  call get_g2_on388origincenters('ukraine', val1, ierr)
  if (val1 .ne. 245) stop 14
  call get_g2_on388origincenters('republic_moldova', val1, ierr)
  if (val1 .ne. 246) stop 14
  call get_g2_on388origincenters('eumetsat_op_cen', val1, ierr)
  if (val1 .ne. 254) stop 14
  call get_g2_on388origincenters('missing', val1, ierr)
  if (val1 .ne. 255) stop 14
  call get_g2_on388origincenters('ncsa_argentina', val1, ierr)
  if (val1 .ne. 147) stop 14
  call get_g2_on388origincenters('brazilian_decea', val1, ierr)
  if (val1 .ne. 148) stop 14
  call get_g2_on388origincenters('nasa', val1, ierr)
  if (val1 .ne. 173) stop 14
  call get_g2_on388origincenters('isdm_meds', val1, ierr)
  if (val1 .ne. 174) stop 14
  call get_g2_on388origincenters('cimss', val1, ierr)
  if (val1 .ne. 176) stop 14
  call get_g2_on388origincenters('niwa', val1, ierr)
  if (val1 .ne. 204) stop 14
  call get_g2_on388origincenters('opera', val1, ierr)
  if (val1 .ne. 247) stop 14
  call get_g2_on388origincenters('cosmo', val1, ierr)
  if (val1 .ne. 250) stop 14
  call get_g2_on388origincenters('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 14

  print *, 'testing get_g2_on388genproc'
  call get_g2_on388genproc('res', val1, ierr)
  if (val1 .ne. 0) stop 15
  call get_g2_on388genproc('uvim', val1, ierr)
  if (val1 .ne. 2) stop 15
  call get_g2_on388genproc('ncep_arl_tdm', val1, ierr)
  if (val1 .ne. 3) stop 15
  call get_g2_on388genproc('ncep_arl_smoke', val1, ierr)
  if (val1 .ne. 4) stop 15
  call get_g2_on388genproc('sat_der_prec_temp', val1, ierr)
  if (val1 .ne. 5) stop 15
  call get_g2_on388genproc('gwind_wave_mod', val1, ierr)
  if (val1 .ne. 10) stop 15
  call get_g2_on388genproc('multi_grid_wave_mod', val1, ierr)
  if (val1 .ne. 11) stop 15
  call get_g2_on388genproc('prob_st_surg', val1, ierr)
  if (val1 .ne. 12) stop 15
  call get_g2_on388genproc('lfm_anal', val1, ierr)
  if (val1 .ne. 19) stop 15
  call get_g2_on388genproc('snow_cov_anal', val1, ierr)
  if (val1 .ne. 25) stop 15
  call get_g2_on388genproc('for_gen_field', val1, ierr)
  if (val1 .ne. 30) stop 15
  call get_g2_on388genproc('val_add_post_proc_field', val1, ierr)
  if (val1 .ne. 31) stop 15
  call get_g2_on388genproc('ngm', val1, ierr)
  if (val1 .ne. 39) stop 15
  call get_g2_on388genproc('goi_gfs', val1, ierr)
  if (val1 .ne. 42) stop 15
  call get_g2_on388genproc('goi_fnl', val1, ierr)
  if (val1 .ne. 43) stop 15
  call get_g2_on388genproc('ssta', val1, ierr)
  if (val1 .ne. 44) stop 15
  call get_g2_on388genproc('coast_ocm', val1, ierr)
  if (val1 .ne. 45) stop 15
  call get_g2_on388genproc('hycom_glob', val1, ierr)
  if (val1 .ne. 46) stop 15
  call get_g2_on388genproc('hycom_npb', val1, ierr)
  if (val1 .ne. 47) stop 15
  call get_g2_on388genproc('hycom_nab', val1, ierr)
  if (val1 .ne. 48) stop 15
  call get_g2_on388genproc('ozone_anal_tiros', val1, ierr)
  if (val1 .ne. 49) stop 15
  call get_g2_on388genproc('ozone_anal_nimbus', val1, ierr)
  if (val1 .ne. 52) stop 15
  call get_g2_on388genproc('lfm_fofm', val1, ierr)
  if (val1 .ne. 53) stop 15
  call get_g2_on388genproc('roi', val1, ierr)
  if (val1 .ne. 64) stop 15
  call get_g2_on388genproc('t80l18gfs', val1, ierr)
  if (val1 .ne. 68) stop 15
  call get_g2_on388genproc('t80l18mrf', val1, ierr)
  if (val1 .ne. 69) stop 15
  call get_g2_on388genproc('qlm', val1, ierr)
  if (val1 .ne. 70) stop 15
  call get_g2_on388genproc('fogfm_opc', val1, ierr)
  if (val1 .ne. 73) stop 15
  call get_g2_on388genproc('gulf_of_mex_wind_wave', val1, ierr)
  if (val1 .ne. 74) stop 15
  call get_g2_on388genproc('gulf_of_alas_wind_wave', val1, ierr)
  if (val1 .ne. 75) stop 15
  call get_g2_on388genproc('bias_corr_mrf', val1, ierr)
  if (val1 .ne. 76) stop 15
  call get_g2_on388genproc('t126l28gfs', val1, ierr)
  if (val1 .ne. 77) stop 15
  call get_g2_on388genproc('t126l28mrf', val1, ierr)
  if (val1 .ne. 78) stop 15
  call get_g2_on388genproc('backup_from_prev_run', val1, ierr)
  if (val1 .ne. 79) stop 15
  call get_g2_on388genproc('t62l28mrf', val1, ierr)
  if (val1 .ne. 80) stop 15
  call get_g2_on388genproc('anal_gfs', val1, ierr)
  if (val1 .ne. 81) stop 15
  call get_g2_on388genproc('anal_gdas', val1, ierr)
  if (val1 .ne. 82) stop 15
  call get_g2_on388genproc('meso_nam12km', val1, ierr)
  if (val1 .ne. 84) stop 15
  call get_g2_on388genproc('early_hur_wind_speed_prob', val1, ierr)
  if (val1 .ne. 86) stop 15
  call get_g2_on388genproc('cac_ensem_fcsts_spect', val1, ierr)
  if (val1 .ne. 87) stop 15
  call get_g2_on388genproc('nww3_owm', val1, ierr)
  if (val1 .ne. 88) stop 15
  call get_g2_on388genproc('nmm_8km', val1, ierr)
  if (val1 .ne. 89) stop 15
  call get_g2_on388genproc('t62l28extmrf', val1, ierr)
  if (val1 .ne. 90) stop 15
  call get_g2_on388genproc('t62l28extgfs', val1, ierr)
  if (val1 .ne. 91) stop 15
  call get_g2_on388genproc('t62l28mrffnl', val1, ierr)
  if (val1 .ne. 92) stop 15
  call get_g2_on388genproc('t62l28gdasmrf', val1, ierr)
  if (val1 .ne. 93) stop 15
  call get_g2_on388genproc('t170l42mrf', val1, ierr)
  if (val1 .ne. 94) stop 15
  call get_g2_on388genproc('t126l42mrf', val1, ierr)
  if (val1 .ne. 95) stop 15
  call get_g2_on388genproc('gfs_avn', val1, ierr)
  if (val1 .ne. 96) stop 15
  call get_g2_on388genproc('cfs_t62l64_l40mom3', val1, ierr)
  if (val1 .ne. 98) stop 15
  call get_g2_on388genproc('misc_test_id', val1, ierr)
  if (val1 .ne. 99) stop 15
  call get_g2_on388genproc('ruc_sanal_60km_40n', val1, ierr)
  if (val1 .ne. 100) stop 15
  call get_g2_on388genproc('core', val1, ierr)
  if (val1 .ne. 101) stop 15
  call get_g2_on388genproc('rap', val1, ierr)
  if (val1 .ne. 105) stop 15
  call get_g2_on388genproc('gefs', val1, ierr)
  if (val1 .ne. 107) stop 15
  call get_g2_on388genproc('lamp', val1, ierr)
  if (val1 .ne. 108) stop 15
  call get_g2_on388genproc('rtma', val1, ierr)
  if (val1 .ne. 109) stop 15
  call get_g2_on388genproc('nam_15k', val1, ierr)
  if (val1 .ne. 110) stop 15
  call get_g2_on388genproc('nam_gen_sref', val1, ierr)
  if (val1 .ne. 111) stop 15
  call get_g2_on388genproc('wrf_nmm_ncep', val1, ierr)
  if (val1 .ne. 112) stop 15
  call get_g2_on388genproc('prod_ncep_sref', val1, ierr)
  if (val1 .ne. 113) stop 15
  call get_g2_on388genproc('naefs_prod_ncep_cmc', val1, ierr)
  if (val1 .ne. 114) stop 15
  call get_g2_on388genproc('down_scal_gfs_nam_ext', val1, ierr)
  if (val1 .ne. 115) stop 15
  call get_g2_on388genproc('wrf_em_ncar_arwrf', val1, ierr)
  if (val1 .ne. 116) stop 15
  call get_g2_on388genproc('ice_conc_anal', val1, ierr)
  if (val1 .ne. 120) stop 15
  call get_g2_on388genproc('wna_reg_wav_mod', val1, ierr)
  if (val1 .ne. 121) stop 15
  call get_g2_on388genproc('alas_wat_reg_wav_mod', val1, ierr)
  if (val1 .ne. 122) stop 15
  call get_g2_on388genproc('na_hurr_wav_mod', val1, ierr)
  if (val1 .ne. 123) stop 15
  call get_g2_on388genproc('enp_reg_wav_mod', val1, ierr)
  if (val1 .ne. 124) stop 15
  call get_g2_on388genproc('np_hurr_wav_mod', val1, ierr)
  if (val1 .ne. 125) stop 15
  call get_g2_on388genproc('sea_ice_fcst_mod', val1, ierr)
  if (val1 .ne. 126) stop 15
  call get_g2_on388genproc('lake_ice_fcst_mod', val1, ierr)
  if (val1 .ne. 127) stop 15
  call get_g2_on388genproc('glob_oce_fcst_mod', val1, ierr)
  if (val1 .ne. 128) stop 15
  call get_g2_on388genproc('godas', val1, ierr)
  if (val1 .ne. 129) stop 15
  call get_g2_on388genproc('merge_fields_ruc_nam_gfs', val1, ierr)
  if (val1 .ne. 130) stop 15
  call get_g2_on388genproc('great_lakes_wave_mod', val1, ierr)
  if (val1 .ne. 131) stop 15
  call get_g2_on388genproc('narr', val1, ierr)
  if (val1 .ne. 140) stop 15
  call get_g2_on388genproc('ldafs', val1, ierr)
  if (val1 .ne. 141) stop 15
  call get_g2_on388genproc('nwsrfs', val1, ierr)
  if (val1 .ne. 150) stop 15
  call get_g2_on388genproc('nwsffgs', val1, ierr)
  if (val1 .ne. 151) stop 15
  call get_g2_on388genproc('wsr_88d_s2_prec_anal', val1, ierr)
  if (val1 .ne. 152) stop 15
  call get_g2_on388genproc('wsr_88d_s3_prec_anal', val1, ierr)
  if (val1 .ne. 153) stop 15
  call get_g2_on388genproc('qpf_ncep', val1, ierr)
  if (val1 .ne. 180) stop 15
  call get_g2_on388genproc('rfcqpf_ncep', val1, ierr)
  if (val1 .ne. 181) stop 15
  call get_g2_on388genproc('rfcqpe_ncep', val1, ierr)
  if (val1 .ne. 182) stop 15
  call get_g2_on388genproc('ndfd_ncep_hpc', val1, ierr)
  if (val1 .ne. 183) stop 15
  call get_g2_on388genproc('ncwd_ncep_awc', val1, ierr)
  if (val1 .ne. 190) stop 15
  call get_g2_on388genproc('cipap_ncep_awc', val1, ierr)
  if (val1 .ne. 191) stop 15
  call get_g2_on388genproc('anal_ncep_awc', val1, ierr)
  if (val1 .ne. 192) stop 15
  call get_g2_on388genproc('fcst_ncep_awc', val1, ierr)
  if (val1 .ne. 193) stop 15
  call get_g2_on388genproc('cdas2', val1, ierr)
  if (val1 .ne. 195) stop 15
  call get_g2_on388genproc('cdas2_regen', val1, ierr)
  if (val1 .ne. 196) stop 15
  call get_g2_on388genproc('cdas', val1, ierr)
  if (val1 .ne. 197) stop 15
  call get_g2_on388genproc('cdas_regen', val1, ierr)
  if (val1 .ne. 198) stop 15
  call get_g2_on388genproc('cfsr_t382l64_l40mom4', val1, ierr)
  if (val1 .ne. 199) stop 15
  call get_g2_on388genproc('cpc_man_fcst', val1, ierr)
  if (val1 .ne. 200) stop 15
  call get_g2_on388genproc('cpc_auto_prod', val1, ierr)
  if (val1 .ne. 201) stop 15
  call get_g2_on388genproc('epa_usne', val1, ierr)
  if (val1 .ne. 210) stop 15
  call get_g2_on388genproc('epa_use', val1, ierr)
  if (val1 .ne. 211) stop 15
  call get_g2_on388genproc('spc_man_fcst', val1, ierr)
  if (val1 .ne. 215) stop 15
  call get_g2_on388genproc('ncep_opc_auto_prod', val1, ierr)
  if (val1 .ne. 220) stop 15
  call get_g2_on388genproc('missing', val1, ierr)
  if (val1 .ne. 255) stop 15
  call get_g2_on388genproc('ngac', val1, ierr)
  if (val1 .ne. 117) stop 15
  call get_g2_on388genproc('hrrr', val1, ierr)
  if (val1 .ne. 83) stop 15
  call get_g2_on388genproc('ncep_arl_dust', val1, ierr)
  if (val1 .ne. 6) stop 15
  call get_g2_on388genproc('hrricane_mult_wave', val1, ierr)
  if (val1 .ne. 13) stop 15
  call get_g2_on388genproc('extratropical_storm_surge', val1, ierr)
  if (val1 .ne. 14) stop 15
  call get_g2_on388genproc('nearshore_wave_prediction', val1, ierr)
  if (val1 .ne. 15) stop 15
  call get_g2_on388genproc('href', val1, ierr)
  if (val1 .ne. 132) stop 15
  call get_g2_on388genproc('great_lakes_short_range_mod', val1, ierr)
  if (val1 .ne. 133) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge', val1, ierr)
  if (val1 .ne. 16) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge_pacific', val1, ierr)
  if (val1 .ne. 17) stop 15
  call get_g2_on388genproc('prob_extra_trop_storm_surge', val1, ierr)
  if (val1 .ne. 18) stop 15
  call get_g2_on388genproc('linmit_fine_mesh_anal', val1, ierr)
  if (val1 .ne. 19) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge_microne', val1, ierr)
  if (val1 .ne. 20) stop 15
  call get_g2_on388genproc('hur_weather_res_and_fcst', val1, ierr)
  if (val1 .ne. 71) stop 15
  call get_g2_on388genproc('hur_non-hydro_multi', val1, ierr)
  if (val1 .ne. 72) stop 15
  call get_g2_on388genproc('rrfs', val1, ierr)
  if (val1 .ne. 134) stop 15
  call get_g2_on388genproc('hafs', val1, ierr)
  if (val1 .ne. 135) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge_atl_3d', val1, ierr)
  if (val1 .ne. 21) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge_pac_3d', val1, ierr)
  if (val1 .ne. 22) stop 15
  call get_g2_on388genproc('extra_trop_storm_surge_micro_3', val1, ierr)
  if (val1 .ne. 23) stop 15
  call get_g2_on388genproc('rtofs', val1, ierr)
  if (val1 .ne. 85) stop 15
  call get_g2_on388genproc('national_blend', val1, ierr)
  if (val1 .ne. 104) stop 15
  call get_g2_on388genproc('urma', val1, ierr)
  if (val1 .ne. 118) stop 15
  call get_g2_on388genproc('wam', val1, ierr)
  if (val1 .ne. 119) stop 15
  call get_g2_on388genproc('ccpa', val1, ierr)
  if (val1 .ne. 184) stop 15
  call get_g2_on388genproc('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 15

  print *, 'testing get_g2_typeoforigfieldvals'
  call get_g2_typeoforigfieldvals('fltng_pnt', val1, ierr)
  if (val1 .ne. 0) stop 16
  call get_g2_typeoforigfieldvals('integer', val1, ierr)
  if (val1 .ne. 1) stop 16
  call get_g2_typeoforigfieldvals('local1', val1, ierr)
  if (val1 .ne. 192) stop 16
  call get_g2_typeoforigfieldvals('local2', val1, ierr)
  if (val1 .ne. 193) stop 16
  call get_g2_typeoforigfieldvals('local3', val1, ierr)
  if (val1 .ne. 194) stop 16
  call get_g2_typeoforigfieldvals('local4', val1, ierr)
  if (val1 .ne. 195) stop 16
  call get_g2_typeoforigfieldvals('local5', val1, ierr)
  if (val1 .ne. 196) stop 16
  call get_g2_typeoforigfieldvals('local6', val1, ierr)
  if (val1 .ne. 197) stop 16
  call get_g2_typeoforigfieldvals('local7', val1, ierr)
  if (val1 .ne. 198) stop 16
  call get_g2_typeoforigfieldvals('local8', val1, ierr)
  if (val1 .ne. 199) stop 16
  call get_g2_typeoforigfieldvals('local9', val1, ierr)
  if (val1 .ne. 200) stop 16
  call get_g2_typeoforigfieldvals('local10', val1, ierr)
  if (val1 .ne. 201) stop 16
  call get_g2_typeoforigfieldvals('missing', val1, ierr)
  if (val1 .ne. 255) stop 16
  call get_g2_typeoforigfieldvals('xxx', val1, ierr)
  if (ierr .ne. 9) stop 16

  print *, 'testing get_g2_ordofspcdiffvals'
  call get_g2_ordofspcdiffvals('1st_ord_sptdiff', val1, ierr)
  if (val1 .ne. 1) stop 17
  call get_g2_ordofspcdiffvals('2nd_ord_sptdiff', val1, ierr)
  if (val1 .ne. 2) stop 17
  call get_g2_ordofspcdiffvals('missing', val1, ierr)
  if (val1 .ne. 255) stop 17
  call get_g2_ordofspcdiffvals('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 17
  
  print *, 'testing get_g2_typeofcompression'
  call get_g2_typeofcompression('lossless', val1, ierr)
  if (val1 .ne. 0) stop 18
  call get_g2_typeofcompression('lossy', val1, ierr)
  if (val1 .ne. 1) stop 18
  call get_g2_typeofcompression('missing', val1, ierr)
  if (val1 .ne. 255) stop 18
  call get_g2_typeofcompression('xxxxx', val1, ierr)
  if (ierr .ne. 9) stop 18

  print *, 'testing get_g2_sec5packingmethod'
  call get_g2_sec5packingmethod('simple_packing', val1, ierr)
  if (val1 .ne. 0) stop 19
  call get_g2_sec5packingmethod('maxtric_simple_packing', val1, ierr)
  if (val1 .ne. 1) stop 19
  call get_g2_sec5packingmethod('complex_packing', val1, ierr)
  if (val1 .ne. 2) stop 19
  call get_g2_sec5packingmethod('complex_packing_spatial_diff', val1, ierr)
  if (val1 .ne. 3) stop 19
  call get_g2_sec5packingmethod('ieee_floating_point', val1, ierr)
  if (val1 .ne. 4) stop 19
  call get_g2_sec5packingmethod('jpeg2000', val1, ierr)
  if (val1 .ne. 40) stop 19
  call get_g2_sec5packingmethod('png', val1, ierr)
  if (val1 .ne. 41) stop 19
  call get_g2_sec5packingmethod('spectral_simple_packing', val1, ierr)
  if (val1 .ne. 50) stop 19
  call get_g2_sec5packingmethod('spectral_complex_packing', val1, ierr)
  if (val1 .ne. 51) stop 19
  call get_g2_sec5packingmethod('simple_packing_log_preprcs', val1, ierr)
  if (val1 .ne. 61) stop 19
  call get_g2_sec5packingmethod('run_length_packing_lvl_val', val1, ierr)
  if (val1 .ne. 200) stop 19
  call get_g2_sec5packingmethod('ccsds_lossless', val1, ierr)
  if (val1 .ne. 42) stop 19
  call get_g2_sec5packingmethod('spectral_limited_area_complex', val1, ierr)
  if (val1 .ne. 53) stop 19
  call get_g2_sec5packingmethod('xxxxx', val1, ierr)
  if (ierr .ne. 9) stop 19

  print *, 'testing get_g2_typeofensfcst'
  call get_g2_typeofensfcst('unpert_hi_res_ctrl_fcst', val1, ierr)
  if (val1 .ne. 0) stop 20
  call get_g2_typeofensfcst('unpert_lo_res_ctrl_fcst', val1, ierr)
  if (val1 .ne. 1) stop 20
  call get_g2_typeofensfcst('neg_pert_fcst', val1, ierr)
  if (val1 .ne. 2) stop 20
  call get_g2_typeofensfcst('pos_pert_fcst', val1, ierr)
  if (val1 .ne. 3) stop 20
  call get_g2_typeofensfcst('multi_model_fcst', val1, ierr)
  if (val1 .ne. 4) stop 20
  call get_g2_typeofensfcst('pert_ens_member', val1, ierr)
  if (val1 .ne. 192) stop 20
  call get_g2_typeofensfcst('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 20

  print *, 'testing get_g2_typeofderivefcst'
  call get_g2_typeofderivefcst('unweighted_mean_all_mem', val1, ierr)
  if (val1 .ne. 0) stop 21
  call get_g2_typeofderivefcst('weighted_mean_all_mem', val1, ierr)
  if (val1 .ne. 1) stop 21
  call get_g2_typeofderivefcst('std_devn_res_cluster_mean', val1, ierr)
  if (val1 .ne. 2) stop 21
  call get_g2_typeofderivefcst('std_devn_res_cluster_mean_norm', val1, ierr)
  if (val1 .ne. 3) stop 21
  call get_g2_typeofderivefcst('spread_all_mem', val1, ierr)
  if (val1 .ne. 4) stop 21
  call get_g2_typeofderivefcst('large_anomaly_index', val1, ierr)
  if (val1 .ne. 5) stop 21
  call get_g2_typeofderivefcst('unweighted_mean_cluster', val1, ierr)
  if (val1 .ne. 6) stop 21
  call get_g2_typeofderivefcst('interquartile_range', val1, ierr)
  if (val1 .ne. 7) stop 21
  call get_g2_typeofderivefcst('min_all_ens_mem', val1, ierr)
  if (val1 .ne. 8) stop 21
  call get_g2_typeofderivefcst('max_all_ens_mem', val1, ierr)
  if (val1 .ne. 9) stop 21
  call get_g2_typeofderivefcst('unweighted_mode_all_mem', val1, ierr)
  if (val1 .ne. 192) stop 21
  call get_g2_typeofderivefcst('percentile_val_10', val1, ierr)
  if (val1 .ne. 193) stop 21
  call get_g2_typeofderivefcst('percentile_val_50', val1, ierr)
  if (val1 .ne. 194) stop 21
  call get_g2_typeofderivefcst('percentile_val_90', val1, ierr)
  if (val1 .ne. 195) stop 21
  call get_g2_typeofderivefcst('stat_decide_mem', val1, ierr)
  if (val1 .ne. 196) stop 21
  call get_g2_typeofderivefcst('clim_percentile', val1, ierr)
  if (val1 .ne. 197) stop 21
  call get_g2_typeofderivefcst('deviation_ens_mean', val1, ierr)
  if (val1 .ne. 198) stop 21
  call get_g2_typeofderivefcst('extream_forecast_index', val1, ierr)
  if (val1 .ne. 199) stop 21
  call get_g2_typeofderivefcst('equally_weighted_mean', val1, ierr)
  if (val1 .ne. 200) stop 21
  call get_g2_typeofderivefcst('percentile_value_5', val1, ierr)
  if (val1 .ne. 201) stop 21
  call get_g2_typeofderivefcst('percentile_value_25', val1, ierr)
  if (val1 .ne. 202) stop 21
  call get_g2_typeofderivefcst('percentile_value_75', val1, ierr)
  if (val1 .ne. 203) stop 21
  call get_g2_typeofderivefcst('percentile_value_95', val1, ierr)
  if (val1 .ne. 204) stop 21
  call get_g2_typeofderivefcst('var_all_ens_mem', val1, ierr)
  if (val1 .ne. 10) stop 21
  call get_g2_typeofderivefcst('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 21

  print *, 'testing get_g2_typeofcluster'
  call get_g2_typeofcluster('anomoly_correlation', val1, ierr)
  if (val1 .ne. 0) stop 22
  call get_g2_typeofcluster('root_mean_square', val1, ierr)
  if (val1 .ne. 01) stop 22
  call get_g2_typeofcluster('xxx', val1, ierr)
  if (ierr .ne. 9) stop 22
  
  print *, 'testing get_g2_typeofprob'
  call get_g2_typeofprob('prob_below_lower_limit', val1, ierr)
  if (val1 .ne. 0) stop 23
  call get_g2_typeofprob('prob_above_upper_limit', val1, ierr)
  if (val1 .ne. 1) stop 23
  call get_g2_typeofprob('prob_between_upper_lower_limit', val1, ierr)
  if (val1 .ne. 2) stop 23
  call get_g2_typeofprob('prob_above_lower_limit', val1, ierr)
  if (val1 .ne. 3) stop 23
  call get_g2_typeofprob('prob_below_upper_limit', val1, ierr)
  if (val1 .ne. 4) stop 23
  call get_g2_typeofprob('prob_equal_lower_limit', val1, ierr)
  if (val1 .ne. 5) stop 23
  call get_g2_typeofprob('prob_above_normal_cat', val1, ierr)
  if (val1 .ne. 6) stop 23
  call get_g2_typeofprob('prob_near_normal_cat', val1, ierr)
  if (val1 .ne. 7) stop 23
  call get_g2_typeofprob('prob_below_normal_cat', val1, ierr)
  if (val1 .ne. 8) stop 23
  call get_g2_typeofprob('prob_counts_cat_boolean', val1, ierr)
  if (val1 .ne. 9) stop 23
  call get_g2_typeofprob('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 23
  
  print *, 'testing get_g2_typeofprecip'
  call get_g2_typeofprecip('reserved', val1, ierr)
  if (val1 .ne. 0) stop 23
  call get_g2_typeofprecip('rain', val1, ierr)
  if (val1 .ne. 1) stop 23
  call get_g2_typeofprecip('thunderstorm', val1, ierr)
  if (val1 .ne. 2) stop 23
  call get_g2_typeofprecip('freezing_rain', val1, ierr)
  if (val1 .ne. 3) stop 23
  call get_g2_typeofprecip('mixed_ice', val1, ierr)
  if (val1 .ne. 4) stop 23
  call get_g2_typeofprecip('snow', val1, ierr)
  if (val1 .ne. 5) stop 23
  call get_g2_typeofprecip('wet_snow', val1, ierr)
  if (val1 .ne. 6) stop 23
  call get_g2_typeofprecip('mixture_rain_snow', val1, ierr)
  if (val1 .ne. 7) stop 23
  call get_g2_typeofprecip('ice_pellets', val1, ierr)
  if (val1 .ne. 8) stop 23
  call get_g2_typeofprecip('graupel', val1, ierr)
  if (val1 .ne. 9) stop 23
  call get_g2_typeofprecip('hail', val1, ierr)
  if (val1 .ne. 10) stop 23
  call get_g2_typeofprecip('drizzle', val1, ierr)
  if (val1 .ne. 11) stop 23
  call get_g2_typeofprecip('freezing_drizzle', val1, ierr)
  if (val1 .ne. 12) stop 23
  call get_g2_typeofprecip('xxxx', val1, ierr)
  if (ierr .ne. 9) stop 23
  
  print *, 'SUCCESS!!'
end program test_all_tables
