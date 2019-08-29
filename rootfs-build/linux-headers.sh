make mrproper
make ARCH=mips headers_check
make ARCH=mips INSTALL_HDR_PATH=$ROOT/usr headers_install
