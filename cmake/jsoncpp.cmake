
FetchContent_Declare(
  Jsoncpp
  GIT_REPOSITORY https://github.com/open-source-parsers/jsoncpp.git
  GIT_TAG        1.9.7
  OVERRIDE_FIND_PACKAGE
)

set(JSONCPP_WITH_TESTS                 OFF CACHE BOOL "" FORCE)
set(JSONCPP_WITH_POST_BUILD_UNITTEST   OFF CACHE BOOL "" FORCE)
set(BUILD_SHARED_LIBS                  OFF CACHE BOOL "" FORCE)
set(BUILD_STATIC_LIBS                   ON CACHE BOOL "" FORCE)
set(BUILD_OBJECT_LIBS                   ON CACHE BOOL "" FORCE)

set( jsoncpp_SOURCE_DIR  "${FETCHCONTENT_BASE_DIR}/jsoncpp-src/"         )
set( jsoncpp_INCLUDE_DIR "${FETCHCONTENT_BASE_DIR}/jsoncpp-src/include/" )

include_directories( ${jsoncpp_INCLUDE_DIR} )

FetchContent_MakeAvailable(Jsoncpp)

add_library(Jsoncpp_lib ALIAS jsoncpp_static)
