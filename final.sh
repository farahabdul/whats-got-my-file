#!/bin/bash

if [ -z "$1" ]
then
     echo "Usage:"
     exit 0;
fi

lsof | grep "$1" | awk '{print "user:" $1 "pid:" $2}'
