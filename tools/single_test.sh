#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2
GPUS=$3
PORT=$((RANDOM + 10000))

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
rm -rf work_dirs/save_dir/* && python $(dirname "$0")/test.py $CONFIG $CHECKPOINT --launcher none --show-dir work_dirs/save_dir --show
