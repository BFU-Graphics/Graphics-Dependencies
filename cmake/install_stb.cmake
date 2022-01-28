ExternalProject_Add(
        stb
        GIT_REPOSITORY ${LINK_HEADER}github.com${SEPARATE_FLAG}nothings/stb.git
        GIT_TAG af1a5bc352164740c1cc1354942b1c6b72eacb8a
        CONFIGURE_COMMAND ""
        BUILD_COMMAND ""
        INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory ${EXTERNAL_PREFIX}/stb/src/stb ${EXTERNAL_INSTALL_DIR}/include/stb
        PREFIX ${EXTERNAL_PREFIX}/stb
)
