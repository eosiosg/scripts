#!/usr/bin/env bash

for sa in "${SYSTEM_ACCOUNT[@]}"
do
    cleos create account eosio $sa EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p eosio
done

cleos create account eosio b1 EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif
cleos wallet import 5KE3vxAZ5tBXubjMeFJ9uCHHjfQeAzDqPLeW4XHGVcuKHPPLCrA
cleos transfer eosio b1 "100000000.0000 EOS" "transfer 100M to b1"

cleos set contract eosio $EOS_BUILD_DIR/contracts/eosio.system -p eosio
