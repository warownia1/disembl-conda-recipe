#! /bin/bash
set -ev

if [ -z $GCC ]; then GCC=${CC-gcc}; fi
${GCC} -O3 disembl.c -o disembl
mkdir -p $PREFIX/bin
cp disembl $PREFIX/bin/jensen_net
cp DisEMBL.py $PREFIX/bin/DisEMBL
chmod u=rwx,g=rx,o=r $PREFIX/bin/DisEMBL

