#!/bin/sh

EXPORT_SCRIPTS="run-qemu"
THIS_DIR=$(dirname $0)

for script in $EXPORT_SCRIPTS; do
    if [ -x $THIS_DIR/$script ]; then
        mkdir -p $THIS_DIR/../scripts
        ln -srfT $THIS_DIR/$script $THIS_DIR/../scripts/$script
    fi
done
