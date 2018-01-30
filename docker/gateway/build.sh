#!/bin/bash

VERSION=1.12.5.r0
DESTINATION=${DESTINATION:-docker.io}
IMAGE=barkbay/gateway:${VERSION}

docker build . -t ${IMAGE}

if [[ $@ == **--push** ]]
then
docker tag ${IMAGE} ${DESTINATION}/${IMAGE}
docker push ${DESTINATION}/${IMAGE}
fi
