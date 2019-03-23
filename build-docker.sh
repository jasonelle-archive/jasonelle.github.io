#!/usr/bin/env sh

docker run --rm -v $PWD:/src yanqd0/hugo /bin/sh -c 'cd ./src && ./build.sh'