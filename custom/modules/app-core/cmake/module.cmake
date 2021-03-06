# module config
set(MODULE_NAME "app-core")

# files
nativium_add_header_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/core/*.hpp")
nativium_add_header_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/core/*.hpp")

nativium_add_source_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/core/*.cpp")
nativium_add_source_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/core/*.cpp")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # files
    nativium_add_header_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.hpp")
    nativium_add_source_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.cpp")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # files
    nativium_add_header_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.h")
    nativium_add_source_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.mm")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc")
elseif(NATIVIUM_TARGET STREQUAL "wasm")
    # files
    nativium_add_header_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/wasm/*.hpp")
    nativium_add_source_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/wasm/*.cpp")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/wasm")
endif()

# imgui
nativium_add_header_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_sdl.h")
nativium_add_source_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_sdl.cpp")

# nativium_add_header_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_opengl3.h")
# nativium_add_source_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_opengl3.cpp")

nativium_add_header_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_metal.h")
nativium_add_source_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_metal.mm")

nativium_add_header_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_osx.h")
nativium_add_source_files_g("${CONAN_SRC_DIRS_IMGUI}/imgui_impl_osx.mm")

nativium_add_search_path("${CONAN_SRC_DIRS_IMGUI}")
