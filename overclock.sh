#!/usr/bin/env bash

# Apply Memory OC
nvidia-settings -c :0 -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:2]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:3]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:4]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:5]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:6]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:7]/GPUMemoryTransferRateOffset[3]=700'

# Apply Graphics OC
nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:1]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:2]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:3]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:4]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:5]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:6]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:7]/GPUGraphicsClockOffset[3]=200'
