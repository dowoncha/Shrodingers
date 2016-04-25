# Install script for directory: /home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/AdolcForward"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/AlignedVector3"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/ArpackSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/AutoDiff"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/BVH"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/FFT"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/MoreVectorization"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/MPRealSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/NumericalDiff"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/Polynomials"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/Skyline"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/SparseExtra"
    "/home/dowoncha/Github/Shrodingers/eigen/unsupported/Eigen/Splines"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dowoncha/Github/Shrodingers/eigen/build/unsupported/Eigen/src/cmake_install.cmake")

endif()

