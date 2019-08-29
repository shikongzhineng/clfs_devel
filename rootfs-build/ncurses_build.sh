patch -p1 -i ../ncurses-6.0-bash_fix-1.patch
patch -p1 -i ../ncurses-6.0-cppflags-cross.patch
patch -p1 -i ../ncurses-6.0-rxvt-unicode-9.15.patch
patch -p1 -i ../ncurses-6.0-ticlib.patch
patch -p1 -i ../ncurses-6.0-pkg-config.patch

./configure \
    --prefix=/usr \
    --with-shared \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --without-debug \
    --without-ada \
    --with-build-cc=gcc \
    --disable-overwrite \
    --with-termlib --with-ticlib \
    --libdir=/usr/lib64 

make 

make DESTDIR=${ROOT} install
