#!/usr/bin/env bash

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DALSOFT_EXAMPLES=OFF \
-DALSOFT_TESTS=OFF \
-DALSOFT_UTILS=OFF \
-DALSOFT_CONFIG=OFF \
-DALSOFT_HRTF_DEFS=OFF \
-DALSOFT_AMBDEC_PRESETS=OFF \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-G "Unix Makefiles"

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
