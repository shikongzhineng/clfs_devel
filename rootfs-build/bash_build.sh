cat > config.cache << "EOF"
ac_cv_func_mmap_fixed_mapped=yes
ac_cv_func_strcoll_works=yes
ac_cv_func_working_mktime=yes
bash_cv_func_sigsetjmp=present
bash_cv_getcwd_malloc=yes
bash_cv_job_control_missing=present
bash_cv_printf_a_format=yes
bash_cv_sys_named_pipes=present
bash_cv_ulimit_maxfds=yes
bash_cv_under_sys_siglist=yes
bash_cv_unusable_rtsigs=no
gt_cv_int_divbyzero_sigfpe=yes
EOF

./configure     \
	--prefix=/ \
	--build=${CLFS_HOST} \
	--host=${CLFS_TARGET} \
	--without-bash-malloc \
	--cache-file=config.cache \
	--libdir=/lib64 \
	--includedir=/usr/include \
	--datarootdir=/usr/share
	
make 
ROOT=${ROOT}
make DESTDIR=${ROOT} install 
cd ${ROOT}/bin/
ln -s bash sh
