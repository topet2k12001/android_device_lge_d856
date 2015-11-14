#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=d856

./../../$VENDOR/g3-common/extract-files.sh $@
