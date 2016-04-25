# Install script for directory: /home/dowoncha/Github/Shrodingers/eigen/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Householder"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/StdList"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Sparse"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/PaStiXSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/CholmodSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SVD"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/QtAlignedMalloc"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SPQRSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SparseLU"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/OrderingMethods"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/QR"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Dense"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/StdVector"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Eigenvalues"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SuperLUSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/LeastSquares"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Cholesky"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Core"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SparseCholesky"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/UmfPackSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Geometry"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Jacobi"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Eigen2Support"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SparseQR"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/MetisSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/LU"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/PardisoSupport"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Array"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/StdDeque"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/Eigen"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/SparseCore"
    "/home/dowoncha/Github/Shrodingers/eigen/Eigen/IterativeLinearSolvers"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dowoncha/Github/Shrodingers/eigen/build/Eigen/src/cmake_install.cmake")

endif()

