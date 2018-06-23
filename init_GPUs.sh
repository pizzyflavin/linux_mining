#!/bin/bash

# Set persistence mode and power limits for all GPUs, then set all fans
# to their initial values.

# Set persistence mode on all cards
nvidia-smi -pm 1 

# Set power limit in W
nvidia-smi -pl 110

# Fan Control
nvidia-settings -c :0 -a '[gpu:0]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:1]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:2]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:3]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:4]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:5]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:6]/GPUFanControlState=1' &
nvidia-settings -c :0 -a '[gpu:7]/GPUFanControlState=1' &

wait

# Fan Speed
bash set_fan_speed.sh

