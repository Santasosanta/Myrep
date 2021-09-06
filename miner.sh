#!/bin/bash

git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
