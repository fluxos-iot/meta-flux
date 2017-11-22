do_compile_append () {
	sed -i "s#kernel_load_address=.*#kernel_load_address=0x20C0000#" ${WORKDIR}/uEnv.txt
	sed -i "s#devicetree_load_address=.*#devicetree_load_address=0x2000000#" ${WORKDIR}/uEnv.txt
	sed -i "/devicetree_load_address=/aramdisk_load_address=0x3000000" ${WORKDIR}/uEnv.txt
	sed -i "/ramdisk_load_address=/aenvscript_load_address=0x2080000" ${WORKDIR}/uEnv.txt
	sed -i "s#loadkernel=.*#loadkernel=ext4load mmc 0:2 \${kernel_load_address} /boot/\${kernel_image}#" ${WORKDIR}/uEnv.txt
	sed -i "/loadkernel=/aloadramdisk=ext4load mmc 0:2 \${ramdisk_load_address} /boot/\${ramdisk_image}" ${WORKDIR}/uEnv.txt
	sed -i "/loadramdisk=/aloadenvscript=ext4load mmc 0:2 \${envscript_load_address} /boot/loader/uEnv.txt && env import -t \${envscript_load_address} 0x40000" ${WORKDIR}/uEnv.txt
	sed -i "/bootargs=/d" ${WORKDIR}/uEnv.txt
	sed -i "/bootkernel=/d" ${WORKDIR}/uEnv.txt
	sed -i "/uenvcmd=/d" ${WORKDIR}/uEnv.txt
	echo "uenvcmd=run loadenvscript && run loadkernel && run loaddtb && run loadramdisk && bootm \${kernel_load_address} \${ramdisk_load_address} \${devicetree_load_address}" >> ${WORKDIR}/uEnv.txt
}

