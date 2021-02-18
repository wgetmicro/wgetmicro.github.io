#!/bin/sh

set -eu

[ -x "$(command -v pkg)" ] && pkg install wget

cd /app
"$1" ./ci/runTest.sh "$1"
