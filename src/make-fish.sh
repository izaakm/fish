#!/usr/bin/env bash

set -e

readonly githome="$(git rev-parse --show-toplevel)"
readonly outfish="${githome}/data/bowl/$(date +%s).fish"

echo $githome
echo $outfish

mkdir -p "$(dirname $outfish)"

dd if=/dev/urandom of="$outfish" count=1 bs=1M

exit 0
