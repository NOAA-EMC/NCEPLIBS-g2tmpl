set(lib_name ${PROJECT_NAME})
set(versioned_lib_name ${PROJECT_NAME}_v${PROJECT_VERSION})

file(GLOB fortran_src ${CMAKE_CURRENT_SOURCE_DIR}/*.f)
file(GLOB c_src ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

set_source_files_properties(${c_src} PROPERTIES COMPILE_OPTIONS "${c_flags}")
set_source_files_properties(${fortran_src} PROPERTIES COMPILE_OPTIONS "${fortran_flags}")

add_library(${lib_name} STATIC ${fortran_src} ${c_src})

set_target_properties(${lib_name} PROPERTIES OUTPUT_NAME "${versioned_lib_name}")

target_compile_definitions(${lib_name} PRIVATE ${defs})

set(module_dir "${CMAKE_CURRENT_BINARY_DIR}/include")
set_target_properties(${lib_name} PROPERTIES Fortran_MODULE_DIRECTORY "${module_dir}")

target_include_directories(${lib_name} PUBLIC
  $<BUILD_INTERFACE:${module_dir}>
  $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include}>)

install(TARGETS ${lib_name}
  EXPORT ${PROJECT_NAME}-config
  RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
  ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib) 
install(FILES params_grib2_tbl_new DESTINATION ${CMAKE_INSTALL_PREFIX}/share)
install(DIRECTORY ${module_dir} DESTINATION ${CMAKE_INSTALL_PREFIX})
install(EXPORT ${PROJECT_NAME}-config DESTINATION ${CMAKE_INSTALL_PREFIX})
