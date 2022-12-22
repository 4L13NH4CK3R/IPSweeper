#!/bin/bash

## Created by: Crypto H4ck3r ##
## This is a simple script that will allow you to type in the first 3 octaves of an IP Address and will ping each individual last octave to see if it is live or not! ##

if [ "$1" == "" ]
then 
echo "Matrix Broken! User Did Not Enter A Valid IP Address:"
echo "Matrix Syntax Error: ./ipsweep.sh target_ip_address"
echo "IP Address Example: 192.168.1"
echo "Just need the first 3 octaves of your Target IP Address"
else
for ip in `seq 1 254`; do 
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
