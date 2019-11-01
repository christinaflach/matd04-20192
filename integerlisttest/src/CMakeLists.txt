cmake_minimum_required(VERSION 3.2)
project(integerlisttest)

add_subdirectory(integerlist)
set(SOURCE_FILES main.cpp)

add_executable(integerlisttest ${SOURCE_FILES})
target_link_libraries(integerlisttest integerlist)
install(TARGETS integerlisttest DESTINATION ${DIVISIBLE_INSTALL_BIN_DIR})
