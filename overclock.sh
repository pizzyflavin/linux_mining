#!/usr/bin/env bash

# Set persistence mode on all cards
nvidia-smi -i 0 -pm 1
nvidia-smi -i 1 -pm 1
nvidia-smi -i 2 -pm 1
nvidia-smi -i 3 -pm 1
nvidia-smi -i 4 -pm 1
nvidia-smi -i 5 -pm 1

# Set power limit in W
nvidia-smi -i 0 -pl 145
nvidia-smi -i 1 -pl 145
nvidia-smi -i 2 -pl 145
nvidia-smi -i 3 -pl 145
nvidia-smi -i 4 -pl 145
nvidia-smi -i 5 -pl 145

# Apply Memory OC
nvidia-settings -c :0 -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:2]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:3]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:4]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:5]/GPUMemoryTransferRateOffset[3]=700'

# Apply Graphics OC
nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:1]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:2]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:3]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:4]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:5]/GPUGraphicsClockOffset[3]=200'
