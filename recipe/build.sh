#!/bin/bash

set -exo pipefail

cmake $SRC_DIR \
  ${CMAKE_ARGS} \
  -G Ninja \
  -B build \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DvsgXchange_assimp=ON \
  -DvsgXchange_freetype=ON \
  -DvsgXchange_GDAL=ON \
  -DvsgXchange_openexr=ON

cmake --build build --parallel

cmake --install build --strip
