#!/bin/bash
emcc                                                            \
    --std=c++11                                                 \
    --bind exampleClass.cpp                                     \
    -s WASM=1                                                   \
    -s USE_SDL=2                                                \
    -s ASSERTIONS=1                                             \
    -s MODULARIZE=1                                             \
    -O2                                                         \
    -s TOTAL_MEMORY=134217728                                   \
    -o exampleClass.bc                                          \

 emcc                                                           \
    --bind                                                      \
    -s WASM=1                                                   \
    -s USE_SDL=2                                                \
    -s ALLOW_MEMORY_GROWTH=1                                    \
    --no-heap-copy                                              \
    -O2                                                         \
    -s FULL_ES2=1                                               \
    -s DISABLE_EXCEPTION_CATCHING=0                             \
    -s ASSERTIONS=2                                             \
    -s MODULARIZE=1                                             \
    -s TOTAL_MEMORY=134217728                                   \
    exampleClass.bc                                             \
    -o exampleClass.js                                          \
