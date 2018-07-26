#!/usr/bin/env bash

cleos set contract whale $EOS_BUILD_DIR/contracts/hello $EOS_BUILD_DIR/contracts/hello/hello.wast $EOS_BUILD_DIR/contracts/hello/hello.abi -p whale
cleos push action whale  hi '["aaa"]' -p whale

cleos set contract whale $EOS_BUILD_DIR/contracts/infinite $EOS_BUILD_DIR/contracts/infinite/infinite.wast $EOS_BUILD_DIR/contracts/infinite/infinite.abi -p whale
cleos push action whale  hi '["aaa"]' -p whale
