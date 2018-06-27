#!/usr/bin/env bash

# Set environment variables
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
# Investigate -tt 68 and -allpools 1 options suggested on r/EtherMining
/usr/local/claymore10/ethdcrminer64 -epool eth-us-east1.nanopool.org:9999 -ewal 0x945737e70d4fe95f6a8abf6a49d728f0b3c42c61.SirNose/pizzyflavin@gmail.com -epsw x -mode 1 -ftime 10
