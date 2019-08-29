rm -rf linux-$LINUXVER* \
	isl-$ISLVER* \
	binutils-$BINUTILSVER* \
	gcc-$GCCVER* \
	glibc-$GLIBCVER*

tar -xf $CLFS_SOURCES/linux-$LINUXVER.tar*
tar -xf $CLFS_SOURCES/isl-$ISLVER.tar* 
tar -xf $CLFS_SOURCES/binutils-$BINUTILSVER.tar*
tar -xf $CLFS_SOURCES/gcc-$GCCVER.tar*
tar -xf $CLFS_SOURCES/glibc-$GLIBCVER.tar*
