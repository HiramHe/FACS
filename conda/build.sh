#!/bin/bash

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin

# soft connection
ln -s $PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM $PREFIX/share/$PKG_NAME

# compile c
#cd $SRC_DIR/prodigal_modified/
#make
#mv $SRC_DIR/prodigal_modified/prodigal $SRC_DIR/envs/FACS_env/bin/prodigal_sm
#cd $SRC_DIR

# save source code
cp -r ./* $outdir/

# start script
cp $RECIPE_DIR/FACS.py $outdir/FACS
chmod +x $outdir/FACS

#soft connection
ln -s $outdir/FACS $PREFIX/bin