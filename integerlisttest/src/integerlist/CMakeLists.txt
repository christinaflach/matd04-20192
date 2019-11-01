cmake_minimum_required(VERSION 3.2)
project(integerlist C CXX)

set(SOURCE_FILES
    IntegerList.h
    IntegerList.cpp
)

add_library(integerlist SHARED STATIC ${SOURCE_FILES})

install(TARGETS integerlist DESTINATION ${DIVISIBLE_INSTALL_LIB_DIR})
install(FILES IntegerList.h DESTINATION ${DIVISIBLE_INSTALL_INCLUDE_DIR})
