#!/usr/bin/env bash

##############################################################################
#
#
#
#
##############################################################################

# Get CUDA Toolkit from NVIDIA
#wget -q -O ??WHAT IS TEH FCKING SITE?

# Install dependencies
sudo add-apt-repository main
sudo add-apt-repository universe0
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

sudo apt-get install -y ocl-icd-opencl-dev
sudo apt-get install -y libmicrohttpd-dev libssl-dev cmake build-essential
sudo apt-get install -y automake libtool make gcc gcc4-9 libjansson-dev
sudo apt-get upgrade

sudo apt-get purge nvidia-*
sudo apt-get purge nvidia-cuda*
sudo update-initramfs -u
sudo apt-get install libopenblas-dev liblapack-dev
sudo apt-get install -y linux-image-generic linux-image-extra-virtual
sudo apt-get install -y linux-source linux-headers-generic
sudo apt-get install -y nvidia-common nvidia-prime nvidia-settings
sudo apt-get install -y nvidia-375

sudo apt-get install -y libglu1-mesa libxi-dev libxmu-dev libglue1-mesa-dev
sudo apt-get install -y python-pip python-dev python-numpy python-scipy
sudo apt-get -y install apt-file && apt-file update

# Install Cuda Toolkit
sudo chmod +x cuda_9.1.85_387.26_linux.run
./cuda-repo-ubuntu1604_9.1.85-1_amd64.deb --driver --silent
./cuda-repo-ubuntu1604_9.1.85-1_amd64.deb --toolkit --silent
./cuda-repo-ubuntu1604_9.1.85-1_amd64.deb --samples --silent

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install cpp-ethereum
sudo apt-get -y install software-properties-common
sudo apt-get -y install ethereum
