FetchContent_Declare(
  trantor
  GIT_REPOSITORY https://github.com/fe-dagostino/trantor.git
  GIT_TAG        master
  OVERRIDE_FIND_PACKAGE
)

set(BUILD_DOC         OFF CACHE BOOL   "Build Doxygen documentation"            FORCE)
set(BUILD_C-ARES       ON CACHE BOOL   "Build C-ARES"                           FORCE)
set(BUILD_TESTING     OFF CACHE BOOL   "Build tests"                            FORCE)
set(BUILD_SHARED_LIBS OFF CACHE BOOL   "Build trantor as a shared lib"          FORCE)
set(TRANTOR_USE_TLS   ""  CACHE STRING 
                      "TLS provider for trantor. Valid options are 'openssl', 'botan', 'none' or '' (auto-detect)" FORCE
   )
set(USE_SPDLOG        OFF CACHE BOOL   "Allow using the spdlog logging library" FORCE)

set( Trantor_DIR  "${FETCHCONTENT_BASE_DIR}/trantor-build/CMakeFiles"         )

FetchContent_MakeAvailable(trantor)

add_library(Trantor::Trantor ALIAS trantor)