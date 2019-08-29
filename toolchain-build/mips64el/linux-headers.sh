#!/bin/sh
make mrproper
make ARCH=${CLFS_KARCH} headers_check
make ARCH=${CLFS_KARCH} INSTALL_HDR_PATH=${SYSROOT}/usr headers_install
cd ${SYSROOT}
ln -s usr/include sys-include
