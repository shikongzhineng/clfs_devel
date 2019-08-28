rm -rf build-o32
mkdir build-o32
cd build-o32

echo "libc_cv_slibdir=/usr/libo32" >> config.cache
echo "libc_cv_rtlddir=/usr/libo32" >> config.cache
BUILD_CC="gcc" CC="${CLFS_TARGET}-gcc ${BUILD32}" \
AR="${CLFS_TARGET}-ar" RANLIB="${CLFS_TARGET}-ranlib" \
../configure \
    --prefix=/usr \
    --host=${CLFS_TARGET} \
    --build=${CLFS_HOST} \
    --libdir=/usr/libo32 \
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
make && ROOT=${SYSROOT} make install_root=${ROOT} install
