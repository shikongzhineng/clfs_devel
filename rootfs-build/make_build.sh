patch -p1 -i ../make-4.2-default-cxx.patch
patch -p1 -i ../make-4.2.1-glob-internals.patch
patch -p1 -i ../make-4.2.1-glob-v2.patch
patch -p1 -i ../make-4.2.1-guile-2.2.patch
./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --libdir=/usr/lib64

make && make DESTDIR=$ROOT install
