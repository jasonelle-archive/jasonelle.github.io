#!/usr/bin/env sh

set -e

rm -rf src

git commit -m 'added site'

git pull origin master

cp -rf ./site/* .

rm -rf ./site

git add --all *
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master
echo "Deployed"