#!/bin/sh

set -e

if [ "${TRAVIS_BRANCH}" != "develop" ]
then
  echo "Commmit not on develop branch"
  exit 66
fi

if [ -z "${GH_TOKEN}" ]
then
  echo "Github Token not Found"
  exit 99
fi