#!/bin/bash

NAME_FILE=$1
TARGET_FILE=$2

# set -x

for i in `seq 0 9`; do
  NAME=`shuf -n 1 $NAME_FILE | awk '{print $2}'`
  
  while [ ${#NAME} -lt 4 ]; do
    NAME=`shuf -n 1 $NAME_FILE | awk '{print $2}'`
  done

  sed -i "s/WS$i/$NAME/" $TARGET_FILE
done
