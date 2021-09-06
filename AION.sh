#!/bin/bash

POOL=cluster.aionpool.tech:3333

WALLET=AION.0xa0934f2d6542e54262b02eb3b587b03e8b27b0861550bfefd704ddb5774dd9f4

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-JOS
cd "$(dirname "$0")"

chmod +x ./bionic && sudo ./bionic --algo EQUI210_9 --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
