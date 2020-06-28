#!/bin/bash
rm -rf compose 
docker stop $(docker ps -a -q) 2> /dev/null
docker rm $(docker ps -a -q) 2> /dev/null
docker volume rm $(docker volume ls -qf dangling=true) 2> /dev/null
