ExternalProject_Add(
        Discregrid
        GIT_REPOSITORY ${LINK_HEADER}github.com${SEPARATE_FLAG}InteractiveComputerGraphics/Discregrid.git
        GIT_TAG 426d322a3b4169f6062f7369db793e5517fe1fa0
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        PREFIX ${EXTERNAL_PREFIX}/Discregrid
)