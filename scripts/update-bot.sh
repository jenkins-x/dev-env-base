#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

VERSION=$1
jx step create pr regex --regex "DEV_ENV_BASE_VERSION=(.*)" --version $VERSION --files dev-env --repo https://github.com/jenkins-x/dev-env.git
