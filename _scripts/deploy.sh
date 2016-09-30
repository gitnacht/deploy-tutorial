#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd _site
    git init

    git remote add deploy "deploy@46.101.179.55:/www/html"
    git config user.name "jonas28"
    git config user.email "jonas@steps.fm"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi
