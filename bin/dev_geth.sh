#!/bin/sh
# Start geth in standalone (dev) mode - no connectivity, but otherwise a nice environment in which to write code
../go-ethereum/build/bin/geth --dev --mine --minerthreads 1
