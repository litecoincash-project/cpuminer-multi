#!/bin/sh
while [ 1 ]; do
  echo [testnet] ./cpuminer -a sha256d -o http://127.0.0.1:62455 -O user:pass -t 1 --coinbase-addr=t7vGHuMvy18cXSaXngCDcj6sVyaL643kQZ --coinbase-sig=OBTfx_SHA_NX --api-bind 127.0.0.1:4050 -R 5 --no-longpoll --cpu-affinity 8
  ./cpuminer -a sha256d -o http://127.0.0.1:62455 -O user:pass -t 1 --coinbase-addr=t7vGHuMvy18cXSaXngCDcj6sVyaL643kQZ --coinbase-sig=OBTfx_SHA_NX --api-bind 127.0.0.1:4050 -R 5 --no-longpoll --cpu-affinity 8
  sleep 5
done
