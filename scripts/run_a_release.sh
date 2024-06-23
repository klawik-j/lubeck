#!/bin/bash

set -e

# scripts/build_package.sh
# scripts/upload_package.sh

# Extract version string
export PACKAGE_VERSION=$(grep "__version__ =" src/hemse/version.py | awk -F'=' '{print $3}' | tr -d " '" | tr '+' '-')
export PACKAGE_VERSION='0.1.0'

# echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
scripts/build_prod_image.sh
# scripts/upload_prod_image.sh
# docker logout