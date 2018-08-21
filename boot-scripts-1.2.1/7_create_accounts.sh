#!/usr/bin/env bash

ACCOUNTS="alice1111111 bob111111111 carl11111111 localtest111 localtest222 localtest333 localtest444 localtest555"

for acc in $ACCOUNTS
do
    echo $acc
    cleos system newaccount eosio $acc EOS4v9UCqsPxKkfm267Q1xJbuE6KRbrXLamGQpo45ZS5xfJqMkaDP EOS4v9UCqsPxKkfm267Q1xJbuE6KRbrXLamGQpo45ZS5xfJqMkaDP --stake-cpu "1000 EOS" --stake-net "1000 EOS" --buy-ram "1000 EOS" -p eosio
    cleos transfer eosio $acc "1000 EOS" "red packet" -p eosio
done

cleos wallet import --private-key 5KbYnXiRxDqaej7qP7A6Pji3ZNiwaFiYRGayGRtHLk8jTFvGCdN
