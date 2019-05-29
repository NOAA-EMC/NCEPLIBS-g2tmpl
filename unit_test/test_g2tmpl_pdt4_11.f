        Program test_g2tmpl_pdt4_11
!
!       This program uses to test routine g2sec4_temp11.f in g2tmpl library

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
                       103, 0, 2, 255, 0, 0, 3, 5, 10, 2015, 01, 09, 0, 0, &
                       0, 1, 0, 2, 2, 1, 6, 255, 0/)

!       ORIGINAl PRODUCT TEMPLATE 4. 11
!       0   4 4 0 107 0 0 1  6 103 0     2 255 0      0 3 5 10 2015 01 09  0 0 0 1 0 2 2 1 6 255 0  ! PDT 4.11

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

         year_intvl=2015
         mon_intvl=01
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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' pos_pert_fcst=  3 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' unpert_hi_res_ctrl_fcst = 0 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' unpert_lo_res_ctrl_fcst = 1 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' neg_pert_fcst =  2 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' multi_model_fcst = 4 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' pert_ens_member =  192 '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'  NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

         type_ens_fcst_key='pert_12ens_member1'
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
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')'Original PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11_old(j),j=1,ipdstmpllen)
           print *,' '
           print *,' Compiled with NEW g2tmpl library '
           print *,' for  new PDT 4.11                '
           print *,' '
           print *,' pert_ens_12member1 = ERROR '
           print *,' '
           write(6,'(A,1x,i0,a,80(1x,I0))')' *** NEW    PRODUCT TEMPLATE 4.', &
                ipdsnum,' : ',(ipdstmpl11(j),j=1,ipdstmpllen)
           print *,' '

      stop
      end
