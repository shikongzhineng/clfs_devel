cp -v Makefile{,.orig}
sed -e 's@^\(all:.*\) test@\1@g' \
    -e 's@/lib\(/\| \|$\)@/lib64\1@g' Makefile.orig > Makefile
make CC="${CC}" AR="${AR}" RANLIB="${RANLIB}"
make PREFIX=$ROOT/usr/ install
