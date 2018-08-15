#!/usr/bin/env bash

printHeader() {
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  printf "$1\n"
}

printHeader 1_start.sh
./1_start.sh

printHeader 2_deploy_bios.sh
./2_deploy_bios.sh

printHeader 3_create_system_accounts.sh
./3_create_system_accounts.sh

printHeader 4_deploy_token.sh
./4_deploy_token.sh

printHeader 5_deploy_system.sh
./5_deploy_system.sh

printHeader 6_kick_off_shuffle.sh
./6_kick_off_shuffle.sh

printHeader 7_create_accounts.sh
./7_create_accounts.sh

#printHeader 8_resign_eosio.sh
#./8_resign_eosio.sh
