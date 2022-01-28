ExternalProject_Add(
        eigen3
        GIT_REPOSITORY ${LINK_HEADER}gitlab.com${SEPARATE_FLAG}libeigen/eigen.git
        GIT_TAG 46126273552afe13692929523d34006f54c19719
        CONFIGURE_COMMAND ""
        BUILD_COMMAND ""
        INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory ${EXTERNAL_PREFIX}/eigen3/src/eigen3 ${EXTERNAL_INSTALL_DIR}/include/eigen3
        PREFIX ${EXTERNAL_PREFIX}/eigen3
)
