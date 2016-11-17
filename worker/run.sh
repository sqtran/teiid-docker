#!/bin/bash

CIP=$(docker inspect $(docker ps | grep teiid-master | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)
CPORT=9999

docker run -it -e masterport=$CPORT -e masterhost=$CIP --rm --publish-all sqtran/teiid-worker:9.1.1
