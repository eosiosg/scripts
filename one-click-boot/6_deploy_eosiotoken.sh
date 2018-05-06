cleos create account eosio eosio.token EOS5ouiT2VoeaQZ2Nxqq1XNES66LXEWZMZuX5gBZqnjp9w75bVzY2 EOS5ouiT2VoeaQZ2Nxqq1XNES66LXEWZMZuX5gBZqnjp9w75bVzY2
cleos set contract eosio.token ~/eos/build/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '["user", "100.0000 EOS", "memo"]' -p eosio -d -j
cleos push action eosio.token transfer '[ "user", "tester", "25.0000 EOS", "m" ]' -p user
cleos push action eosio.token transfer '[ "tester", "frank", "15.0000 EOS", "m" ]' -p tester
