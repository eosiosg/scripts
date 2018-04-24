CLEOS=cleos
EOS_BUILD_DIR=~/eos/build

cleos wallet create
cleos set contract eosio $EOS_BUILD_DIR/contracts/eosio.bios/ -p eosio
