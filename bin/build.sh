#!/bin/bash

pushd src
    echo "Building the Hugo site..."
    rm -rf public
    hugo --gc --minify --baseURL https://www.aniketbhatnagar.com/

    if [ $? -ne 0 ]; then
        echo "Hugo build failed. Exiting script."
        exit 1
    fi
popd

echo "Cleaning up old build artifacts..."
find . -mindepth 1 -maxdepth 1 ! -name 'bin' ! -name 'src' ! -name 'README*' ! -name '.git*' -exec rm -rf {} \;

echo "Moving new build artifacts to the parent directory..."
cp -r src/public/* .

echo "Build completed successfully."
