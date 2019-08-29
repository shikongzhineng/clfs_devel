cd gettext-tools
EMACS="no" \
./configure \
    --prefix=/usr \
    --build=${CLFS_HOST} \
    --host=${CLFS_TARGET} \
    --disable-shared
make -C gnulib-lib
make -C intl pluralx.c
make -C src msgfmt msgmerge xgettext

cp -v src/{msgfmt,msgmerge,xgettext} $ROOT/bin
