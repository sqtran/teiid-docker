#!/bin/bash

# Starts up the MariaDB container 

docker run -it --rm --publish-all -e MYSQL_ROOT_PASSWORD=root mariadb:latest
