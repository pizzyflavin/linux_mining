#!/usr/bin/env bash

##############################################################################
#
#
#
#
##############################################################################

# Get CUDA Toolkit from NVIDIA
CUDA_FILE=cuda_9.1.85_387.26_linux
if [ ! -f $CUDA_FILE ]; then
    wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/$CUDA_FILE -P ~/Downloads
fi

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

sudo apt-get -y purge nvidia-*
sudo apt-get -y purge nvidia-cuda*
sudo update-initramfs -u
sudo apt-get -y install libopenblas-dev liblapack-dev
sudo apt-get -y install linux-image-generic linux-image-extra-virtual
sudo apt-get -y install linux-source linux-headers-generic
sudo apt-get -y install nvidia-common nvidia-prime nvidia-settings
sudo apt-get -y install nvidia-375

sudo apt-get -y install libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev
sudo apt-get -y install python-pip python-dev python-numpy python-scipy
sudo apt-get -y install apt-file && apt-file update

# Install Cuda Toolkit
sudo chmod +x ~/Downloads/$CUDA_FILE
sudo ~/Downloads/$CUDA_FILE --driver --silent
sudo ~/Downloads/$CUDA_FILE --toolkit --silent
sudo ~/Downloads/$CUDA_FILE --samples --silent

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install cpp-ethereum
sudo apt-get -y install software-properties-common

sudo nvidia-xconfig --enable-all-gpus
sudo nvidia-xconfig --cool-bits=28
echo
echo "GPU Driver installation is now complete"
echo
echo "Restart or run sudo systemctl restart lightdm.service"
