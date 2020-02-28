#!/bin/bash
./gradlew bootJar -Pprod jibDockerBuild
#docker tag gateway:latest registry.cn-hangzhou.aliyuncs.com/pingsec/compose/gateway:latest
docker tag gateway:latest ccr.ccs.tencentyun.com/pingsec/compose/gateway:1.0
docker push ccr.ccs.tencentyun.com/pingsec/compose/gateway:1.0
