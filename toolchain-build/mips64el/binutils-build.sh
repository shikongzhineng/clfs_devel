rm -rf build
mkdir build
cd build
AR=ar AS=as \
../configure     \
	--prefix=${PREFIX_TOOLCHAIN}   \
	--build=${CLFS_HOST}  \
	--host=${CLFS_HOST}     \
	--target=${CLFS_TARGET}  \
	--with-sysroot=${SYSROOT} \
	--with-gnu-as \
	--with-gnu-ld \
	--with-system-zlib \
	--disable-nls \
	--enable-multilib \
	--enable-gold \
	--enable-plugins \
	--enable-64-bit-bfd \
	--disable-gdb \
	--disable-werror \
	--enable-shared \
	--enable-threads &&
make && make install
