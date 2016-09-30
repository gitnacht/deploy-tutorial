#!/bin/bash
set -x

    cd _site
    git init

    git remote add deploy "deploy@46.101.179.55:/www/html"
    git config user.name "jonas28"
    git config user.email "jonas@steps.fm"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
