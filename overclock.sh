#!/usr/bin/env bash

# Set persistence mode on all cards
nvidia-smi -i 0 -pm 1
nvidia-smi -i 1 -pm 1
nvidia-smi -i 2 -pm 1
nvidia-smi -i 3 -pm 1
nvidia-smi -i 4 -pm 1
nvidia-smi -i 5 -pm 1
nvidia-smi -i 6 -pm 1
nvidia-smi -i 7 -pm 1

# Set power limit in W
nvidia-smi -i 0 -pl 145
nvidia-smi -i 1 -pl 145
nvidia-smi -i 2 -pl 145
nvidia-smi -i 3 -pl 145
nvidia-smi -i 4 -pl 145
nvidia-smi -i 5 -pl 145
nvidia-smi -i 6 -pl 145
nvidia-smi -i 7 -pl 145

# Apply Memory OC
nvidia-settings -c :0 -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:2]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:3]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:4]/GPUMemoryTransferRateOffset[3]=700'
nvidia-settings -c :0 -a '[gpu:5]/GPUMemoryTransferRateOffset[3]=700'
#nvidia-settings -c :0 -a '[gpu:6]/GPUMemoryTransferRateOffset[3]=700'
#nvidia-settings -c :0 -a '[gpu:7]/GPUMemoryTransferRateOffset[3]=700'

# Apply Graphics OC
nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:1]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:2]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:3]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:4]/GPUGraphicsClockOffset[3]=200'
nvidia-settings -c :0 -a '[gpu:5]/GPUGraphicsClockOffset[3]=200'
#nvidia-settings -c :0 -a '[gpu:6]/GPUGraphicsClockOffset[3]=200'
#nvidia-settings -c :0 -a '[gpu:7]/GPUGraphicsClockOffset[3]=200'

# Fan Control
nvidia-settings -c :0 -a '[gpu:0]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:1]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:2]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:3]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:4]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:5]/GPUFanControlState=1'
#nvidia-settings -c :0 -a '[gpu:6]/GPUFanControlState=1'
#nvidia-settings -c :0 -a '[gpu:7]/GPUFanControlState=1'

# Fan Speed
nvidia-settings -c :0 -a '[fan:0]/GPUTargetFanSpeed=100'
nvidia-settings -c :0 -a '[fan:1]/GPUTargetFanSpeed=100'
nvidia-settings -c :0 -a '[fan:2]/GPUTargetFanSpeed=100'
nvidia-settings -c :0 -a '[fan:3]/GPUTargetFanSpeed=100'
nvidia-settings -c :0 -a '[fan:4]/GPUTargetFanSpeed=100'
nvidia-settings -c :0 -a '[fan:5]/GPUTargetFanSpeed=100'
#nvidia-settings -c :0 -a '[fan:6]/GPUTargetFanSpeed=100'
#nvidia-settings -c :0 -a '[fan:7]/GPUTargetFanSpeed=100'
