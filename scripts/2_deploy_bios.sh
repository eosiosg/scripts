CLEOS=cleos
EOS_BUILD_DIR=~/CLionProjects/eos/build

cleos wallet create
cleos set contract eosio $EOS_BUILD_DIR/contracts/eosio.bios/ -p eosio
