! This is part of the NCEPLIBS-g2tmpl project.
!
! This program uses to test routine test_params_grib2_tbl_new in
! g2tmpl library It tests parameters in table 4.2
! (test_params_grib2_tbl_new) by changing mnemonic in
! params_grib2_tbl_new table. Then, it calls search_for_4dot2_entry
! routine and write out the corresponding product discipline,
! parameter category and parameter number in table 4.2.
!
! Kyle Gerheiser, Edward Hartnett
program test_params_grib2_tbl_new
  use grib2_all_tables_module
  implicit none
  
  integer idisc,icatg,iparm,locflg
  character*255 fl_nametbl
  character(len=30) :: pname(200)=''
  integer :: i, ierr

  print *, 'Testing params subroutines.'

  pname(1)='UCTMP'
  pname(2)='TMPADV'
  pname(3)='STRPRATE'
  pname(4)='CATCP'
  pname(5)='TKMFLX'
  pname(6)='SBTA169'
  pname(7)='SBTA1610'
  pname(8)='SBTA1611'
  pname(9)='SBTA1612'
  pname(10)='SWHFSWEL'
  pname(11)='TMAX'
  pname(12)='TMP'
  pname(13)='SRFAGR1'
  pname(14)='VGRD'
  pname(15)='UGRD'
  locflg=0

  !    Opens and reads the GRIB2 Code Table 4.2 into an internal memory structure.
  !
  fl_nametbl = 'params_grib2_tbl_new'
  call open_and_read_4dot2(fl_nametbl, ierr)
  if ( ierr .ne. 0 ) then
     print*, 'Couldnt open table file - return code was ',ierr
     stop 2
  endif

  !    Sorts and writes the GRIB2 Code Table 4.2 to an output file.
  !
  !        fl_nametbl='params_grib2_tbl_new.new'
  !        call sort_and_write_4dot2( fl_nametbl, ierr )
  !        if ( ierr .ne. 0 ) then
  !         print*, 'Couldnt open output file - return code was ',ierr
  !        endif

  ! Searches for a specified mnemonic within GRIB2 Code Table 4.2 and
  ! returns the corresponding product discipline, parameter category and parameter number.
  do i = 1,15
     idisc = 0
     icatg = 0
     iparm = 0
     call search_for_4dot2_entry(pname(i),locflg, idisc, icatg, iparm, ierr)
     if (ierr .ne. 0) then
        print*, 'Could not find Mnemonic ', trim(pname(i)),' in grib2 table 4.2 '
        stop 3
     end if
     write(6,'(A,A,3(A,I4),A)') ' Mnemonic = ',trim(pname(i)), &
          ' is discipline = ',idisc,           &
          ' ; category = ',icatg,             &
          ' ; parameter = ',iparm, ' in grib2 table 4.2 '
  end do

  print *, 'OK!'
  print *, 'SUCCESS!'

end Program test_params_grib2_tbl_new
