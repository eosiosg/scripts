#!/usr/bin/env bash

kill `cat "$EOS_ROOT/keosd/wallet.pid"`
rm "$EOS_ROOT/keosd/wallet.pid"
