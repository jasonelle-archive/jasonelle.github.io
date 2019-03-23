#!/usr/bin/env sh

set -e

rm -rf src

cp -r ./site/* .

rm -rf ./site

git add --all *
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master
echo "Deployed"