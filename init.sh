#!/bin/sh

# Initialization script for NVIDIA mining setups on Linux

# Start logging GPU data (This is the same info that is output to the terminal
# when the miner is run)
bash monitor_GPUs.sh

# Set power limits and fan settings.
sudo bash init_GPUs.sh

# Apply overclocking to cards
bash overclock.sh

