#!/usr/bin/env bash

DEFAULT_DELAY=0

if [ "x$1" = "x" -o "x$1" = 'xnone' ]; then
    DELAY=$DEFAULT_DELAY
else
    DELAY=$1
fi
sleep $DELAY

#========================
# Miner Settings
#========================
MINER='miners/dstm/zm_0.6/zm'

#=========================
# Create instance of miner
#=========================
screen -d -m -S eqm $MINER --cfg-file='zm.cfg'

