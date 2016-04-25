cmake_minimum_required(VERSION 3.2)
project(Shrodingers)

add_definitions("-std=c++11")

#########################################################
# FIND OPENGL
#########################################################

include_directories(eigen)
add_executable(shrodinger Shrodingers.cpp)
