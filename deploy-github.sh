#!/usr/bin/env sh

# Exit on any error
set -e

rm -rf src
rm -rf .git

# get the master branch to the web dir
git clone -b master https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git web
cd web

# remove git repo
# continue exec if error
find . -not -path "./.git*" -not -name "." | xargs rm -rf || true

# copy files to the current dir
cp -rf ../site/* .

# removing not used folder
rm -rf ../site

# add changes to the commit
git add .
git commit -m "deployed docs (travis build ${TRAVIS_BUILD_NUMBER})"
git push -q -f origin master
echo "Deployed"