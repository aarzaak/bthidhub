#!/bin/bash

sudo apt remove linux-*v8 linux-*v7l linux-*v7 -y

sudo apt update
sudo apt upgrade -y

sudo apt-key export 90FDDD2E | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/raspberrypi-debian-armhf.gpg
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo mv /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo cp bthidhub/install/sources.list /etc/apt/sources.list
sudo cp bthidhub/install/raspi.list /etc/apt/sources.list.d/raspi.list

cd on_rpi
./on_pi_setup.sh
