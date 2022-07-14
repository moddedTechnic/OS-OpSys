#!/bin/sh
set -e
. ./iso.sh

# qemu-system-$(./target-triplet-to-arch.sh $HOST) -cdrom opsys.iso
qemu-system-$(./target-triplet-to-arch.sh $HOST) -kernel sysroot/boot/opsys.kernel
