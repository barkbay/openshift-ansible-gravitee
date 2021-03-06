#!/bin/bash

VERSION=5.4.3.r0
DESTINATION=${DESTINATION:-docker.io}
IMAGE=barkbay/elasticsearch:${VERSION}

docker build . -t ${IMAGE}

if [[ $@ == **--push** ]]
then
docker tag ${IMAGE} ${DESTINATION}/${IMAGE}
docker push ${DESTINATION}/${IMAGE}
fi
