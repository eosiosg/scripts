#!/usr/bin/env bash

cleos set contract eosio $EOS_BUILD_DIR/contracts/eosio.bios/ -p eosio
. ./3_deploy_msig.sh
