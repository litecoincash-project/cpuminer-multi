#!/bin/sh
while [ 1 ]; do
  echo [testnet] ./cpuminer -a minotaurx -o http://127.0.0.1:62455 -O user:pass -t 1 --coinbase-addr=t9dJdqruJ7XybguxLMTR3JK5yu2hgqZAFn --coinbase-sig=OBTfx_MTX_NX --api-bind 127.0.0.1:4049 -R 5 --no-longpoll --cpu-affinity 2
  ./cpuminer -a minotaurx -o http://127.0.0.1:62455 -O user:pass -t 1 --coinbase-addr=t9dJdqruJ7XybguxLMTR3JK5yu2hgqZAFn --coinbase-sig=OBTfx_MTX_NX --api-bind 127.0.0.1:4049 -R 5 --no-longpoll --cpu-affinity 2
  sleep 5
done
