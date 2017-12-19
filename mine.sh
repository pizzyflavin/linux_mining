#!/usr/bin/env bash
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
# -epool address = nanopool eth
# -ewal address = your ethereum wallet address
./ethdcrminer64 -epool 0x52bc44d5378309ee2abf1539bf71de1b7d7be3b5 -ewal 0x945737E70D4Fe95f6A8abF6a49D728f0b3C42C61.SirNose -epsw x -mode 1 -tt 68 -allpools
