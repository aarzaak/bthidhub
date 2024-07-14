#!/bin/bash

cd $HOME

sudo apt remove linux-*v8 linux-*v7l linux-*v7 -y
sudo apt update
sudo apt upgrade -y
sudo apt install git -y

git clone https://github.com/aarzaak/bthidhub
cd $HOME/bthidhub/install/on_rpi
chmod u+x ./on_pi_setup.sh
./on_pi_setup.sh
