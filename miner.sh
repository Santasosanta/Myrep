#!/usr/bin/bash

_$$$$__$$__$$____$$__$$$$$$_$$$$$$_$$__$$
$$_____$$__$$__$$$$_____$$____$$___$$_$$
_$$$$__$$$$$$____$$____$$_____$$___$$$$
____$$_$$__$$____$$___$$______$$___$$_$$
_$$$$__$$__$$____$$__$$$$$$_$$$$$$_$$__$$

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
