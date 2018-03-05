#!/usr/bin/env bash

docker run -d \
--name selenoid \
-p 4444:4444 \
-e DOCKER_API_VERSION=1.35 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v `pwd`/config/:/etc/selenoid/:ro \
aerokube/selenoid:latest-release \
-limit 10 -conf /etc/selenoid/browsers.json