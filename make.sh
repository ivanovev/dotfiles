#!/bin/bash

dir=`pwd`
bak=/tmp
files="vimrc"

for file in $files; do
    if [ -a ~/.$file ]; then
        echo "mv ~/.$file $bak"
        mv ~/.$file $bak
    fi
    ln -s $dir/$file ~/.$file
done

