echo "libc_cv_slibdir=/lib32" >> config.cache
echo "libc_cv_rtlddir=/lib32" >> config.cache
BUILD_CC="gcc" CC="${CLFS_TARGET}-gcc ${BUILDN32}" \
AR="${CLFS_TARGET}-ar" RANLIB="${CLFS_TARGET}-ranlib" \
../configure \
    --prefix=/usr \
    --host=${CLFS_TARGET} \
    --build=${CLFS_HOST} \
    --libdir=/usr/lib32 \
    --enable-kernel=3.2.0 \
    --disable-profile \
    --enable-add-ons \
    --with-binutils=/cross-tools/bin \
    --with-headers=/cross-tools/$CLFS_TARGET/usr/include/ \
    --enable-obsolete-rpc \
    --enable-multilib \
    --enable-multiarch \
    --cache-file=config.cache &&
echo "build-programs=no" >> configparms
make && make install_root=${ROOT} install
