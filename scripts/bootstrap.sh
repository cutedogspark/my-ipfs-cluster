#!/bin/bash


# sudo ufw allow 4001/tcp

set -e

cmd="$1"
client="$2" # /ip4/172.16.0.113/tcp/4001/ipfs/QmV7Thb3mjuWa1xDK5UrgtG7SSYFt4PSyvo6CjcnA5gZAg

case $cmd in
    list)
        echo "IPFS bootstrap list ..."
        @ipfs bootstrap list
        ;;
	clear)
        echo "IPFS bootstrap clear ..."
		ipfs bootstrap rm all
        ipfs bootstrap list
		;;
	add)
		echo "IPFS bootstrap add '$client' ..." >&2
		ipfs bootstrap add $client
		;;
esac

