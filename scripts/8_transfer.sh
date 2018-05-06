cleos push action eosio.token transfer '["voter", "voter1", "100.0000 EOS","m"]' -p voter
cleos push action eosio.token transfer '["voter", "voter2", "50.0000 EOS", "m"]' -p voter
cleos push action eosio.token transfer '["voter1", "voter2", "10.0000 EOS", "m"]' -p voter1

cleos push action eosio.token transfer '["voter", "proxy", "100.0000 EOS","m"]' -p voter
