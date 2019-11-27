cmake_minimum_required(VERSION 3.2)
project(integerheap_tests)

add_subdirectory(lib/googletest)

include_directories(${DIVISION_HEADERS_DIR})
include_directories(lib/googletest/googletest/include)

set(SOURCE_FILES main.cpp src/integerheap_tests.cpp)

add_executable(integerheap_tests ${SOURCE_FILES})
target_link_libraries(integerheap_tests integerheap gtest)
install(TARGETS integerheap_tests DESTINATION bin)

