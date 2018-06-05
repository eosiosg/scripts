#!/usr/bin/env bash

for sa in "${SYSTEM_ACCOUNT[@]}"
do
    account="$sa"
    controller="eosio"
    cleos push action eosio updateauth '{"account": "'$account'", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } } ' -p $account@owner
    cleos push action eosio updateauth '{"account": "'$account'", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } }' -p $account@active

done

cleos push action eosio updateauth '{"account": "eosio", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "eosio.prods", "permission": "active"} }] } } ' -p eosio@owner
cleos push action eosio updateauth '{"account": "eosio", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "eosio.prods", "permission": "active"} }] } }' -p eosio@active
