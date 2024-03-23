#!/usr/bin/env bash

CONFIG=$1
GPUS=$2
PORT=$((RANDOM + 10000))

python $(dirname "$0")/train.py $CONFIG --launcher none
