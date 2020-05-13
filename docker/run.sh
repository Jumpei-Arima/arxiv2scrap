#!/bin/sh

docker run -it --rm \
    -v ${PWD}/..:/root/arxiv2scrap \
    --name arxiv2scrap \
    node:11.8.0 \
    bash -c "cd /root/arxiv2scrap && rm -f key.pem && npm install && npm run build && npm run pack"
