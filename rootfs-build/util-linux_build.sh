    ./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --libdir=/usr/lib64 \
    --disable-makeinstall-chown \
    --disable-makeinstall-setuid \
    --disable-nologin \
    --without-python \
    --without-systemd \
    --without-tinfo \
    --without-ncursesw \
    --without-ncurses \
    --disable-hardlink

make && make DESTDIR=$ROOT install
