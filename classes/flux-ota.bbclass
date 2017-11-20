IMAGE_INSTALL_append = " ostree os-release"
IMAGE_CLASSES += "image_types_ostree image_types_ota"
IMAGE_FSTYPES += "ostreepush otaimg wic"

IMAGE_TYPEDEP_wic += "otaimg"

WKS_FILE = "sdimage-ota-${MACHINE}.wks"
WKS_FILE_DEPENDS = "mtools-native dosfstools-native e2fsprogs-native parted-native"

# Please redefine OSTREE_REPO in order to have a persistent OSTree repo
OSTREE_REPO ?= "${DEPLOY_DIR_IMAGE}/ostree_repo"
# For UPTANE operation, OSTREE_BRANCHNAME must start with "${MACHINE}-"
OSTREE_BRANCHNAME ?= "${MACHINE}-ota"
OSTREE_OSNAME ?= "flux-essential"
OSTREE_INITRAMFS_IMAGE ?= "initramfs-ostree-image"
