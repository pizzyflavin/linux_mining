#!/usr/bin/env bash

DEFAULT_DELAY=0

if ["x$1" = "x" -o "x$1" = 'xnone' ]; then
    DELAY=$DEFAULT_DELAY
else
    DELAY=$1
fi
sleep $DELAY
cd ~/linux_mining
su richard -c "screen -dmS ethm ./mine.sh"

