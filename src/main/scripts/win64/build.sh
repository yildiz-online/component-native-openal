#!/usr/bin/env bash

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install
r1=$?

make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R utils
rm config.h
rm openal.pc
rm OpenALConfig.cmake
rm version.h

exit ${r1}
