#!/usr/bin/env bash

##############################################################################
#
#
#
#
##############################################################################

# Get CUDA Toolkit from NVIDIA
#wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux

# Install dependencies
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

sudo apt-get install -y ocl-icd-opencl-dev
sudo apt-get install -y libmicrohttpd-dev libssl-dev cmake build-essential
sudo apt-get install -y automake libtool make gcc gcc4-9 libjansson-dev
sudo apt-get upgrade -y

sudo apt-get purge nvidia-* -y
sudo apt-get purge nvidia-cuda* -y
sudo update-initramfs -u
sudo apt-get install -y libopenblas-dev liblapack-dev
sudo apt-get install -y linux-image-generic linux-image-extra-virtual
sudo apt-get install -y linux-source linux-headers-generic
sudo apt-get install -y nvidia-common nvidia-prime nvidia-settings
sudo apt-get install -y nvidia-375

sudo apt-get install -y libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev
sudo apt-get install -y python-pip python-dev python-numpy python-scipy
sudo apt-get install -y apt-file && apt-file update

# Install Cuda Toolkit
sudo chmod +x ~/Downloads/cuda_9.1.85_387.26_linux
sudo ~/Downloads/cuda_9.1.85_387.26_linux --driver --silent
sudo ~/Downloads/cuda_9.1.85_387.26_linux --toolkit --silent
sudo ~/Downloads/cuda_9.1.85_387.26_linux --samples --silent

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install cpp-ethereum
sudo apt-get -y install software-properties-common

echo
echo "GPU Driver installation is now complete"
echo
echo "Run nvidia-xconfig --enable-all-gpus and nvidia-xconfig --cool-bits=12"
echo "Then reboot the system"
echo "(or run sudo systemctl restart lightdm.service)"
