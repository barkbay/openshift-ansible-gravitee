#!/bin/bash

VERSION=1.13.2.r0
DESTINATION=${DESTINATION:-docker.io}
IMAGE=barkbay/gateway:${VERSION}

docker build . -t ${IMAGE}

if [[ $@ == **--push** ]]
then
docker tag ${IMAGE} ${DESTINATION}/${IMAGE}
docker push ${DESTINATION}/${IMAGE}
fi
