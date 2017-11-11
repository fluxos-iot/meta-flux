# See https://advancedtelematic.atlassian.net/browse/PRO-2693
PREFERRED_VERSION_linux-yocto-rt_qemux86-64 = "4.4%"
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"

# U-Boot support for OTA
PREFERRED_PROVIDER_virtual/bootloader = "u-boot-ota"
UBOOT_MACHINE = "qemu-x86_defconfig"
OSTREE_BOOTLOADER ?= "u-boot"

OSTREE_KERNEL_ARGS ?= "ramdisk_size=16384 rw rootfstype=ext4 rootwait rootdelay=2 ostree_root=/dev/hda"
