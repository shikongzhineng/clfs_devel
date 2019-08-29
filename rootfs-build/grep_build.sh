./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --without-included-regex
 make && make DESTDIR=$ROOT install
