SUMMARY = "A small image just capable of allowing a device to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image

IMAGE_INSTALL += "balena"

IMAGE_ROOTFS_SIZE ?= "8192"
IMAGE_ROOTFS_EXTRA_SPACE_append = "${@bb.utils.contains("DISTRO_FEATURES", "systemd", " + 4096", "" ,d)}"

IMAGE_FSTYPES += "wic"

WKS_FILE = "${IMAGE_BASENAME}.wks"
WKS_FILE_DEPENDS = "mtools-native dosfstools-native e2fsprogs-native parted-native"
