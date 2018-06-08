#!/usr/bin/env sh

FANSPEED=80

nvidia-settings -c :0 -a "[fan:0]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:1]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:1]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:2]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:3]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:4]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:5]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:6]/GPUTargetFanSpeed=$FANSPEED"
nvidia-settings -c :0 -a "[fan:7]/GPUTargetFanSpeed=$FANSPEED"
