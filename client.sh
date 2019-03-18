#!/bin/bash

DATADIR=$HOME"/eBlocPOW"
sudo geth --datadir "$DATADIR/private" attach ipc:$DATADIR/private/geth.ipc console
