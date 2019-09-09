       cd ./linux-$LINUXVER/ &&
       sh ../linux-headers.sh && 
       cd ../isl-$ISLVER/ && 
       sh ../isl-build.sh && 
       cd ../binutils-$BINUTILSVER/ && 
       sh ../binutils-build.sh && 
       cd ../gcc-$GCCVER/ && 
       sh ../gcc-build-stage1.sh && 
       cd ../glibc-$GLIBCVER/ && 
       sh ../glibc-build-o32.sh && 
       sh ../glibc-build-n32.sh && 
       sh ../glibc-build-n64.sh && 
       cd ../gcc-$GCCVER/ && 
       sh ../gcc-build-stage2.sh
