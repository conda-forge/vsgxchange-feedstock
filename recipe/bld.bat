@echo on

cmake %SRC_DIR% ^
  -G "Ninja" ^
  %CMAKE_ARGS% ^
  -B build ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DvsgXchange_assimp=ON ^
  -DvsgXchange_freetype=ON ^
  -DvsgXchange_openexr=ON ^
  -DvsgXchange_GDAL=OFF ^
  -DvsgXchange_OSG=ON
if errorlevel 1 exit 1

cmake --build build --parallel
if errorlevel 1 exit 1

cmake --install build
if errorlevel 1 exit 1
