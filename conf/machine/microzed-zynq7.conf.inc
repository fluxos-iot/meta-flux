# Override IMAGE_BOOT_FILES
IMAGE_BOOT_FILES_microzed-zynq7 = "${UBOOT_BINARY} boot.bin ${MACHINE}.dtb uEnv.txt"

OSTREE_KERNEL_ARGS = "console=ttyPS0,115200 ostree_root=/dev/mmcblk0p2 root=/dev/ram0 rootfstype=ext4 rw rootwait rootdelay=2 earlyprintk"
