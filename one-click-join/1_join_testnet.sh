curl -X POST \
  "http://testapi.eosio.sg/secureNode?publicKey=$publicKey" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d " {
        \"producer_name\": \"$producerName\",
        \"domain\": \"$domain\",
        \"organization_name\": \"$organizationName\",
        \"location\": \"$location\",
        \"http_port\": \"$httpPort\",
        \"p2p_port\": \"$p2pPort\"
    }" > path.txt

./2_download_configuration.sh
