#!/bin/bash

set -e

export VENDOR=lge
export DEVICE=d858hk
./../../$VENDOR/g3-common/setup-makefiles.sh $@
