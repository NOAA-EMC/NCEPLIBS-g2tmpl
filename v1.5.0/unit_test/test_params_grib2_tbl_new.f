        Program  params_grib2_tbl_new
!
!       This program uses to test routine test_params_grib2_tbl_new in g2tmpl library
!       It tests parameter table 4.2 (test_params_grib2_tbl_new) by changing mnemonic in
!       params_grib2_tbl_new table. Then, it calls earch_for_4dot2_entry  routine and 
!       write out the corresponding product discipline, parameter category and parameter
!       number in table 4.2.
!       

        use grib2_all_tables_module
        integer idisc,icatg,iparm,locflg
        character*255 fl_nametbl
        character(len=30) :: pname(5)=''
!
        pname(1)='TMP'
        pname(2)='TMAX'
        pname(3)='UGRD'
        pname(4)='VGRD'
        pname(5)='HAIL'
        locflg=0

!    Opens and reads the GRIB2 Code Table 4.2 into an internal memory structure.
!
        fl_nametbl='params_grib2_tbl_new'
        call open_and_read_4dot2( fl_nametbl, ierr )
        if ( ierr .ne. 0 ) then
         print*, 'Couldnt open table file - return code was ',ierr
        endif
!
!   Searches for a specified mnemonic within GRIB2 Code Table 4.2 and 
!   returns the corresponding product discipline, parameter category and parameter number. 
!
       do i=1,5 
          idisc=0
          icatg=0
          iparm=0
          call search_for_4dot2_entry(pname(i),locflg, idisc, icatg, iparm, ierr)
          if ( ierr .ne. 0 ) then
            print*, 'Could not find Mnemonic ', trim(pname(i)),' in grib2 table 4.2 '
            print *,' '
            print *, '    FAILED    '
            print *,' '
            cycle
          end if
          print *,' '
          write(6,'(A,A,3(A,I4),A)') ' Mnemonic = ',trim(pname(i)), &
               ' is discipline= ',idisc,           &
               ' ; category= ',icatg,             &
               ' ; parameter= ',iparm, ' in grib2 table 4.2 '
          print *,' '
          print *, '    PASS    '
          print *,' '
      end do 
      stop
      end
