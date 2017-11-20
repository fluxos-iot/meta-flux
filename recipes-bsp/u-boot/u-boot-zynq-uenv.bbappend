FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-zynq-uenv:"

SRC_URI_append_microzed-zynq7 = " file://uEnv-flux.txt"

do_install_append_microzed-zynq7 () {
	# Override the default uEnv.txt
	install -Dm 0644 ${WORKDIR}/uEnv-flux.txt ${D}/boot/uEnv.txt
}

do_deploy_append_microzed-zynq7 () {
	# Override the default uEnv.txt
	install -Dm 0644 ${WORKDIR}/uEnv-flux.txt ${DEPLOYDIR}/uEnv.txt
}
