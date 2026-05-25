
FetchContent_Declare(
  yaml-cpp
  GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
  GIT_TAG        yaml-cpp-0.9.0
  OVERRIDE_FIND_PACKAGE
)

set(YAML_BUILD_SHARED_LIBS             OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(yaml-cpp)

add_library(Yamlcpp_lib ALIAS yaml-cpp)