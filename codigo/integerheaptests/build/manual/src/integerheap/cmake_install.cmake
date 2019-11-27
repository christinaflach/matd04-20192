# Install script for directory: /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/lib/libintegerheap.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/lib" TYPE STATIC_LIBRARY FILES "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap/libintegerheap.a")
  if(EXISTS "$ENV{DESTDIR}/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/lib/libintegerheap.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/lib/libintegerheap.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/lib/libintegerheap.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/include/IntegerHeap.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/include" TYPE FILE FILES "/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap/IntegerHeap.h")
endif()

