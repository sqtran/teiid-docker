#!/bin/bash

# Starts up the master node

docker run -it --rm --publish-all sqtran/teiid-master:9.1.1
