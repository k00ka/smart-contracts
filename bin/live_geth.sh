#!/bin/sh
# Start geth attached to the real, live blockchain.
# Best started against either an empty or up-to-date blockchain
# Set and export ETHERBASE to one your accounts to collect block rewards
../go-ethereum/build/bin/geth --fast --cache=1024 --jitvm --mine --etherbase ${ETHERBASE} --preload "../smart-contracts/js/gethlib.js" console
