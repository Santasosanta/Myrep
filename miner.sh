#!/usr/bin/bash

source ./lib/colors.sh
echo -en " ${RED} ╔══╦╗╔╗╔╦═══╦══╦╗╔══╗
                  ║╔═╣║║╠╝╠═╗─╠╗╔╣║║╔═╝
                  ║╚═╣╚╝╠╗║╔╝╔╝║║║╚╝║
                  ╚═╗║╔╗║║╠╝╔╝─║║║╔╗║
                  ╔═╝║║║║║║─╚═╦╝╚╣║║╚═╗
                  ╚══╩╝╚╝╚╩═══╩══╩╝╚══╝"



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
