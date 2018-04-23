CLEOS=cleos
EOS_BUILD_DIR=~/CLionProjects/eos/build

cleos -p 8800 --wallet-port 8000 wallet create
cleos -p 8800 --wallet-port 8000 set contract eosio $EOS_BUILD_DIR/contracts/eosio.bios/ -p eosio
