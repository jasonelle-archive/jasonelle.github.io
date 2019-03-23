#!/usr/bin/env sh

set -e

rm -rf src
rm -rf .git

echo "Clonning Master"

git clone -b master https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git web

cd web
find . -not -name ".git" | xargs rm -rf

cp -rf ../site/* .

rm -rf ../site

git add --all *
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master
echo "Deployed"