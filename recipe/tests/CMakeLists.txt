cmake_minimum_required(VERSION 3.7)

project(vsghelloworld LANGUAGES CXX)

include(CTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(vsg CONFIG REQUIRED)
find_package(vsgXchange CONFIG REQUIRED)

add_executable(vsghelloworld main.cpp)
target_link_libraries(vsghelloworld PRIVATE vsg::vsg vsgXchange::vsgXchange)
add_test(NAME vsgxchange_consumer COMMAND vsghelloworld)
