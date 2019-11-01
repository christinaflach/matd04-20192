cmake_minimum_required(VERSION 3.2)
project(integerlist_tests)

add_subdirectory(lib/googletest)

include_directories(${DIVISION_HEADERS_DIR})
include_directories(lib/googletest/googletest/include)

set(SOURCE_FILES main.cpp src/integerlist_tests.cpp)

add_executable(integerlist_tests ${SOURCE_FILES})
target_link_libraries(integerlist_tests integerlist gtest)
install(TARGETS integerlist_tests DESTINATION bin)

