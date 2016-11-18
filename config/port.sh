#!/bin/bash

CIP=$(docker inspect $(docker ps | grep teiid-master | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)
CPORT=$(docker ps | grep 9999 | cut -d "," -f 3 | cut -d ":" -f 2 | cut -d "-" -f 1)
MIP=$(docker inspect $(docker ps | grep mariadb | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)

echo teiidmaster is at  $CIP $CPORT
echo mariadb is at $MIP
