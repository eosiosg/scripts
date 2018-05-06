cleos set contract eosio ~/eos/build/contracts/eosio.system/ -p eosio
#cleos push action eosio issue '{"to":"eosio", "quantity":"1000000000.0000 EOS"}' -p eosio@active
cleos get code eosio
