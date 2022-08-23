! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp8() subroutine.
!
! This program uses to test routine g2sec4_temp8 in g2tmpl library to
! verify the scaled value of first fixed surface and scaled value of
! second fixed surface in product definition template 4.8.
!
! Boi Voung 12/27/19
Program test_g2tmpl_pdt4_8
  use grib2_all_tables_module
  integer(4) :: ipdstmpl8(29)
  integer(4) :: icatg,iparm,hrs_obs_cutoff,min_obs_cutoff,fcst_time, &
       scale_fac1,scaled_val1,scale_fac2,scaled_val2
  integer(4) :: year_intvl,mon_intvl,day_intvl,hour_intvl,min_intvl, &
       sec_intvl,num_time_range,stat_miss_val, &
       leng_time_range_stat,time_inc_betwn_succ_fld
  character(len=80) :: typ_gen_proc_key,gen_proc_or_mod_key, &
       unit_of_time_key,lvl_type1,lvl_type2, &
       type_of_stat_proc,type_of_time_inc, &
       stat_unit_time_key,stat_unit_time_key_succ

  integer(4) :: ipdstmpl8_old(29)=(/2, 220, 2, 0, 84, 0, 0, 1, 10, 100, 0, 20000, 100, &
       0, 300000, 2017, 03, 09, 12, 0, 0, 1, 0, 2, 2, 1, 1, 255, 0/)

  !       PRODUCT TEMPLATE 4. 8
  !       2 220 2 0 84 0 0  1 10 100 0 20000 100 0 300000 2017 03 09 12 0 0 1 0 2 2 1 1 255 0
  !
  icatg=2
  iparm=220
  typ_gen_proc_key='fcst'
  gen_proc_or_mod_key='meso_nam12km'
  hrs_obs_cutoff=0
  min_obs_cutoff=0
  unit_of_time_key='hour'
  fcst_time=10
  lvl_type1='isobaric_sfc'
  scale_fac1=0
  scaled_val1=40000
  lvl_type2='isobaric_sfc'
  scale_fac2=0
  scaled_val2=100000
  year_intvl=2017
  mon_intvl=03
  day_intvl=09
  hour_intvl=12
  min_intvl=0
  sec_intvl=0
  num_time_range=1
  stat_miss_val=0
  type_of_stat_proc='MAX'
  type_of_time_inc='same_start_time_fcst_fcst_time_inc'
  stat_unit_time_key='hour'
  leng_time_range_stat=1
  stat_unit_time_key_succ='missing'
  time_inc_betwn_succ_fld=0

  ipdsnum=8
  ipdstmpllen=29

  call g2sec4_temp8(icatg,iparm,typ_gen_proc_key,   &
       gen_proc_or_mod_key,                    &
       hrs_obs_cutoff,min_obs_cutoff,          &
       unit_of_time_key,                       &
       fcst_time,lvl_type1,scale_fac1,         &
       scaled_val1,lvl_type2,                  &
       scale_fac2,scaled_val2,year_intvl,      &
       mon_intvl,day_intvl,hour_intvl,         &
       min_intvl,sec_intvl,                    &
       num_time_range,stat_miss_val,           &
       type_of_stat_proc,                      &
       type_of_time_inc,stat_unit_time_key,    &
       leng_time_range_stat,                   &
       stat_unit_time_key_succ,                &
       time_inc_betwn_succ_fld,ipdstmpl8)


  print *,' '
  print *,' '
  write(6,'(A,1x,i0,a,80(1x,I0))')'OLD_PRODUCT TEMPLATE 4.', &
       ipdsnum,' : ',(ipdstmpl8_old(j),j=1,ipdstmpllen)
  print *,' '
  print *,' Compiled with NEW g2tmpl library '
  print *,' It fixed  the scale value of first fixed surface= 40000'
  print *,' and second fixed surface = 100000'
  print *,' '
  write(6,'(A,1x,i0,a,80(1x,I0))')'NEW_PRODUCT TEMPLATE 4.', &
       ipdsnum,' : ',(ipdstmpl8(j),j=1,ipdstmpllen)
  print *,' '
  print *,' '
  do j = 1, ipdstmpllen
     if (j .eq. 12) then
        if (ipdstmpl8(j) .ne. 40000) stop 2
     elseif (j .eq. 15) then
        if (ipdstmpl8(j) .ne. 100000) stop 2
     else
        if (ipdstmpl8(j) .ne. ipdstmpl8_old(j)) stop 2
     endif
  end do

end Program test_g2tmpl_pdt4_8
