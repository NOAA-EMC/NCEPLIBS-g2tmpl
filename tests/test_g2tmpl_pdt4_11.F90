! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp11() subroutine.
!
! This program uses to test routine g2sec4_temp11.f in g2tmpl library
! It tests PDT4.11 by changing 'ens_fcst', 'gefs', 'MAX','
! pos_pert_fcst= 3 ' Then, it calling g2sec4_temp11 routine and write
! out new PDT 4.11
!
! Boi Voung 12/27/19
Program test_g2tmpl_pdt4_11
  use grib2_all_tables_module
  integer(4) :: ipdstmpl11(32)

  integer(4) :: icatg,iparm,hrs_obs_cutoff,min_obs_cutoff,fcst_time, &
       scale_fac1,scaled_val1,scale_fac2,scaled_val2
  integer(4) :: year_intvl,mon_intvl,day_intvl,hour_intvl,min_intvl, &
       sec_intvl,num_time_range,stat_miss_val, &
       leng_time_range_stat,time_inc_betwn_succ_fld
  integer(4) :: perturb_num, num_fcst_ens
  !
  character(len=80) :: typ_gen_proc_key,gen_proc_or_mod_key, &
       unit_of_time_key,lvl_type1,lvl_type2,           &
       type_of_stat_proc,type_of_time_inc,             &
       stat_unit_time_key,stat_unit_time_key_succ,     &
       type_ens_fcst_key
  !
  integer(4) :: bckgnd_gen_proc_id    ! defined by the center
  !

  integer(4) :: ipdstmpl11_old(32)=(/0, 4, 4, 0, 107, 0, 0, 1, 6,    &
       103, 0, 2, 255, 0, 0, 3, 5, 10, 2017, 03, 09, 0, 0, &
       0, 1, 0, 2, 2, 1, 6, 255, 0/)

  !       ORIGINAl PRODUCT TEMPLATE 4. 11
  !       0   4 4 0 107 0 0 1  6 103 0     2 255 0      0 3 5 10 2017 03 09  0 0 0 1 0 2 2 1 6 255 0  ! PDT 4.11

  !
  icatg=0
  iparm=4
  typ_gen_proc_key='ens_fcst'
  gen_proc_or_mod_key='gefs'
  hrs_obs_cutoff=0
  min_obs_cutoff=0
  unit_of_time_key='hour'
  fcst_time=6
  lvl_type1='spec_hgt_lvl_above_grnd'
  scale_fac1=0
  scaled_val1=2
  lvl_type2='missing'
  scale_fac2=0
  scaled_val2=0

  type_ens_fcst_key='pos_pert_fcst'
  perturb_num=5
  num_fcst_ens=10

  year_intvl=2017
  mon_intvl=03
  day_intvl=09
  hour_intvl=0
  min_intvl=0
  sec_intvl=0
  num_time_range=1
  stat_miss_val=0
  type_of_stat_proc='MAX'
  type_of_time_inc='same_start_time_fcst_fcst_time_inc'
  stat_unit_time_key='hour'
  leng_time_range_stat=6
  stat_unit_time_key_succ='missing'
  time_inc_betwn_succ_fld=0

  ipdsnum=11
  ipdstmpllen=32

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
  end do

  type_ens_fcst_key='unpert_hi_res_ctrl_fcst'
  perturb_num=6
  num_fcst_ens=12

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl11(j) .ne. 0) stop 2
     else if (j .eq. 17) then
        if (ipdstmpl11(j) .ne. 6) stop 2
     else if (j .eq. 18) then
        if (ipdstmpl11(j) .ne. 12) stop 2
     else
        if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
     endif
  end do

  type_ens_fcst_key='unpert_lo_res_ctrl_fcst'
  perturb_num=6
  num_fcst_ens=12

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl11(j) .ne. 1) stop 2
     else if (j .eq. 17) then
        if (ipdstmpl11(j) .ne. 6) stop 2
     else if (j .eq. 18) then
        if (ipdstmpl11(j) .ne. 12) stop 2
     else
        if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
     endif
  end do

  type_ens_fcst_key='neg_pert_fcst'
  perturb_num=6
  num_fcst_ens=12

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl11(j) .ne. 2) stop 2
     else if (j .eq. 17) then
        if (ipdstmpl11(j) .ne. 6) stop 2
     else if (j .eq. 18) then
        if (ipdstmpl11(j) .ne. 12) stop 2
     else
        if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
     endif
  end do

  type_ens_fcst_key='multi_model_fcst'
  perturb_num=6
  num_fcst_ens=12

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl11(j) .ne. 4) stop 2
     else if (j .eq. 17) then
        if (ipdstmpl11(j) .ne. 6) stop 2
     else if (j .eq. 18) then
        if (ipdstmpl11(j) .ne. 12) stop 2
     else
        if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
     endif
  end do

  type_ens_fcst_key='pert_ens_member'
  perturb_num=6
  num_fcst_ens=12

  call g2sec4_temp11(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,year_intvl,                  &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl11)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl11(j) .ne. 192) stop 2
     else if (j .eq. 17) then
        if (ipdstmpl11(j) .ne. 6) stop 2
     else if (j .eq. 18) then
        if (ipdstmpl11(j) .ne. 12) stop 2
     else
        if (ipdstmpl11(j) .ne. ipdstmpl11_old(j)) stop 2
     endif
  end do

  print *, "SUCCESS!"
end Program test_g2tmpl_pdt4_11
