#!/usr/bin/env bash

# set -ex

#export remote="-u http://api-boscore-lib-testnet-boscore-bp-cluster-ap-northeast-1.eosio.sg"
#export remote="-u http://api-boscore-lib-testnet-ali-boscore-bp-cluster-ap-southeast-2.eosio.sg"
export remote="-u http://47.75.107.217:6666"
SELECTED=()

shuffle_and_select_bps(){
  N=21
  # BPS=( bombay111111 boscorebos11 boscorebos12 bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn bpo bpp bpq bpw dubai1111111 franklin1111 hongkong1111 london111111 siliconvaley )
  BPS=( bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn bpo bpp bpq bpr bps bpt bpu bpv bpw bpx bpy bpz )
  tmp=()
  for index in $(shuf --input-range=0-$(( ${#BPS[*]} - 1 )) -n ${N})
  do
      tmp+=(${BPS[$index]})
  done
  SELECTED=($(echo "${tmp[@]}" | tr ' ' '\n'  | sort))
}

shuffle_and_select_bps
echo ${SELECTED[@]}

while :
do
shuffle_and_select_bps
cleos $remote system voteproducer prods voter  ${SELECTED[*]} -p voter ;
#cleos $remote transfer voter bpa "1.0000 EOS" "test";
echo "sleep 1 seconds"
sleep 1
done



# N=11
# BPS=( bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn )
# SELECTED=()
# for index in $(shuf --input-range=0-$(( ${#BPS[*]} - 1 )) -n ${N})
# do
#     echo "selecte: ${BPS[$index]}"
#     SELECTED+=(${BPS[$index]})
# done
#
# echo ${BPS[*]}
# echo ${SELECTED[*]}
#
# while :
# do
# cleos $remote system voteproducer prods voter -p voter
# echo "sleep 120 seconds"
# sleep 120
#
# cleos $remote system voteproducer prods voter -p voter
# echo "sleep 120 seconds"
# sleep 120
#
# cleos $remote system voteproducer prods voter -p voter
# echo "sleep 120 seconds"
# sleep 120
#
# done
# bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn
