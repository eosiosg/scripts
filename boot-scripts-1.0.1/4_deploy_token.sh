#!/usr/bin/env bash


#cleos push action eosio setpriv '["eosio.token",1]' -p eosio
cleos set contract eosio.token $EOS_BUILD_DIR/contracts/eosio.token -p eosio.token

cleos push action eosio.token create '["eosio", "10000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '["eosio", "1000000000.0000 EOS", "issue 1B to eosio"]' -p eosio

cleos set contract eosio.msig $EOS_BUILD_DIR/contracts/eosio.msig -p eosio.msig
