option(GLFW_BUILD_DOCS OFF)
option(GLFW_BUILD_EXAMPLES OFF)
option(GLFW_BUILD_TESTS OFF)
ExternalProject_Add(
        glfw
        GIT_REPOSITORY ${LINK_HEADER}github.com/glfw/glfw.git
        GIT_TAG df8d7bc892937a8b0f7c604c92a9f64f383cf48c
        CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_DIR}
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        PREFIX ${EXTERNAL_PREFIX}/glfw
)