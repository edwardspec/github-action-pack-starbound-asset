#!/bin/bash -e

OUTPUT_FILENAME="$1"

/asset_packer . $OUTPUT_FILENAME

ls -lh $OUTPUT_FILENAME
