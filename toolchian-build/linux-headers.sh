make mrproper
make ARCH=${CLFS_ARCH} headers_check
make ARCH=${CLFS_ARCH} INSTALL_HDR_PATH=$SYSROOT/usr headers_install
cd $SYSROOT
ln -s usr/include sys-include
