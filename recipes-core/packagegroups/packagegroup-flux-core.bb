SUMMARY = "Flux Core Package Group"
LICENSE = "Apache-2.0"

PR = "r1"

inherit packagegroup

# core packages
RDEPENDS_${PN} += " \
        flux-mount \
        flux-filesystem-expand \
        balena \
        kernel-modules \
        networkmanager \
     "

