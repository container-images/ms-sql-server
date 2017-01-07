#!/bin/bash

DATADIR="/mnt/msql-data/data"
LOGDIR="/mnt/msql-data/log"
OPT1="YES"
OPT2=$1
IMAGE="langdon/fedora-msqlserver"

docker build -t $IMAGE .
#atomic run $IMAGE
COMMAND=`atomic info $IMAGE | grep RUN: | sed -n -e 's/RUN: //p' | sed -n -e 's/IMAGE/$IMAGE/p'`
echo $COMMAND
eval $COMMAND
