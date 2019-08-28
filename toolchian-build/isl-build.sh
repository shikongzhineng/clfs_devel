rm -rf build
mkdir build
cd build
../configure \
    --prefix=${PREFIX_TOOLCHAIN} \
    --disable-static &&
make && make install
