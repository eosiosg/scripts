#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    ps aux | grep eos
  else
    ps aux | grep "$@"
fi
