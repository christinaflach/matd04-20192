cmake_minimum_required(VERSION 3.2)
project(integerheaptests)

add_subdirectory(integerheap)
set(SOURCE_FILES main.cpp)

add_executable(integerheaptests ${SOURCE_FILES})
target_link_libraries(integerheaptests integerheap)
install(TARGETS integerheaptests DESTINATION ${DIVISIBLE_INSTALL_BIN_DIR})
