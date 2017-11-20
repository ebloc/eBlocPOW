#!/bin/bash
ebloc_path="/Users/avatar/Library/MyEthereumEbloc";   #PLEASE update the path of yours
sudo geth --datadir "$ebloc_path" attach ipc:$ebloc_path/geth.ipc console
