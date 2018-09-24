#!/bin/bash

DATADIR=$HOME"/eblocPOW"
sudo geth --datadir "$DATADIR/private" attach ipc:$DATADIR/private/geth.ipc console
