! This is a test program for the NCEPLIBS-g2tmpl project. It tests the
! g2sec4_temp1() subroutine.
!
! This program uses to test routine g2sec4_temp1.f in g2tmpl library
! It uses to test PDT4.1 by changing the original PDT4.1 with
! "typ_gen_proc_key" and "gen_proc_or_mod_key"
!
! Boi Voung 12/27/19
Program test_g2tmpl_pdt4_1
  use grib2_all_tables_module
  integer(4) :: ipdstmpl1(18) 

  integer(4) :: icatg,iparm,hrs_obs_cutoff,min_obs_cutoff,fcst_time, &
       scale_fac1,scaled_val1,scale_fac2,scaled_val2
  integer(4) :: perturb_num, num_fcst_ens

  character(len=80) :: typ_gen_proc_key,gen_proc_or_mod_key, &
       unit_of_time_key,lvl_type1,lvl_type2,           &
       type_ens_fcst_key

  integer(4) :: bckgnd_gen_proc_id    ! defined by the center

  integer(4) :: ipdstmpl1_old(18)=(/0, 4, 4, 0, 107, 0, 0, 1, 6, &
       103, 0, 2, 255, 0, 0, 3, 5, 10/)

  !       ORIGINAl PRODUCT TEMPLATE 4. 1
  !       0   4 4 0 107 0 0 1  6 103 0     2 255 0      0 3 5 10  ! PDT 4.1

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

  ipdsnum=1
  ipdstmpllen=18

  call g2sec4_temp1(icatg,iparm,typ_gen_proc_key,gen_proc_or_mod_key,       &
       hrs_obs_cutoff,min_obs_cutoff,unit_of_time_key,       &
       fcst_time,lvl_type1,scale_fac1,scaled_val1,lvl_type2, &
       scale_fac2,scaled_val2,type_ens_fcst_key,             &
       perturb_num,num_fcst_ens,ipdstmpl1)

  do j = 1, ipdstmpllen
     if (ipdstmpl1(j) .ne. ipdstmpl1_old(j)) stop 2
  end do
  
end Program test_g2tmpl_pdt4_1
