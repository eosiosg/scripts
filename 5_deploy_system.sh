cleos -p 8800 --wallet-port 8000  set contract eosio ~/eos/build/contracts/eosio.system/ -p eosio
cleos  -p 8800 --wallet-port 8000 push action eosio issue '{"to":"eosio", "quantity":"1000000000.0000 EOS"}' -p eosio@active
