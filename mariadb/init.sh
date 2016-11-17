#!/bin/bash
#JBOSS_HOME = /home/stran/JDV6.3/bin/jboss-cli.sh 

CIP=$(docker inspect $(docker ps | grep teiid-master | cut -f 1 -d " ") | grep "IPAddress\":" | cut -d '"' -f 4)
#CPORT=$(docker ps | grep 9999 | cut -d "," -f 3 | cut -d ":" -f 2 | cut -d "-" -f 1)
CPORT=9999


MIP=$(docker inspect $(docker ps | grep mariadb | cut -f 1 -d " ") | grep "IPAddress\":" | cut -d '"' -f 4)
MPORT=$(docker ps | grep 3306 | cut -d ":" -f 3 | cut -d "-" -f 1)

cp template.cli batch.cli
sed -i -e "s/IPADDRESS/$MIP/g"  batch.cli
sed -i -e "s/PORT/$MPORT/g" batch.cli

#/home/phantom/teiid-8.13.5/bin/jboss-cli.sh --connect --controller=$CIP:$CPORT --user=admin --password=admin123! --file=batch.cli
