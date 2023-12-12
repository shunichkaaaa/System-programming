cmake_minimum_required(VERSION 3.10)

project(CalculatorProject)

# Add source files
set(SOURCES
   calculator.cpp
   compare.cpp
)

# Add compilation flags (enable all warning messages, specife that warnings should be treated as errors)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror")

add_library(Calculator ${SOURCES})

