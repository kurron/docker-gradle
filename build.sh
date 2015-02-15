#!/bin/bash

# run this script giving it a single argument eg. ./build.sh tasks

docker run --name="Gradle" --volume $(pwd):/pwd --volume $HOME:/home --workdir=/pwd --user=$(id -u $(whoami)):$(id -g $(whoami)) --env RUNAS=$USER  --rm --attach stdout --attach stderr --interactive kurron/gradle "$@"