#!/bin/sh
# Start geth on our private blockchain (no mining)
../go-ethereum/build/bin/geth --port 30302 --rpc --rpcport 8002 --rpccorsdomain="*" --ipcdisable --datadir="$HOME/Library/Ethereum/privatenet" --identity="myNode" --networkid="4159" -verbosity=4 console
