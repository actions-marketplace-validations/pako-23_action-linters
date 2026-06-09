#!/bin/sh -eu

cd "${GITHUB_WORKSPACE}"

CONFIG=''
if test -f '.yamllint'; then
    CONFIG='-c .yamllint'
fi

exec yamllint $CONFIG -f standard . 2>&1
