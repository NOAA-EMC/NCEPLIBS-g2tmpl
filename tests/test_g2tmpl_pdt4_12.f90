! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp11() subroutine.
!
! This program uses to test routine g2sec4_temp12.f in g2tmpl library
! It test PDT4.12 by changing: weighted_mean_all_mem = 1,
! unweighted_mean_all_mem = 0 and std_devn_res_cluster_mean = 2. Then,
! It calls g2sec4_temp12 routine to write NEW PDT4.12
!
! Boi Voung 12/27/19
Program test_g2tmpl_pdt4_12
  use grib2_all_tables_module
  integer(4) :: ipdstmpl12(31) 

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
       type_derive_fcst_key
  !
  integer(4) :: bckgnd_gen_proc_id    ! defined by the center
  !

  integer(4) :: ipdstmpl12_old(31)=(/0, 4, 4, 0, 107, 0, 0, 1, 6, &
       103, 0, 2, 255, 0, 0, 1, 10, 2017, 03, 09, 0, 0, &
       0, 1, 0, 2, 2, 1, 6, 255, 0/)

  !       ORIGINAL PRODUCT TEMPLATE 4. 12
  !       0   4 4 0 107 0 0 1  6 103 0     2 255 0      0 1 10 2017 03 09  0 0 0 1 0 2 2 1 6 255 0  ! PDT 4.12

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

  type_derive_fcst_key='weighted_mean_all_mem'
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
  ipdstmpllen=31

  call g2sec4_temp12(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_derive_fcst_key,          &
       num_fcst_ens,year_intvl,                              &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl12)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12(j),j=1,ipdstmpllen)
  
  do j = 1, ipdstmpllen
     if (ipdstmpl12(j) .ne. ipdstmpl12_old(j)) stop 2
  end do
  
  type_derive_fcst_key='unweighted_mean_all_mem '
  num_fcst_ens=10
  call g2sec4_temp12(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_derive_fcst_key,          &
       num_fcst_ens,year_intvl,                              &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl12)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl12(j) .ne. 0) stop 2
     else
        if (ipdstmpl12(j) .ne. ipdstmpl12_old(j)) stop 2
     end if
  end do

  type_derive_fcst_key='std_devn_res_cluster_mean'
  num_fcst_ens=10
  call g2sec4_temp12(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,      &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_derive_fcst_key,          &
       num_fcst_ens,year_intvl,                              &
       mon_intvl,day_intvl,hour_intvl,min_intvl,sec_intvl,   &
       num_time_range,stat_miss_val,type_of_stat_proc,       &
       type_of_time_inc,stat_unit_time_key,                  &
       leng_time_range_stat,stat_unit_time_key_succ,         &
       time_inc_betwn_succ_fld,ipdstmpl12)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12_old(j),j=1,ipdstmpllen)
  ! write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
  !      ipdsnum,' : ',(ipdstmpl12(j),j=1,ipdstmpllen)

  do j = 1, ipdstmpllen
     if (j .eq. 16) then
        if (ipdstmpl12(j) .ne. 2) stop 2
     else
        if (ipdstmpl12(j) .ne. ipdstmpl12_old(j)) stop 2
     end if
  end do

  print *, 'SUCCESS!'

end Program test_g2tmpl_pdt4_12
