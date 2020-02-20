cmake_minimum_required(VERSION 3.15)

file(STRINGS "VERSION" pVersion)

project(
  g2tmpl
  VERSION ${pVersion}
  LANGUAGES C Fortran)

if(NOT CMAKE_BUILD_TYPE MATCHES "^(Debug|Release|RelWithDebInfo|MinSizeRel)$")
  message(STATUS "Setting build type to 'Release' as none was specified.")
  set(CMAKE_BUILD_TYPE
      "Release"
      CACHE STRING "Choose the type of build." FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
                                               "MinSizeRel" "RelWithDebInfo")
endif()

if(NOT CMAKE_C_COMPILER_ID MATCHES "^(Intel|GNU|Clang|AppleClang|PGI)$")
  message(WARNING "Compiler not officially supported: ${CMAKE_C_COMPILER_ID}")
endif()

add_compile_definitions(UNDERSCORE)
if(APPLE)
  add_compile_definitions(APPLE)
elseif(UNIX)
  add_compile_definitions(LINUX)
endif()

if(CMAKE_C_COMPILER_ID MATCHES "^(Intel)$")
  set(CMAKE_C_FLAGS "-g")
  set(CMAKE_C_FLAGS_RELEASE "-O3")
  set(CMAKE_Fortran_FLAGS "-g -free")
  set(CMAKE_Fortran_FLAGS_RELEASE "-O3")
elseif(CMAKE_C_COMPILER_ID MATCHES "^(GNU|Clang|AppleClang)$")
  set(CMAKE_C_FLAGS "-g")
  set(CMAKE_C_FLAGS_RELEASE "-O3")
  set(CMAKE_C_FLAGS_DEBUG "-ggdb -Wall")
  set(CMAKE_Fortran_FLAGS "-g -ffree-form -fbacktrace -funroll-loops")
  set(CMAKE_Fortran_FLAGS_RELEASE "-O3")
  set(CMAKE_Fortran_FLAGS_DEBUG "-ggdb -Wall")
elseif(CMAKE_C_COMPILER_ID MATCHES "^(PGI)$")
  set(CMAKE_C_FLAGS "-g -fast")
  set(CMAKE_Fortran_FLAGS "-g -fast")
endif()

set(fortran_src src/g2sec4_temp11.f src/g2sec4_temp1.f
                src/grib2_all_tables_module.f src/g2sec4_temp12.f src/gdtsec3.f)
set(c_src src/process_4dot2.c)

set(lib_name ${PROJECT_NAME}_d)
set(versioned_lib_name ${PROJECT_NAME}_v${PROJECT_VERSION}_d)
set(module_dir ${CMAKE_CURRENT_BINARY_DIR}/include_d)

add_library(${lib_name} STATIC ${fortran_src} ${c_src})
set_target_properties(${lib_name} PROPERTIES OUTPUT_NAME ${versioned_lib_name})
set_target_properties(${lib_name} PROPERTIES Fortran_MODULE_DIRECTORY
                                             ${module_dir})
target_include_directories(
  ${lib_name} PUBLIC $<BUILD_INTERFACE:${module_dir}>
                     $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include_d>)

install(
  TARGETS ${lib_name}
  EXPORT ${PROJECT_NAME}-config
  RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
  ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(DIRECTORY ${module_dir} DESTINATION ${CMAKE_INSTALL_PREFIX})

install(EXPORT ${PROJECT_NAME}-config
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/${PROJECT_NAME})
