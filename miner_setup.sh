#!/usr/bin/env bash

# Download v10.0 of Claymore and unpack it
cd ~/Downloads
wget https://github.com/nanopool/Claymore-Dual-Miner/releases/download/v10.0/Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v10.0.-.LINUX.tar.gz
sudo mkdir /usr/local/claymore10
sudo tar -xvf Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v10.0.-.LINUX.tar.gz -C /usr/local/claymore10

# Create mining script
cd /usr/local/claymore10
sudo chmod u+s ethdcrminer64

echo "Now modify the mine.sh script and add executable permissions"
