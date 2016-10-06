#!/bin/bash


# Functions
function init {
	echo "Initializing git"
	mkdir _site
	cd _site
	git init
	git remote add deploy "root@104.236.116.254:/www/html"
	git config user.name "Travis CI"
	git config user.email "jonas@steps.fm"
	echo "Fetching from remote"
	git fetch deploy
	git checkout -b build
	cd ..
}

function build {
	echo "Building..."
	echo "Committing the build"
	cd _site
	git add .
	git commit -q -m "Build #$TRAVIS_BUILD_NUMBER"
	cd ..
}

init
build
