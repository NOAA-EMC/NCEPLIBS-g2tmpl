# This is the CMake file for the tests directory of the
# NCEPLIBS-g2tmpl project.
#
# Kyle Gerheiser, Ed Hartnett

# Run each test.
function(g2tmpl_test name)
  add_executable(${name} ${name}.F90)
  add_dependencies(${name} g2tmpl)
  target_link_libraries(${name} PRIVATE g2tmpl)
  add_test(NAME ${name} COMMAND ${name})
endfunction()

# The tests.
g2tmpl_test(test_g2tmpl_pdt4_1)
g2tmpl_test(test_g2tmpl_pdt4_8)
g2tmpl_test(test_g2tmpl_pdt4_9)
g2tmpl_test(test_g2tmpl_pdt4_11)
g2tmpl_test(test_g2tmpl_pdt4_12)
g2tmpl_test(test_g2tmpl_pdt4_46)
g2tmpl_test(test_all_key_tables)
g2tmpl_test(test_all_table_other)

 
