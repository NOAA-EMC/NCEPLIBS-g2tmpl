
! This is a test for the NCEPLIBS-g2tmpl project.
!
! This tests the grib2_all_tables_module code.
!
! Ed Hartnett, 8/23/22
program test_all_table_other
  use grib2_all_tables_module
  implicit none

  integer :: idisc, listsec0(2)
  integer :: listsec1(13), i
  integer :: ipdstmpl0(15)
  integer :: ipdstmpl0_expected(15) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0/)
  integer :: ipdstmpl8(29)
  integer :: ipdstmpl8_expected(29) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 2022, &
       8, 23, 15, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0/)
  integer :: ipdstmpl44(21)
  integer :: ipdstmpl44_expected(21) = (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 0, 10, 10, 11, 12, 13, &
       101, 15, 16, 104, 18, 19 /)
  integer :: ipdstmpl48(26)  
  integer :: ipdstmpl48_expected(26) = (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 10, 0, &
       12, 15, 16, 13, 18, 20, 20, 21, 100, 22, 23 /)
  integer :: ipdstmpl49(29)  
  integer :: ipdstmpl49_expected(29) = (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 10, 0, &
       12, 15, 16, 13, 18, 20, 20, 21, 100, 22, 23, 0, 0, 0 /)
  integer :: ifield5(16)  
  integer :: ifield5_expected(16) = (/ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 /)
  integer :: ifield5_0(5)  
  integer :: ifield5_0_expected(5) = (/ 0, 1, 0, 2, 0 /)
  integer :: ifield5_3(18)  
  integer :: ifield5_3_expected(18) = (/ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0 /)
  integer :: ifield5_40(7)  
  integer :: ifield5_40_expected(7) = (/ 0, 1, 0, 2, 0, 1, 255 /)

  print *, 'Testing grib2_all_tables_module, expect and ignore error messages...'
  print *, 'testing g2sec0'
  idisc = 42
  call g2sec0(idisc, listsec0)
  if (listsec0(1) .ne. 42 .or. listsec0(2) .ne. 2) stop 1
  
  print *, 'testing g2sec1'
  call g2sec1('melbourne1', 'ncep_reanl', 'expt', 'local_tab_no', 'anal', 2022,  &
       8, 23, 14, 45, 00, 'oper', 'anal', listsec1)
  if (listsec1(1) .ne. 1 .or. listsec1(2) .ne. 1) stop 2
  if (listsec1(3) .ne. 0 .or. listsec1(4) .ne. 0 .or. listsec1(5) .ne. 0) stop 2
  if (listsec1(6) .ne. 2022 .or. listsec1(7) .ne. 8 .or. listsec1(8) .ne. 23) stop 2
  if (listsec1(9) .ne. 14 .or. listsec1(10) .ne. 45 .or. listsec1(11) .ne. 0) stop 2
  if (listsec1(12) .ne. 0 .or. listsec1(13) .ne. 0) stop 2

  print *, 'testing g2sec4_temp0'
  call g2sec4_temp0(0, 0, 'anal', 'res', 0, 0, 'minute', 0, 'surface', 0, &
       0, 'surface', 0, 0, ipdstmpl0)
  do i = 1, 15
     if (ipdstmpl0(i) .ne. ipdstmpl0_expected(i)) stop 3
  end do
    
  print *, 'testing g2sec4_temp0'
  call g2sec4_temp8(0, 0, 'anal', 'res', 0, 0, 'minute', 0, 'surface', 0, 0, 'surface',  &
       0, 0, 2022, 8, 23, 15, 28, 0, 0, 0, 'AVE', 'reserved', 'minute', 0, 'minute', &
       0, ipdstmpl8)
  do i = 1, 29
!     print *, ipdstmpl8(i)
     if (ipdstmpl8(i) .ne. ipdstmpl8_expected(i)) stop 4
  end do

  print *, 'testing g2sec4_temp44'
  call g2sec4_temp44(0, 1, 'methane', 'greater_than_first_limit', 4, 5.0, 6, 7.0, 'obs', &
       'gwind_wave_mod', 10, 11, '12hours', 13, 'mean_sea_lvl', 15, 16, 'sigma_lvl', 18, 19, ipdstmpl44)
  do i = 1, 21
     !print *, ipdstmpl44(i)
     if (ipdstmpl44(i) .ne. ipdstmpl44_expected(i)) stop 5
  end do

  print *, 'testing g2sec4_temp48'
  call g2sec4_temp48(0, 1, 'methane', 'greater_than_first_limit', 4, 5.0, 6, 7.0, &
       'greater_or_equal_first_limit', 9, 10., 11, 12., 'prob_wt_fcst',  'prob_st_surg', 15, 16, &
       'second', 18, 'isothermal', 20, 21, 'isobaric_sfc', 22, 23, ipdstmpl48)
  do i = 1, 26
     !print *, ipdstmpl48(i)
     if (ipdstmpl48(i) .ne. ipdstmpl48_expected(i)) stop 6
  end do
  
  print *, 'testing g2sec4_temp49'
  call g2sec4_temp49(0, 1, 'methane', 'greater_than_first_limit', 4, 5.0, 6, 7.0, &
       'greater_or_equal_first_limit', 9, 10., 11, 12., 'prob_wt_fcst',  'prob_st_surg', 15, 16, &
       'second', 18, 'isothermal', 20, 21, 'isobaric_sfc', 22, 23, &
       'unpert_hi_res_ctrl_fcst', 0, 0, ipdstmpl49)
  do i = 1, 29
     print *, ipdstmpl49(i)
     if (ipdstmpl49(i) .ne. ipdstmpl49_expected(i)) stop 65
  end do
  
  print *, 'testing g2sec5_temp0'
  call g2sec5_temp0(0, 1, 2, ifield5_0)  
  do i = 1, 5
     !print *, ifield5_0(i)
     if (ifield5_0(i) .ne. ifield5_0_expected(i)) stop 7
  end do

  print *, 'testing g2sec5_temp2'
  call g2sec5_temp2(0, 1, ifield5)  
  do i = 1, 16
     !print *, ifield5(i)
     if (ifield5(i) .ne. ifield5_expected(i)) stop 7
  end do

  print *, 'testing g2sec5_temp3'
  call g2sec5_temp3(0, 1, '1st_ord_sptdiff', ifield5_3)  
  do i = 1, 18
     !print *, ifield5_3(i)
     if (ifield5_3(i) .ne. ifield5_3_expected(i)) stop 8
  end do

  print *, 'testing g2sec5_temp40'
  call g2sec5_temp40(0, 1, 2, 'lossy', ifield5_40)  
  do i = 1, 7
     !print *, ifield5_40(i)
     if (ifield5_40(i) .ne. ifield5_40_expected(i)) stop 9
  end do

  print *, 'SUCCESS!!'
end program test_all_table_other
