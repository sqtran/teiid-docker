#!/bin/bash

# Initialization script for our dockerized demo.  Does a couple of things such as load data into the test database, and sets up our drivers.

CIP=$(docker inspect $(docker ps | grep teiid-master | cut -f 1 -d " ") | grep "IPAddress\":" | tail -1 | cut -d '"' -f 4)
#CPORT=$(docker ps | grep 9999 | cut -d "," -f 3 | cut -d ":" -f 2 | cut -d "-" -f 1)
CPORT=9999

MIP=$(docker inspect $(docker ps | grep mariadb | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)
#MPORT=$(docker ps | grep 3306 | cut -d ":" -f 3 | cut -d "-" -f 1)
MPORT=3306

# Installs Teiid components into Wildfly 10 platform, why this isn't done out-of-the-box is a mystery to me...
java -jar jboss-cli-client.jar --connect --controller=$CIP:$CPORT --user=admin --password=admin123! --file=teiid-domain-mode-install.cli

# Sets up the test datasource and removes unnecessary servers
cp template.cli batch.cli 
sed -i -e "s/IPADDRESS/$MIP/" batch.cli
sed -i -e "s/PORT/$MPORT/" batch.cli
java -jar jboss-cli-client.jar --connect --controller=$CIP:$CPORT --user=admin --password=admin123! --file=batch.cli

# Housekeeping
rm batch.cli

# Loads test data into MariaDB test database
mysql -u root --password=root -h $MIP  < database.sql
