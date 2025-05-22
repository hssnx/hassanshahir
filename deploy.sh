#!/bin/bash
set -e

git add .
git commit -m "add new writings"
git push origin main

zola build

cp -r public ../public-tmp
git checkout gh-pages
git reset --hard
git clean -fdx
cp -r ../public-tmp/* .
rm -rf ../public-tmp
git add .
git commit -m "Deploy update"
git push --force origin gh-pages
git checkout main

echo "Site updated and deployed!"

