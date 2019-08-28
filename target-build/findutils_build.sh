echo "gl_cv_func_wcwidth_works=yes" > config.cache
echo "ac_cv_func_fnmatch_gnu=yes" >> config.cache
./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --cache-file=config.cache

make && make DESTDIR=$ROOT install
