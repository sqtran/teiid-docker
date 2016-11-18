#!/bin/bash

# Starts up the PostgreSQL container
# I'd rather use the postgres:9.6.1-alpine image, but ran into issues with that version.

docker run -it --rm --publish-all -e POSTGRES_PASSWORD=password  postgres:9.6.1
