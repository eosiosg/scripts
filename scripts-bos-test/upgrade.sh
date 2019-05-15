#!/usr/bin/env bash
#export remote="-u http://api-boscore-lib-testnet-boscore-bp-cluster-ap-northeast-1.eosio.sg"
export remote="-u http://api-boscore-lib-testnet-ali-boscore-bp-cluster-ap-southeast-2.eosio.sg"
cleos $remote set contract eosio upgrade eosio.system.wasm eosio.system.abi -p eosio

cleos $remote push action eosio setupgrade '[[4000]]' -p eosio
