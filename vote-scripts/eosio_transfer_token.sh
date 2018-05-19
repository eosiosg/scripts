#!/bin/bash

# $1 - account_name of requiring tokens
# $2 - token amount required

#echo \'[\"$1\", \"$2 EOS\", \"xxxxx\"]\'
cleos push action eosio.token transfer '["eosio","'"$1"'","'"$2"' EOS","xxx"]' -p eosio


