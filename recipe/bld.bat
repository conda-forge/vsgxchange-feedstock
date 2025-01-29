@echo on

cmake %SRC_DIR% ^
  %CMAKE_ARGS% ^
  -B build ^
  -DBUILD_SHARED_LIBS=ON ^
  -DvsgXchange_assimp=ON ^
  -DvsgXchange_freetype=ON ^
  -DvsgXchange_openexr=ON ^
  -DvsgXchange_OSG=ON
if errorlevel 1 exit 1

cmake --build build --parallel --config Release
if errorlevel 1 exit 1

cmake --install build --config Release
if errorlevel 1 exit 1
