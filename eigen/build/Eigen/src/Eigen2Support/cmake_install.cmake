# Install script for directory: /home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen/src/Eigen2Support" TYPE FILE FILES
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/VectorBlock.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Block.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Lazy.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Macros.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Cwise.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/LU.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Meta.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Memory.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/TriangularSolver.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/LeastSquares.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/QR.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/MathFunctions.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/Minor.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/SVD.h"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/src/Eigen2Support/CwiseOperators.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dowoncha/Github/Shrodingers/eigen/build/Eigen/src/Eigen2Support/Geometry/cmake_install.cmake")

endif()

