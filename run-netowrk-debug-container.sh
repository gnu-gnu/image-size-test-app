#!/bin/sh
docker run --rm -it --pid container:app --network container:app \
nicolaka/netshoot /bin/sh
