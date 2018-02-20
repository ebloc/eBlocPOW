#!/bin/bash
DATADIR="/Users/alper/DENE/eblocGeth"
sudo geth --datadir "$DATADIR/private" attach ipc:$DATADIR/private/geth.ipc console
