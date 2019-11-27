cmake_minimum_required(VERSION 3.2)
project(integerheap C CXX)

set(SOURCE_FILES
    IntegerHeap.h
    IntegerHeap.cpp
)

add_library(integerheap SHARED STATIC ${SOURCE_FILES})

install(TARGETS integerheap DESTINATION ${DIVISIBLE_INSTALL_LIB_DIR})
install(FILES IntegerHeap.h DESTINATION ${DIVISIBLE_INSTALL_INCLUDE_DIR})
