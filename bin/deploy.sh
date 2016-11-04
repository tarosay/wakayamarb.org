#!/bin/bash

if [[ $CI != "true" && $TRAVIS != "true" ]]; then
  echo 'Not callable witout travis CI.'
  exit 0
fi

if [[ $2 != "$3" ]]; then
  echo "Not suitable to deploy. $2 expected to be $3."
  exit 0
fi

if [[ $TRAVIS_PULL_REQUEST == "true" ]]; then
  echo 'Not deploying from Pull Request.'
  exit 0
fi

echo 'Deploying to GitHub page brnch..'

GITHUB_BRANCH_TO_DEPLOY=$1

rm -rf .git/
pwd
git init
git config --global user.name "wakayamarb"
git config --global user.email "wakayamarb@travis-ci.org"
git remote add origin "git@github.com:wakayamarb.wakayamarb.org.git"
git checkout -b $GITHUB_BRANCH_TO_DEPLOY
git add .
git commit -m "Deploy from travis"
git push --force origin $GITHUB_BRANCH_TO_DEPLOY
