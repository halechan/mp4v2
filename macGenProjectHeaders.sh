#!/bin/bash

headers="Headers"
if [ -d "$headers" ] ; then
	rm -rf $headers
fi

mkdir $headers

cp -a src $headers/src
cp -a libplatform $headers/libplatform
cp -a libutil $headers/libutil

pushd .
cd $headers
find . -name "*.*" | gsed -e '/\(\.h\|\.tcc\)$/d;' | xargs rm -r
find . -name "*win32*" | xargs rm
popd
