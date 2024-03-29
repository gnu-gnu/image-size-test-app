#!/bin/sh
docker run \
-v var:/var -v usr:/usr -v tmp:/tmp -v sys:/sys \
-v srv:/srv -v sbin:/sbin -v run:/run -v root:/root \
-v opt:/opt -v mnt:/mnt -v media:/media -v libx32:/libx32 \
-v lib64:/lib64 -v lib32:/lib32 -v lib:/lib -v home:/home \
-v etc:/etc -v boot:/boot -v bin:/bin \
 -d  --name app image-size-test:distroless-based
