#!/usr/bin/env bash

cleos wallet unlock --password=$(cat wallet.pw|cut -c 2-54)
