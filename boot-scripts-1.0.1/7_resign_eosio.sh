#!/usr/bin/env bash

cleos push action eosio updateauth '["eosio","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio.prods","permission":"active"}}]}]' -p eosio@owner
cleos push action eosio updateauth '["eosio","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio.prods","permission":"active"}}]}]' -p eosio@active

cleos push action eosio updateauth '["eosio.bpay","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.bpay@owner
cleos push action eosio updateauth '["eosio.bpay","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.bpay@active
cleos push action eosio updateauth '["eosio.msig","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.msig@owner
cleos push action eosio updateauth '["eosio.msig","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.msig@active
cleos push action eosio updateauth '["eosio.names","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.names@owner
cleos push action eosio updateauth '["eosio.names","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.names@active
cleos push action eosio updateauth '["eosio.ram","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.ram@owner
cleos push action eosio updateauth '["eosio.ram","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.ram@active
cleos push action eosio updateauth '["eosio.ramfee","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.ramfee@owner
cleos push action eosio updateauth '["eosio.ramfee","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.ramfee@active
cleos push action eosio updateauth '["eosio.saving","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.saving@owner
cleos push action eosio updateauth '["eosio.saving","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.saving@active
cleos push action eosio updateauth '["eosio.stake","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.stake@owner
cleos push action eosio updateauth '["eosio.stake","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.stake@active
cleos push action eosio updateauth '["eosio.token","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.token@owner
cleos push action eosio updateauth '["eosio.token","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.token@active
cleos push action eosio updateauth '["eosio.vpay","owner","",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.vpay@owner
cleos push action eosio updateauth '["eosio.vpay","active","owner",{"threshold":1,"keys":[],"waits":[],"accounts":[{"weight":1,"permission":{"actor":"eosio","permission":"active"}}]}]' -p eosio.vpay@active
