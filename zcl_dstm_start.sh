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
ADDRESS=t1WeWoT5Ej4RmL9Vghv8mZnoAJo5taaTMFh
WEBLOGIN=pizzyflavin
WORKER=SirNose
USER=$WEBLOGIN.$WORKER

#========================
# Miner and Pool Settings
#========================
MINER='miners/dstm/zm_0.5.8/zm'

MPHUB_SERVER='us-east.equihash-hub.miningpoolhub.com'
SUPR_SERVER='zcl.suprnova.cc'

SUPR_PORT=4042
MPHUB_PORT=20575

#=========================
# Log Path Setup
#=========================
LOGFILE='log/dstm_zm.log'

#=========================
# Create instance of miner
#=========================
screen -d -m -S zclm $MINER --server $MPHUB_SERVER --port $MPHUB_PORT --user $USER --pass x --dev 0 1 2 3 4 5 6 7 --logfile=$LOGFILE
