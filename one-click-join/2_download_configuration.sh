wget http://api.eosio.sg$(cat ./path.txt)

tar xfp eosiosg.tar && rm eosiosg.tar ;

sed -i '' -e  "s/\"\"/\"$privateKey\"/g" eosiosg/config-dir/config.ini

./3_start_node.sh
