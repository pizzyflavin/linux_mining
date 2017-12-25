#!/usr/bin/env bash

DEFAULT_DELAY=0

if [ "x$1" = "x" -o "x$1" = 'xnone' ]; then
    DELAY=$DEFAULT_DELAY
else
    DELAY=$1
fi
sleep $DELAY

# Miner and Pool Settings
#========================
MINER='miners/EWBF/0.3.4b/miner'
SERVER='us1-zcash.flypool.org'
ADDRESS=t1N5beBRNeAcW4Rdsg7yoR6ZResaSFgzW5i
WORKER=SirNose
USER=$ADDRESS.$WORKER
PORT=3333

# Create instance of miner
#=========================
screen -d -m -S zcashm sudo $MINER --server $SERVER --user $USER --pass x --port $PORT --cuda_devices 0 1 2 3 4 5 --api 127.0.0.1:42000
