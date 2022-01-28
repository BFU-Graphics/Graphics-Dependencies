ExternalProject_Add(
        libigl
        GIT_REPOSITORY ${LINK_HEADER}github.com${SEPARATE_FLAG}libigl/libigl.git
        GIT_TAG 79dc4f683877a8bb4eaf63620437a5454f6c47c1
        CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_DIR}
            -DLIBIGL_USE_STATIC_LIBRARY=ON
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        PREFIX ${EXTERNAL_PREFIX}/libigl
)