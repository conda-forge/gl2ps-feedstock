@echo on

cmake -GNinja ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_DISABLE_FIND_PACKAGE_LATEX=ON ^
    %CMAKE_ARGS% ^
    -S source -B build
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1
