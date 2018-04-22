cleos create key > key.txt
export privateKey=$(head -n 1 key.txt | awk '{print $3}')
export publicKey=$(tail -n 1 key.txt | awk '{print $3}')
echo "public key and private key are generated in local file key.txt"
echo "Input your configurations:"

echo "Please input producer name"
read producerName

echo "Please input organization name"
read organizationName

echo "Please input logo url (can be empty)"
read logoUrl

echo "Please input location, example: Singapore"
read location

echo  "Please input domain address, example: node0.eosio.sg"
read domain

echo "Please input http port"
read httpPort

echo "Please input p2p port"
read p2pPort


export producerName=$producerName
export organizationName=$organizationName
export location=$location
export logoUrl=$logoUrl
export publicKey=$publicKey
export domain=$domain
export httpPort=$httpPort
export p2pPort=$p2pPort

./1_join_testnet.sh
