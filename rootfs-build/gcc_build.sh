#!/bin/env sh
  ../configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --target=${CLFS_TARGET} \
    --with-system-zlib \
    --disable-static \
    --enable-install-libiberty \
    --enable-shared \
    --enable-languages=c,c++ \
    --enable-multiarch \
    --enable-multilib \
    --with-abi=64 \
    --with-arch-32=mips32r2 \
    --with-arch-64=mips64r2 &&

make AS_FOR_TARGET="${CLFS_TARGET}-as" LD_FOR_TARGET="${CLFS_TARGET}-ld" && 

make DESTDIR=$ROOT install
