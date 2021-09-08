#!/usr/bin/bash

echo"_$$$$__$$__$$____$$__$$$$$$_$$$$$$_$$__$$"
echo"$$_____$$__$$__$$$$_____$$____$$___$$_$$"
echo"_$$$$__$$$$$$____$$____$$_____$$___$$$$"
echo"____$$_$$__$$____$$___$$______$$___$$_$$"
echo"_$$$$__$$__$$____$$__$$$$$$_$$$$$$_$$__$$"


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
