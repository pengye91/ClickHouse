#!/usr/bin/env bash
set -e

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"
docker run --mount=type=bind,source=$SCRIPTPATH,destination=/ClickHouse --workdir=/ClickHouse --env=CONFIG "$1" "$2"