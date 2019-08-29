rm -rf build-stage1
mkdir build-stage1
cd build-stage1
AR=ar \
LDFLAGS="-Wl,-rpath,${PREFIX_TOOLCHAIN}/lib" \
../configure \
    --prefix=${PREFIX_TOOLCHAIN} \
    --build=${CLFS_HOST} \
    --host=${CLFS_HOST} \
    --target=${CLFS_TARGET} \
    --with-sysroot=${SYSROOT} \
    --with-local-prefix=${SYSROOT} \
    --with-build-sysroot=${SYSROOT} \
    --with-isl=${PREFIX_TOOLCHAIN} \
    --disable-shared \
    --without-headers \
    --with-newlib \
    --disable-nls \
    --disable-decimal-float \
    --disable-libgomp \
    --disable-libssp \
    --disable-libatomic \
    --disable-libitm \
    --disable-libsanitizer \
    --disable-libquadmath \
    --disable-libvtv \
    --disable-libcilkrts \
    --disable-libcilkrts \
    --disable-threads \ 
    --disable-werror \
    --enable-multilib \
    --enable-languages=c \
    --with-abi=${CLFS_ABI} \
    --with-arch-32=mips32r2 \
    --with-arch-64=mips64r2 &&
make all-gcc all-target-libgcc && 
make install-gcc install-target-libgcc
