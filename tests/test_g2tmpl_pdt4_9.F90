! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp9() subroutine.
!
! Edward Hartnett 4/16/24
Program test_g2tmpl_pdt4_9
  use grib2_all_tables_module
  implicit none
  
  integer(4) :: ipdstmpl9(36)
  integer(4) :: icatg, iparm, hrs_obs_cutoff, min_obs_cutoff, fcst_time, &
       scale_fac1, scaled_val1, scale_fac2, scaled_val2, prob_num, tot_num_prob,     &
       scale_fac_lower_limit, scale_fac_upper_limit
  integer(4) :: year_intvl, mon_intvl, day_intvl, hour_intvl, min_intvl, &
       sec_intvl, num_time_range, stat_miss_val, &
       leng_time_range_stat, time_inc_betwn_succ_fld
  
  real :: scale_val_lower_limit, scale_val_upper_limit
  
  character(len=80) :: typ_gen_proc_key, gen_proc_or_mod_key, &
       unit_of_time_key, lvl_type1, lvl_type2, type_of_prob1, &
       type_of_stat_proc, type_of_time_inc, &
       stat_unit_time_key, stat_unit_time_key_succ
  
  integer(4) :: ipdstmpl9_old(36)=(/ 2, 220, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, &
       255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 /)
  integer ipdsnum, ipdstmpllen, j

  print *, 'Testing g2sec4_temp9...' 

  icatg=2
  iparm=220
  typ_gen_proc_key = 'anal'
  gen_proc_or_mod_key = 'res'
  hrs_obs_cutoff = 0
  min_obs_cutoff = 0
  unit_of_time_key = 'minute'
  fcst_time = 0
  lvl_type1 = 'xxx'
  scale_fac1 = 0
  scaled_val1 = 0
  lvl_type2 = 'xxx'
  scale_fac2 = 0
  scaled_val2 = 0
  prob_num = 0
  tot_num_prob = 0
  type_of_prob1 = 'prob_below_lower_limit'
  scale_fac_lower_limit = 0
  scale_val_lower_limit = 0
  scale_fac_upper_limit = 0
  scale_val_upper_limit = 0
  year_intvl = 0
  mon_intvl = 0
  day_intvl = 0
  hour_intvl = 0
  min_intvl = 0
  sec_intvl = 0
  num_time_range = 0
  stat_miss_val = 0
  type_of_stat_proc = 'AVE'
  type_of_time_inc = 'reserved'
  stat_unit_time_key = 'minute'
  leng_time_range_stat = 0
  stat_unit_time_key_succ = 'minute'
  time_inc_betwn_succ_fld = 0
  ipdsnum=9
  ipdstmpllen=36

  call g2sec4_temp9(icatg, iparm, typ_gen_proc_key, gen_proc_or_mod_key,     &
       hrs_obs_cutoff, min_obs_cutoff, unit_of_time_key,       &
       fcst_time, lvl_type1, scale_fac1, scaled_val1, lvl_type2, &
       scale_fac2, scaled_val2, prob_num, tot_num_prob, type_of_prob1, &
       scale_fac_lower_limit, scale_val_lower_limit, &
       scale_fac_upper_limit, scale_val_upper_limit, year_intvl,     &
       mon_intvl, day_intvl, hour_intvl, min_intvl, sec_intvl,   &
       num_time_range, stat_miss_val, type_of_stat_proc,       &
       type_of_time_inc, stat_unit_time_key,                  &
       leng_time_range_stat, stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld, ipdstmpl9)

  write(6,'(A,1x,i0,a,80(1x,I0))')'OLD_PRODUCT TEMPLATE 4.', &
       ipdsnum,' : ',(ipdstmpl9_old(j),j=1,ipdstmpllen)
  write(6,'(A,1x,i0,a,80(1x,I0))')'NEW_PRODUCT TEMPLATE 4.', &
       ipdsnum,' : ',(ipdstmpl9(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (ipdstmpl9(j) .ne. ipdstmpl9_old(j)) stop 2
  end do

  print *, 'OK!' 
  print *, 'SUCCESS!'

end Program test_g2tmpl_pdt4_9
