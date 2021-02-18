#!/bin/sh

set -eu

if [ -x "$(command -v apt-get)" ]; then
  # Debian/Ubuntu
  # 	apt-get update
  # apt-get install -y curl
elif [ -x "$(command -v apk)" ]; then
  # Alpine
  # apk update
  # apk add wget
  # apk add libc6-compat
elif [ -x "$(command -v pkg)" ]; then
  # FreeBSD
  pkg install wget
fi

cd /app
"$1" ./ci/runTest.sh "$1"
