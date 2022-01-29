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
option(INSTALL_GLFW "INSTALL GLFW" ON) # All OK
option(INSTALL_GLAD "INSTALL GLAD" ON) # All OK with global proxy
option(INSTALL_GLM "INSTALL GLM" ON) # All OK
option(INSTALL_ASSIMP "INSTALL ASSIMP" ON) # All OK
option(INSTALL_STB "INSTALL STB" ON) # All OK
option(INSTALL_LIBIGL "INSTALL LIBIGL" OFF) # All OK but arm-arch(M1 Mac)
option(INSTALL_BOX2D "INSTALL BOX2D" ON) # All OK
option(INSTALL_EIGEN "INSTALL EIGEN" ON) # All OK
option(INSTALL_DISCREGRID "INSTALL DISCREGRID" ON) # Win OK, [Important] make sure EIGEN was installed ahead.
option(INSTALL_OPENCV "INSTALL OPENCV" ON) # ALL OK

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

if (INSTALL_BOX2D)
    include(cmake/install_box2d.cmake)
endif ()

if (INSTALL_EIGEN)
    include(cmake/install_eigen.cmake)
endif ()

if (INSTALL_DISCREGRID)
    include(cmake/install_Discregrid.cmake)
endif ()

if (INSTALL_OPENCV)
    include(cmake/install_opencv.cmake)
endif ()