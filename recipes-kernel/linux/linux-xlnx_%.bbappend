FILESEXTRAPATHS_prepend := "${THISDIR}/linux-xlnx:"

require ${@bb.utils.contains('DISTRO_FEATURES', 'virtualization', 'linux-virtualization.inc', '', d)}

SRC_URI_append = " file://cfg/systemd.scc"
