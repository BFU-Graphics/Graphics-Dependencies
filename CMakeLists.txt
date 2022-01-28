cmake_minimum_required(VERSION 3.15)
project(Graphics-Dependencies)
option(USE_GIT_URL "" OFF)
if (USE_GIT_URL)
    set(LINK_HEADER "git@")
    set(SEPARATE_FLAG ":")
else(USE_GIT_URL)
    set(LINK_HEADER "https://")
    set(SEPARATE_FLAG "/")
endif (USE_GIT_URL)

if (NOT DEFINED EXTERNAL_INSTALL_DIR)
    set(EXTERNAL_INSTALL_DIR ${CMAKE_SOURCE_DIR}/install)
endif ()
set(EXTERNAL_PREFIX ${CMAKE_SOURCE_DIR}/external)

# Options field
option(INSTALL_GLFW "INSTALL GLFW" ON)
option(INSTALL_GLAD "INSTALL GLAD" ON)
option(INSTALL_GLM "INSTALL GLM" ON)
option(INSTALL_ASSIMP "INSTALL ASSIMP" ON)
option(INSTALL_STB "INSTALL STB" ON)
option(INSTALL_LIBIGL "INSTALL LIBIGL" ON)

# Installing Field
include(ExternalProject)

if (INSTALL_GLFW)
    include(cmake/install_glfw.cmake)
endif ()

if (INSTALL_GLAD)
    include(cmake/install_glad.cmake)
endif ()

if (INSTALL_GLM)
    include(cmake/install_glm.cmake)
endif ()

if (INSTALL_ASSIMP)
    include(cmake/install_assimp.cmake)
endif ()

if (INSTALL_STB)
    include(cmake/install_stb.cmake)
endif ()

if (INSTALL_LIBIGL)
    include(cmake/install_libigl.cmake)
endif ()
