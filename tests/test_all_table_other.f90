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
     if (ipdstmpl8(i) .ne. ipdstmpl8_expected(i)) stop 3
  end do
  
  print *, 'SUCCESS!!'
end program test_all_table_other
