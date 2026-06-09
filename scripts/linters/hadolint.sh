#!/bin/sh -eu

cd "${GITHUB_WORKSPACE}"

CONFIG=''
if test -f '.hadolint.yaml'; then
    CONFIG='-c .hadolint.yaml'
elif test -f '.hadolint.yml'; then
    CONFIG='-c .hadolint.yml'
fi

find . -name 'Dockerfile*' -exec hadolint --no-color $CONFIG {} + 2>&1
