require ${@bb.utils.contains('DISTRO_FEATURES', 'virtualization', 'linux-virtualization.inc', '', d)}

KMETA = "xilinx-kmeta"
KMETA_AUDIT = "yes"
KCONF_AUDIT_LEVEL = "1"
