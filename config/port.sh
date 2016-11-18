#!/bin/bash
# Just a test script, nothing else.

CIP=$(docker inspect $(docker ps | grep teiid-master | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)
CPORT=$(docker ps | grep 9999 | cut -d "," -f 3 | cut -d ":" -f 2 | cut -d "-" -f 1)
WPORT=$(docker ps | grep 9990 | cut -d "," -f 2 | cut -d ":" -f 2 | cut -d "-" -f 1)
JPORT=$(docker ps | grep 31000 | cut -d "," -f 4 | cut -d ":" -f 2 | cut -d "-" -f 1)
MIP=$(docker inspect $(docker ps | grep mariadb | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)

echo teiidmaster native interface is at  $CIP $CPORT
echo teiidmaster web port is at $WPORT
echo teiidmaster jdbc port is at $JPORT 
echo mariadb is at $MIP
