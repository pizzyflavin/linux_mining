#!/usr/bin/env bash

DEFAULT_DELAY=0

if [ "x$1" = "x" -o "x$1" = 'xnone' ]; then
    DELAY=$DEFAULT_DELAY
else
    DELAY=$1
fi
sleep $DELAY

#===============
# My ZCL Address
#===============
ADDRESS=t1ZPHEGdTDsWk3Skx9oMDCRjFaknUbXwA1F
WEBLOGIN=pizzyflavin
WORKER=SirNose
USER=$WEBLOGIN.$WORKER

#========================
# Miner and Pool Settings
#========================
MINER='miners/dstm/zm_0.5.7/zm'
SERVER='hush.suprnova.cc'
PORT=4048

#=========================
# Create instance of miner
#=========================
screen -d -m -S hushm sudo $MINER --server $SERVER --port $PORT --user $USER --pass x --dev 0 1 2 3 4 5
