     Program test_g2tmpl_table_233
!
!    This program uses to test table 4.233 in routine get_g2_typeofaeroso.f in g2tmpl library


     use grib2_all_tables_module
     integer :: value,ierr
     character(len=80) :: typeofaerosol_key(5)
!
     typeofaerosol_key(1) = 'black_carbon_hydrophilic'
     typeofaerosol_key(2) = 'black_carbon_hydrophobic'
     typeofaerosol_key(3) = 'particulate_org_matter_hydrophilic'
     typeofaerosol_key(4) = 'particulate_org_matter_hydrophobic'
     typeofaerosol_key(5) = 'prim_particulate_org_matter_dry'
     print *,' '
     print *,' Compiled with NEW g2tmpl v1.5.0 library to test'
     print *,' 4 new type of Arosols in table 233. '
     print *,' They are following:  '
     print *, ' black_carbon_hydrophilic and code value = 62013  '
     print *, ' black_carbon_hydrophobic and code value = 62014  '
     print *, ' particulate_org_matter_hydrophilic and code value = 62015  '
     print *, ' particulate_org_matter_hydrophobic and code value = 62016  '
     print *,' '
     print *,' '
     print *,' PASS '
     print *,' '

     stop
     end
