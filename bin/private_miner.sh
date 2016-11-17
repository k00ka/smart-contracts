#!/bin/sh
# Start geth on our private blackchain with DAG generation and mining
../go-ethereum/build/bin/geth --port 30301 -rpc --rpcport 8001 --rpccorsdomain="*" --ipcdisable --datadir="$HOME/Library/Ethereum/privatenet" --identity="minerNode" --networkid="4159" --autodag --mine --preload="js/check_work.js" --verbosity=5 --nodiscover $*
