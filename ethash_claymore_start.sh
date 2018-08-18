#!/usr/bin/env bash
MINER=./miners/claymore/claymore11.8/ethdcrminer64
POOL=us-east.ethash-hub.miningpoolhub.com:17020
USERNAME=pizzyflavin
WORKER=SirNose

screen -d -m -S eth $MINER -epool $POOL -ewal $USERNAME.$WORKER \
    -eworker $USERNAME.$WORKER -esm 2 -epsw x -tt 80
