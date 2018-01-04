#!/bin/bash

# Set persistence mode and power limits for all GPUs, then set all fans
# to their initial values.

# Set persistence mode on all cards
nvidia-smi -pm 1 

# Set power limit in W
nvidia-smi -pl 110

# Fan Control
nvidia-settings -c :0 -a '[gpu:0]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:1]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:2]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:3]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:4]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:5]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:6]/GPUFanControlState=1'
nvidia-settings -c :0 -a '[gpu:7]/GPUFanControlState=1'

# Fan Speed
nvidia-settings -c :0 -a '[fan:0]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:1]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:2]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:3]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:4]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:5]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:6]/GPUTargetFanSpeed=60'
nvidia-settings -c :0 -a '[fan:7]/GPUTargetFanSpeed=60'
