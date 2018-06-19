#!/bin/bash

# Ensure running as root
if [ "$(id -u)" != "0" ]; then
  echo "Please run: sudo bash server.sh";
  exit
fi

PORT=3000
pid=$(sudo lsof -n -i :$PORT | grep LISTEN| awk '{print $2}')
if [ -n "$pid" ]; then
  sudo kill -9 $pid       #sudo killall geth
fi

DATADIR=""
nohup geth --fast --cache=1024 --datadir $DATADIR/private --shh --port $PORT --rpcaddr 127.0.0.1 --rpc --rpcport 8545 --rpccorsdomain="*" --networkid 23422 --rpcapi eth,net,web3,personal > gethServer.out &

echo "Please wait few seconds for geth-server to be activated."
sleep 6

echo "loadScript(\"$DATADIR"/pass.js"\")" | sudo geth --datadir "$DATADIR/private" attach ipc:$DATADIR/private/geth.ipc console
echo "net"                                | sudo geth --datadir "$DATADIR/private" attach ipc:$DATADIR/private/geth.ipc console

bash stats.sh 
