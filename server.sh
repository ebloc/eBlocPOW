#!/bin/bash

ebloc_path="/Users/alper/aa/MyEthereumEbloc";   #PLEASE update the path of yours

nohup geth --fast --networkid 23422 --datadir="$ebloc_path" --rpc --rpcaddr "localhost" --rpccorsdomain="*" --rpcport="8545" &

sleep 5

pass_dir=$ebloc_path/pass.js;
echo $pass_dir
echo 'loadScript("'$pass_dir'")' | sudo geth --datadir "$ebloc_path" attach ipc:$ebloc_path/geth.ipc console
echo 'net'                     | sudo geth --datadir "$ebloc_path" attach ipc:$ebloc_path/geth.ipc console
