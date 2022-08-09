cmake_minimum_required(VERSION 3.0.0)
project(home_auto VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(home_auto home_auto.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
