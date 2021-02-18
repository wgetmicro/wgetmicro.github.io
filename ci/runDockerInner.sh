#!/bin/sh

set -eu

if [ -x "$(command -v apt-get)" ]; then
  # Debian/Ubuntu
  apt-get update
  apt-get install -y wget
elif [ -x "$(command -v pkg)" ]; then
  pkg install wget
fi

cd /app
"$1" ./ci/runTest.sh "$1"
