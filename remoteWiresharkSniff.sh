#!/bin/bash

if [[ -z $1 ]]; then
echo "No user@ip supplied, exit..."
echo "EXAMPLE: ./remoteWiresharkSniff.sh root@10.10.10.10 eth0"
exit 1
else
HOST=$1
fi
echo "Using $IFACE"

if [[ -z $2 ]]; then
echo "No interface supplied, using any instead"
IFACE="any"
else
IFACE=$2
fi
echo "Sniffing from $HOST via $IFACE"

ssh $HOST sudo tcpdump -i $IFACE -U -s0 -w - 'not port 22' | wireshark -k -i -
