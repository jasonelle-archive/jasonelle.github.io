#!/usr/bin/env sh

set -e

mv -f ./src/public ./site

rm -rf src

git clone -b master https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git .

find . -not -name ".git" | xargs rm -rf

cp -r ./site/* ./

rm -rf ./site

git add --all *
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master

echo "Deployed"