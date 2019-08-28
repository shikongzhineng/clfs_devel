ABI=64 CC_FOR_BUILD=gcc \
  ./configure \
    --prefix=${SYSROOT}/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --libdir=${SYSROOT}/usr/lib64 

make && make install
