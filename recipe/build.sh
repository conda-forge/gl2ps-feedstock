#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cmake -S ./source -B build -G Ninja \
    -DCMAKE_DISABLE_FIND_PACKAGE_LATEX=ON \
    ${CMAKE_ARGS} -LAH
cmake --build build --target install -j${CPU_COUNT}
