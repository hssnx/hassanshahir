#!/bin/bash
set -e

git add .
git commit -m "add new writings"
git push origin main

rm -rf ../public-tmp       # <--- clean up any old build
zola build --output-dir ../public-tmp

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
