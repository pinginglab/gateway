#!/bin/bash
./gradlew bootWar -Pprod buildDocker
#docker tag gateway:latest registry.cn-hangzhou.aliyuncs.com/pingsec/compose/gateway:latest
docker tag gateway:latest 127.0.0.1:5000/compose/gateway:latest
docker push 127.0.0.1:5000/compose/gateway:latest
