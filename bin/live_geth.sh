#!/bin/sh
# Start geth attached to the real, live blockchain.
# Best started against either an empty or up-to-date blockchain
# Change (or remove) etherbase to your own account (or your mining will pay my account!)
../go-ethereum/build/bin/geth --fast --cache=1024 --jitvm --mine --etherbase "0x31a1f85fdb0b0ee590dfe182cc74d7d189121e89" --preload "../smart-contracts/js/gethlib.js" console
