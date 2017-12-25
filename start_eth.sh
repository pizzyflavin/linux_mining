#!/usr/bin/env bash

DEFAULT_DELAY=0

if [ "x$1" = "x" -o "x$1" = 'xnone' ]; then
    DELAY=$DEFAULT_DELAY
else
    DELAY=$1
fi
sleep $DELAY

# Set environment variables
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

# Miner and Pool Setup
MINER='miners/claymore10/ethdcrminer64'
POOL=eth-us-east1.nanopool.org
PORT=9999
ADDRESS=0x945737e70d4fe95f6a8abf6a49d728f0b3c42c61
WORKER=SirNose
EMAIL=pizzyflavin@gmail.com
WALLET=$ADDRESS.$WORKER/$EMAIL

# Start instance of miner
# (Investigate -tt 68 and -allpools 1 options suggested on r/EtherMining)
screen -d -m -S ethm $MINER -epool $POOL:$PORT -ewal $WALLET -epsw x -mode 1 -ftime 10
