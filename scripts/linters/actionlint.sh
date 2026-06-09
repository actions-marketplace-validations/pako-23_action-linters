#!/bin/sh -eu

find ${GITHUB_WORKSPACE}/.github/workflows/ -name '*.yaml' -o -name '*.yml' -exec actionlint {} + 2>&1
