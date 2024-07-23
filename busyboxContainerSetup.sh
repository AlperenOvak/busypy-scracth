#!/usr/bin/env sh

if [ -d rootfs ]
then
	rm -rf rootfs/
fi

mkdir rootfs
mkdir rootfs/bin
mkdir rootfs/etc
mkdir rootfs/root

if [ ! -f busybox ] 
then
	wget https://busybox.net/downloads/binaries/1.35.0-x86_64-linux-musl/busybox
fi

chmod +x busybox

echo "root:x:0:0:root:/root:/bin/sh" > rootfs/etc/passwd
echo "root:x:0:" > rootfs/etc/group

docker build . -t busybox

docker run -it busybox


