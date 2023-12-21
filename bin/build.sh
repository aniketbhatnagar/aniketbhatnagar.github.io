#!/bin/bash

pushd src
    echo "Building the Hugo site..."
    rm -rf public
    hugo --gc --baseURL "https://www.aniketbhatnagar.com/"

    if [ $? -ne 0 ]; then
        echo "Hugo build failed. Exiting script."
        exit 1
    fi
popd

echo "Cleaning up old build artifacts..."
rm -rf docs

echo "Moving new build artifacts to the docs directory..."
mkdir docs
cp -r src/public/* docs/.
# Copy .well-known manually as its not copied over by hugo
cp -r src/static/.well-known docs/

echo "Build completed successfully."
