./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET}

make && make DESTDIR=$ROOT install
