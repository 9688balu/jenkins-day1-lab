#!/bin/bash

set -e

APP_NAME=${APP_NAME:-day1-app}

echo "Building $APP_NAME ..."

rm -rf dist
mkdir -p dist

cp index.html dist/

echo "app=$APP_NAME" > dist/build-info.txt
echo "build=${BUILD_NUMBER:-local}" >> dist/build-info.txt

echo "Build complete"
