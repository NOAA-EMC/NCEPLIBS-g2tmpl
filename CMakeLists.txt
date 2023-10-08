# This is the main CMake file for the NCEPLIBS-g2tmpl project.
#
# Kyle Gerheiser, Mark Potts, Ed Hartnett

cmake_minimum_required(VERSION 3.15)

file(STRINGS "VERSION" pVersion)

project(
  g2tmpl
  VERSION ${pVersion}
  LANGUAGES C Fortran)

include(GNUInstallDirs)

# Handle user build options.
option(ENABLE_DOCS "Enable generation of doxygen-based documentation." OFF)
option(BUILD_SHARED_LIBS "Build shared libraries" OFF)

if(NOT CMAKE_BUILD_TYPE MATCHES "^(Debug|Release|RelWithDebInfo|MinSizeRel)$")
  message(STATUS "Setting build type to 'Release' as none was specified.")
  set(CMAKE_BUILD_TYPE
      "Release"
      CACHE STRING "Choose the type of build." FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
    "MinSizeRel" "RelWithDebInfo")
endif()

# If the user wants documentation, find doxygen and add docs dir.
if(ENABLE_DOCS)
  find_package(Doxygen REQUIRED)
  add_subdirectory(docs)  
endif()

add_subdirectory(src)

# Add unit tests to the build.
include(CTest)
if(BUILD_TESTING)
  add_subdirectory(tests)
endif()

