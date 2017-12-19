#!/usr/bin/env bash

#############################################################################
# Run this script to configure your NVIDIA graphics cards
#
# 
# 18 December, 2017
#
#############################################################################



# Add proprietary graphics repository to sources
#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt-get update

# Install drivers and other packages
#sudo apt-get -y install nvidia-387 

#sudo apt-get -y install cmake libcrypto++-dev libleveldb-dev libjsoncpp-dev libjsonrpccpp-dev libboost-all-dev libgmp-dev libreadline-dev libcurl4-gnutls-dev opencl-headers mesa-common-dev libmicrohttpd-dev
sudo nvidia-xconfig --enable-all-gpus
sudo nvidia-xconfig --cool-bits=12
