#!/bin/sh
set -e

# prepend grunt to any command
set -- grunt "$@"

npm install

exec "$@"
