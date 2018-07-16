#!/usr/bin/env sh

FAN_LOW=50
FAN_MED=75
FAN_HIGH=95

nvidia-settings -c :0 -a "[fan:0]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:1]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:2]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:3]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:4]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:5]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:6]/GPUTargetFanSpeed=$FAN_MED" &
nvidia-settings -c :0 -a "[fan:7]/GPUTargetFanSpeed=$FAN_MED" &

wait

echo ""
echo "Fan speeds set"
echo ""

