#!/usr/bin/env sh
hugo
mv -f public ../site
cp CNAME ../site
cp .nojekyll ../site