#!/bin/bash

set -e

count="$1"

docker-compose up -d --scale ipfs-client=$count