#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/opsys.kernel isodir/boot/opsys.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "opsys" {
	multiboot /boot/opsys.kernel
}
EOF
grub-mkrescue -o opsys.iso isodir
