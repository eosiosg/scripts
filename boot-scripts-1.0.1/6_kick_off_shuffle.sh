#!/usr/bin/env bash

#cleos system newaccount eosio whale "1 EOS" "1 EOS"
cleos system newaccount eosio whale EOS7tkkmx2CgqA3fJMcrSWkjw2kjvWxqDz2iKbzxSXgag9QnhJgDn EOS7tkkmx2CgqA3fJMcrSWkjw2kjvWxqDz2iKbzxSXgag9QnhJgDn --stake-net "1 EOS" --stake-cpu "1 EOS" --buy-ram "1 EOS"
cleos transfer eosio whale "150000000 EOS" "kick off"
cleos wallet import 5KYeJw8jRBFGodMb8ux49jmKHQ6oBaNgwvcJrybhdiuuPeTYTHf
cleos system delegatebw whale whale "75000000 EOS" "75000000 EOS"
cleos system voteproducer prods whale bentley11111 maybach11111 rollsroyce11
cleos system newaccount eosio eosio.sg EOS8YARNxXNLYPak3cjhgUdTWkwCKQkXxwMuW2CpE2d6YnVtVbywG EOS8YARNxXNLYPak3cjhgUdTWkwCKQkXxwMuW2CpE2d6YnVtVbywG --stake-net "1 EOS" --stake-cpu "1 EOS" --buy-ram "1 EOS"
cleos wallet import 5JaFJxn2RpugGBi32P2f3ykMMKgqZzB1TZQi5zxxS8i1N62hdLd
cleos  transfer eosio eosio.sg "500000000 EOS" "make us rich"
