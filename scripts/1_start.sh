mkdir -p logs
nohup nodeos --data-dir ./data-dir --config-dir ./config-dir  > ./logs/eos.log 2>&1 &
echo $! > eos.pid
nohup keosd -d ./data-dir --http-server-address localhost:8900 >./logs/wallet.log 2>&1 &
echo $! > wallet.pid
