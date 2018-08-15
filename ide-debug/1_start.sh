#!/usr/bin/env bash

mkdir -p "$EOS_ROOT/logs"
mkdir -p "$EOS_ROOT/keosd"

nohup keosd -d "$EOS_ROOT/keosd" --http-server-address localhost:8900 > "$EOS_ROOT/keosd/wallet.log" 2>&1 &
echo $! > "$EOS_ROOT/keosd/wallet.pid"

cleos wallet create > "$EOS_ROOT/keosd/wallet.pw"
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
