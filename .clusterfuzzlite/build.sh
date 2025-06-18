#!/bin/bash -e

# build fuzzers
pushd fuzzing
cmake -H. -B build
make -C build
mv ./build/fuzz_* "${OUT}"
popd
