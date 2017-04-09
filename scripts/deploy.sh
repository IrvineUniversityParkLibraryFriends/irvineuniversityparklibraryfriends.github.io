#!/bin/bash
set -e

GIT_DEPLOY_REPO=$(jq --raw-output '.repository' package.json)

cd dist
rm -rf .git
git init
git add .
git commit -m "Deploy to GitHub Pages"
git push --force "${GIT_DEPLOY_REPO}" master:gh-pages
