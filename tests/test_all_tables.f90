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
  call get_g2_typeofintervals('xxx', val1, ierr)
  if (ierr .ne. 9) stop 12
  
  print *, 'SUCCESS!!'
end program test_all_tables
