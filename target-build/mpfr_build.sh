./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --libdir=/usr/lib64 

make && make DESTDIR=$ROOT install
