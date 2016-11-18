#!/bin/bash

# Script for loading Postgres data independently of the init script.
# Mainly used for testing before things were stabilized.

PIP=$(docker inspect $(docker ps | grep postgres  | cut -f 1 -d " ") | grep "IPAddress\":" | tail -1 | cut -d '"' -f 4)

PGPASSWORD=password
export PGPASSWORD

psql -h $PIP -U postgres < data/postgres-data.sql
