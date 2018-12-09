cmake_minimum_required(VERSION 3.0.2 FATAL_ERROR)

project(connect VERSION 0.1.0)

add_executable(connect connect.c)

if(MSVC)
    target_link_libraries(connect PRIVATE wsock32 advapi32)
elseif(APPLE)
    target_link_libraries(connect PRIVATE resolv)
endif()
