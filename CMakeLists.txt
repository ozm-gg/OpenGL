cmake_minimum_required(VERSION 3.31)
project(OpenGL)

set(CMAKE_CXX_STANDARD 20)

add_executable(OpenGL main.cpp
        Shader.cpp
        Shader.h)

set(GLFW_DIR "C:/Libs/GLFW")
set(GLAD_DIR "C:/Libs/GLAD")

include_directories(${GLFW_DIR}/include)
include_directories(${GLAD_DIR}/include)

target_link_directories(${PROJECT_NAME} PUBLIC ${GLFW_DIR}/lib-mingw-w64)

add_library(glad STATIC ${GLAD_DIR}/src/glad.c)

target_link_libraries(${PROJECT_NAME} glad)

target_link_libraries(${PROJECT_NAME} glfw3)
