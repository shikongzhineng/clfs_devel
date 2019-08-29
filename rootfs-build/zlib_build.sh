./configure \
    --prefix=/usr \
    --libdir=/usr/lib64

make && make DESTDIR=$ROOT install
