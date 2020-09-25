#!/bin/sh
set -e

git clone https://github.com/screwdriver-cd/toolbox.git ci
git fetch
export DOCKER_TAG=`git describe --tags`
./ci/docker-trigger.sh
meta set docker_tag $DOCKER_TAG && meta get docker_tag
