#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=d858hk
./../../$VENDOR/g3-common/extract-files.sh $@
