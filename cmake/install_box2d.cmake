ExternalProject_Add(
        box2d
        GIT_REPOSITORY ${LINK_HEADER}github.com${SEPARATE_FLAG}erincatto/box2d.git
        GIT_TAG 9dc24a6fd4f32442c4bcf80791de47a0a7d25afb
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        PREFIX ${EXTERNAL_PREFIX}/box2d
)