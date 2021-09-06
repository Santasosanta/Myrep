#!/bin/bash

mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)