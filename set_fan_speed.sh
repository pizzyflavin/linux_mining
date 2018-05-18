#!/usr/bin/env sh

nvidia-settings -c :0 -a '[fan:0]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:1]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:2]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:3]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:4]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:5]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:6]/GPUTargetFanSpeed=75'
nvidia-settings -c :0 -a '[fan:7]/GPUTargetFanSpeed=75'
