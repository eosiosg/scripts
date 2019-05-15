#!/usr/bin/env bash

#export remote="-u http://api-boscore-lib-testnet-boscore-bp-cluster-ap-northeast-1.eosio.sg"
export remote="-u http://47.75.107.217:6666"
#import eosio key
cleos wallet import -n lib --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

# deploy bios
cleos $remote set contract eosio ./contracts/eosio.bios/ eosio.bios.wasm eosio.bios.abi -p eosio

# create system account
SYSTEM_ACCOUNT="eosio.bpay eosio.msig eosio.names eosio.ram eosio.ramfee eosio.saving eosio.stake eosio.token eosio.vpay"

for sa in $SYSTEM_ACCOUNT
do
    echo $sa
    cleos $remote create account eosio $sa EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p eosio
done

# deploy token contract and issue
cleos $remote set contract eosio.token contracts/eosio.token eosio.token.wasm eosio.token.abi -p eosio.token ;

sleep 2;
cleos $remote push action eosio.token create '["eosio", "10000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos $remote push action eosio.token issue '["eosio", "1000000000.0000 EOS", "issue 1B to eosio"]' -p eosio

# deploy msig contract
cleos $remote set contract eosio.msig contracts/eosio.msig eosio.msig.wasm eosio.msig.abi -p eosio.msig

# deploy system contract
cleos $remote set contract eosio contracts/eosio.system eosio.system.wasm eosio.system.abi -p eosio

sleep 2;
cleos $remote system newaccount eosio voter EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif --stake-net "10 EOS" --stake-cpu "10 EOS" --buy-ram-kbytes 10000
cleos wallet import -n lib --private-key 5KE3vxAZ5tBXubjMeFJ9uCHHjfQeAzDqPLeW4XHGVcuKHPPLCrA
cleos $remote transfer eosio voter "200000000.0000 EOS" "transfer 200M to voter"
sleep 2;
cleos $remote system delegatebw voter voter '100000000.0000 EOS' '100000000.0000 EOS' -p voter



#cleos $remote push action eosio setpriv '["eosio.msig",1]' -p eosio

# create bps
# create bps
ACCOUNTS="abp bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn bpo bpp bpq bpr bps bpt bpu bpv bpw bpx bpy bpz"

for acc in $ACCOUNTS
do
    echo $acc
    cleos $remote system newaccount eosio $acc EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif EOS54HgSQ9d6qjUT7pEZgbP83zQpcymR4QW1jz2jPDEdbAeKGaUif --stake-cpu "1000 EOS" --stake-net "1000 EOS" --buy-ram "1000 EOS" -p eosio
    cleos $remote transfer eosio $acc "1000 EOS" "red packet" -p eosio
done


cleos $remote system regproducer bpa EOS7BbmLoTdmuUkht7VrFBJTLac1i9ChLWsMZDNo4q3qiJw7crtVc '' 0 -p bpa
cleos $remote system regproducer bpb EOS5dUiLcsqMzSoZinnHhtqi1kk9YmEZCnyRmDWN68qbXMMXrCMvP '' 0 -p bpb
cleos $remote system regproducer bpc EOS6eMGpgRJ3HRHctRuJFs564RsQ4GhohUBE7qA98rBY88bRsjQM1 '' 0 -p bpc
cleos $remote system regproducer bpd EOS7E1K17MFd31xF7EeNXVSvEuHihmvUC54HfK7YkHTydSCKa1Ddt '' 0 -p bpd
cleos $remote system regproducer bpe EOS5aXTHWuh5mZFiWwSZGV8D4WWZMZR8TTjXeBfToWBbMT7QMwRgM '' 0 -p bpe
cleos $remote system regproducer bpf EOS6F5vU6nFwFsThUPU285Yw4PXpzxJFXrA3P2i4kmP8Z1Yu6d6M4 '' 0 -p bpf
cleos $remote system regproducer bpg EOS59VzXAtqT61rBeG5X967XH6chv96i7EWCdWPtT3ZUNBMPvaUa8 '' 0 -p bpg
cleos $remote system regproducer bph EOS6NGoJuxZ1nhYczfR5V68tSFpVf3nQmvHJBdDFTUm75mWQ6bcRp '' 0 -p bph
cleos $remote system regproducer bpi EOS6U1Kj9VNJvxJeKr3t1dmawAFTkcsaPBL8wkKr9akXLX4wqU1jV '' 0 -p bpi
cleos $remote system regproducer bpj EOS6vboxEGBf43r6P7UjrTvE3sTt49ZsVz3ULPV6QUmfkTjuJ6EHa '' 0 -p bpj
cleos $remote system regproducer bpk EOS6fYF2DBV3qe6Px3bt8wavRufEvfepTDKZZSizcfXksiDAR4xvv '' 0 -p bpk
cleos $remote system regproducer bpl EOS8VRfSoyS1frV3CBPeobJ1cvMCYGY3cwx1YiqPYydXDWgmyNXrE '' 0 -p bpl
cleos $remote system regproducer bpm EOS82bUcqrCGCHZXJ2h6cPvoarYTfWt6hDzNW8dg8iXR2t7ytNsK7 '' 0 -p bpm
cleos $remote system regproducer bpn EOS8mtf18vDppwW17LWi3gkJyvT8R6BkiW4YKysQFNjg1z1qyoKPH '' 0 -p bpn
cleos $remote system regproducer bpo EOS8A98zLF4X2mGCcrX7f1BtmSuxf6ucb7FNFNLUNiq5jUu5p86Fy '' 0 -p bpo
cleos $remote system regproducer bpp EOS5RS7zr2um4z8cChehvg4nAjoEzLh7FpqbJN7fx4iwCJLJ8WZ8a '' 0 -p bpp
cleos $remote system regproducer bpq EOS5TnNcuyzYSaMtVCfK961HuTAtERH4J467KvZm7CSiwbEPcvyta '' 0 -p bpq
cleos $remote system regproducer bpr EOS6S2fmuFfkH7HyTc1e3nBtDo8QaJq4onYvJGcNgiA3xfGBGWwRn '' 0 -p bpr
cleos $remote system regproducer bps EOS8Na7TRhhkWRaDEbyQdAx5mtPWTrTnbQE2849NtGyWYUCCa2iAJ '' 0 -p bps
cleos $remote system regproducer bpt EOS5BTMBpKb4pqUSLmH41nLE8s9m6MEd4VJct2NHUnKAyKafbSWkp '' 0 -p bpt
cleos $remote system regproducer bpu EOS8fa1zFZXourRwd1qVAVcUKPKLvzhtnYDaCQiNs7EDh2Zdi7j2u '' 0 -p bpu
cleos $remote system regproducer bpv EOS5kBwkKxvUYpCnwdQMVPkVKxQj9Ekog541YfybeYHKeqcMXsQvo '' 0 -p bpv
cleos $remote system regproducer bpw EOS5QZyPh8kfs5Ar3R2vzJ9QjDrH1x8o6X1CsR6vyANDkVFdmzjbj '' 0 -p bpw
cleos $remote system regproducer bpx EOS4vRTZ9ZMQ32YbfopkJzxRRLW9i3FRGvyFE5CvWf5gcokXtp61e '' 0 -p bpx
cleos $remote system regproducer bpy EOS82bXWznxM5wLzemsqycGF9Czqco6X5vtiUqNq7nzGAbWgnfXHZ '' 0 -p bpy
cleos $remote system regproducer bpz EOS8PdC1MGvTwaGBDAWhBF4GNAAk8AaRA9o2RJ6zy5TWHYxLhcWGn '' 0 -p bpz
