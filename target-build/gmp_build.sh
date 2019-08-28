ABI=64 CC_FOR_BUILD=gcc \
./configure \
	--prefix=/usr \
	--build=${CLFS_HOST} \
	--host=${CLFS_TARGET} \
	--libdir=/usr/lib64 \
	--enable-cxx

make && make DESTDIR=$ROOT install
