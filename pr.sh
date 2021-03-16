#!/bin/bash

git checkout main
git checkout -b pr$1
echo "pr$1" >> README.md
git add .
git commit -S -m "Making PR from $1"
git push origin pr$1
git checkout main
