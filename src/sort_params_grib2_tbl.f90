!> @file
!> @brief Read and sort params_grib2_tbl_new.text.
!> @author ???

!> This program reads params_grib2_tbl_new.text and writes the output
!> file will be sorted with a format suitable for subsequent reading
!> via the open_and_read_4dot2() function.
!> @return 0 for sucess
program  sort_params_grib2_tbl
  use grib2_all_tables_module
  integer idisc,icatg,iparm,locflg
  character*255 fl_nametbl
  locflg=0
  idisc=0
  icatg=0
  iparm=0
  
  !    Opens and reads the GRIB2 Code Table 4.2 into an internal memory structure.
  !
  fl_nametbl='params_grib2_tbl_new'
  call open_and_read_4dot2( fl_nametbl, ierr )
  if ( ierr .ne. 0 ) then
     print*, 'Couldnt open table file - return code was ',ierr
  endif
  
  !    Sorts and writes the GRIB2 Code Table 4.2 to an output file.
  
  fl_nametbl='params_grib2_tbl_new'
  call sort_and_write_4dot2( fl_nametbl, ierr )
  print *, ""
  print *, " The output params_grib2_tbl_new file sorted."
  print *, ""
  if ( ierr .ne. 0 ) then
     print*, 'Couldnt open output file - return code was ',ierr
  endif
  stop
end Program sort_params_grib2_tbl
