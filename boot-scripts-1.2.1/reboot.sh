#!/usr/bin/env bash
set -e
set -x

./kill.sh
./clean.sh
./0_boot_all_in_one.sh
