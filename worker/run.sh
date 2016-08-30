#!/bin/bash
docker run -it -e masterport=32775 -e masterhost=172.17.0.2 --rm --publish-all sqtran/teiid-worker:latest
