#!/bin/bash
# $1 - account name
# $2 - public key
# $3 - private key

cleos system newaccount eosio $1 $2 $2 --stake-net "1.0000 EOS" --stake-cpu "1.0000 EOS" --buy-ram-EOS "1.0000 EOS"
cleos wallet import $3