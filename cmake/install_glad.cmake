ExternalProject_Add(
        glad
        GIT_REPOSITORY ${LINK_HEADER}github.com${SEPARATE_FLAG}Dav1dde/glad.git
        GIT_TAG 1ecd45775d96f35170458e6b148eb0708967e402
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DGLAD_INSTALL=TRUE
        PREFIX ${EXTERNAL_PREFIX}/glad
)
