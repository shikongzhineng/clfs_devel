./configure \
    --prefix=/ \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --enable-install-program=hostname \
    --cache-file=config.cache \
    --libexecdir=/usr/libexec \
    --datarootdir=/usr/share

sed -i -e 's/^man1_MANS/#man1_MANS/' Makefile
make && make DESTDIR=$ROOT install
