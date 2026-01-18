sudo rm -rf initramfs.cpio.gz
find . -print0 | cpio --null -ov --format=newc > ./initramfs.cpio
gzip -9 initramfs.cpio
cp initramfs.cpio.gz /srv/source/linux-6.9/initramfs.cpio.gz
