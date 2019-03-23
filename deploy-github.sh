#!/usr/bin/env sh

# Exit on any error
set -e

rm -rf src
rm -rf .git

git clone -b master https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git web

cd web

#                                                         continue exec if error
find . -not -path "./.git*" -not -name "." | xargs rm -rf || true

cp -rf ../site/* .

rm -rf ../site

git add --all *
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master
echo "Deployed"