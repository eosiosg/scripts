#!/usr/bin/env bash



cleos create account eosio b1 EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif
cleos wallet import 5KE3vxAZ5tBXubjMeFJ9uCHHjfQeAzDqPLeW4XHGVcuKHPPLCrA
cleos transfer eosio b1 "100000000.0000 EOS" "transfer 100M to b1"

cleos set contract eosio $EOS_BUILD_DIR/contracts/eosio.system -p eosio

cleos push action eosio setpriv '["eosio.msig",1]' -p eosio
