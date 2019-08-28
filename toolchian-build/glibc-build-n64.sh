rm -rf build-n64
mkdir build-n64
cd build-n64

echo "libc_cv_slibdir=/lib64" >> config.cache
echo "libc_cv_rtlddir=/lib64" >> config.cache
BUILD_CC="gcc" CC="${CLFS_TARGET}-gcc ${BUILD64}" \
AR="${CLFS_TARGET}-ar" RANLIB="${CLFS_TARGET}-ranlib" \
../configure \
    --prefix=/usr \
    --host=${CLFS_TARGET} \
    --build=${CLFS_HOST} \
    --libdir=/usr/lib64 \
    --enable-kernel=3.2.0 \
    --disable-profile \
    --enable-add-ons \
    --with-binutils=${PREFIX_TOOLCHAIN}/bin \
    --with-headers=${SYSROOT}/usr/include/ \
    --enable-obsolete-rpc \
    --enable-multilib \
    --enable-multiarch \
    --cache-file=config.cache &&
echo "build-programs=no" >> configparms 
make && make install_root=${SYSROOT} install
