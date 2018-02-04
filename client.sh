#!/bin/bash
ebloc_path="$HOME/MyEthereumEbloc_geth";   #PLEASE update the path of yours
sudo geth --datadir "$ebloc_path" attach ipc:$ebloc_path/geth.ipc console
