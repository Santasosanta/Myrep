#!/usr/bin/bash

echo -en " \033[42m _1111__11__11____11__111111_111111_11__11
11_____11__11__1111_____11____11___11_11
_1111__111111____11____11_____11___11
____11_11__11____11___11______11___11_11
_1111__11__11____11__111111_111111_11__11"


sudo apt update
sudo apt upgrade -y

echo"Miner setup"
echo"***************************************************************************"
sudo apt install screen
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
