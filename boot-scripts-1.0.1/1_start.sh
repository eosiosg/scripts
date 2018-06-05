#!/usr/bin/env bash

mkdir -p logs
nohup nodeos --data-dir ./data-dir --config-dir ./config-dir  > ./logs/eos.log 2>&1 &
echo $! > eos.pid
nohup keosd -d ./data-dir --http-server-address localhost:8900 >./logs/wallet.log 2>&1 &
echo $! > wallet.pid
echo "Waiting nodeos start for 3 seconds"
sleep 3
cleos wallet create > wallet.pw
#cleos wallet import 5JFGWibbcKfq1ft2e8rNXFQoXUTw2qombWvCmaYVmE2e3VxtzAK
#cleos wallet import 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
