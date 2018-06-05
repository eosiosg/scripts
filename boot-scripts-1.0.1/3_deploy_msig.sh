#!/usr/bin/env bash

cleos create account eosio eosio.msig EOS564HoVEQLUfCy7Jv7CRENbPB3Rda5Fv9YAYNE2RHCBt3N6xDi2 EOS564HoVEQLUfCy7Jv7CRENbPB3Rda5Fv9YAYNE2RHCBt3N6xDi2
cleos wallet import 5J6fHcyDXKVsCMdyFmXsUDSWwBg4Z15PRGyy7iyAxhCMhdEFChF
cleos push action eosio setpriv '["eosio.msig",1]' -p eosio
cleos set contract eosio.msig $EOS_BUILD_DIR/contracts/eosio.msig -p eosio.msig
