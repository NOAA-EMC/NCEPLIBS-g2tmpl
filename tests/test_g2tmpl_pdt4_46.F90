! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp46() subroutine.
!
! Ed Hartnett 4/16/24
Program test_g2tmpl_pdt4_46
  use grib2_all_tables_module
  implicit none
  
  integer(4) :: icatg, iparm, hrs_obs_cutoff, min_obs_cutoff,         &
       scale_fac1_size, scale_fac2_size,       &
       fcst_time, scale_fac1, scaled_val1,                             &
       scale_fac2, scaled_val2
  integer(4) :: year_intvl, mon_intvl, day_intvl, hour_intvl, min_intvl, &
       sec_intvl, num_time_range, stat_miss_val, &
       leng_time_range_stat, time_inc_betwn_succ_fld
  real :: scale_val1_size, scale_val2_size
  character(len=80) :: aer_type, typ_intvl_size,                     &
       typ_gen_proc_key,                        &
       gen_proc_or_mod_key, unit_of_time_key, lvl_type1, lvl_type2,   &
       type_of_stat_proc, type_of_time_inc, &
       stat_unit_time_key, stat_unit_time_key_succ
  integer(4) :: ipdstmpl46(35), ipdstmpllen, j
  integer(4) :: ipdstmpl46_old(35)=(/ 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &
       0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 /)
  integer :: ipdsnum = 46

  ipdstmpllen = 35
  icatg = 0
  iparm = 4
  aer_type = 'ozone'
  typ_intvl_size = 'smaller_than_first_limit'
  scale_fac1_size = 0
  scale_val1_size = 0
  scale_fac2_size = 0
  scale_val2_size = 0
  typ_gen_proc_key = 'anal'
  gen_proc_or_mod_key = 'res'
  hrs_obs_cutoff = 0
  min_obs_cutoff = 0
  unit_of_time_key = 'minute'
  fcst_time = 0
  lvl_type1 = 'surface'
  scale_fac1 = 0
  scaled_val1 = 0
  lvl_type2 = 'surface'
  scale_fac2 = 0
  scaled_val2 = 0
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

  call g2sec4_temp46(icatg, iparm, aer_type, typ_intvl_size,                 &
       scale_fac1_size, scale_val1_size, scale_fac2_size,      &
       scale_val2_size, typ_gen_proc_key, gen_proc_or_mod_key, &
       hrs_obs_cutoff, min_obs_cutoff,                         &
       unit_of_time_key, fcst_time, lvl_type1, scale_fac1,     &
       scaled_val1, lvl_type2, scale_fac2, scaled_val2,        &
       year_intvl,                                             &
       mon_intvl, day_intvl, hour_intvl, min_intvl, sec_intvl, &
       num_time_range, stat_miss_val, type_of_stat_proc,       &
       type_of_time_inc, stat_unit_time_key,                   &
       leng_time_range_stat, stat_unit_time_key_succ,          &
       time_inc_betwn_succ_fld, ipdstmpl46)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12_old(j),j = 1,ipdstmpllen)
   write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
        ipdsnum,' : ',(ipdstmpl46(j),j = 1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (ipdstmpl46(j) .ne. ipdstmpl46_old(j)) stop 2
  end do

  print *, 'SUCCESS!'

end Program test_g2tmpl_pdt4_46
