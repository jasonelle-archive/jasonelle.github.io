#!/usr/bin/env sh

docker run --rm -v $PWD:/source yanqd0/hugo /bin/sh -c 'cd /source/src && hugo && mv /source/src/public /source/site && chmod 777 -Rf /source/site'