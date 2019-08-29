rm -rf build-stage2
mkdir build-stage2
cd build-stage2
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
    --with-system-zlib \
    --with-isl=${PREFIX_TOOLCHAIN} \
    --disable-nls \
    --disable-libssp \
    --disable-werror \
    --enable-languages=c,c++ \
    --enable-shared \
    --enable-linker-build-id \
    --enable-install-libiberty \
    --enable-checking=release \
    --enable-multilib \
    --with-abi=${CLFS_ABI} \
    --with-arch-32=mips32r2 \
    --with-arch-64=mips64r2 &&
make AS_FOR_TARGET="${CLFS_TARGET}-as" LD_FOR_TARGET="${CLFS_TARGET}-ld" &&
make install-gcc install-target-{libgcc,libstdc++-v3,libgomp,libatomic}
