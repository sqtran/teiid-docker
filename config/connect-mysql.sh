#!/bin/bash

# Script for connecting to the local MySQL/MariaDB server.
# Mainly used for testing before things were stabilized.

MIP=$(docker inspect $(docker ps | grep mariadb | cut -f 1 -d " ") | grep "IPAddress\":" |tail -1 |  cut -d '"' -f 4)
#MPORT=$(docker ps | grep 3306 | cut -d ":" -f 3 | cut -d "-" -f 1)
MPORT=3306

# Connects to the local MariaDB database
mysql -u root --password=root -h $MIP
