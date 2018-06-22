#!/usr/bin/env bash

kill `cat eos.pid`
kill `cat wallet.pid`
rm eos.pid
rm wallet.pid
