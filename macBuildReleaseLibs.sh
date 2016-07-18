# clean up an existing build folder (if any), make a new one, and pop into it
rm -rf build
mkdir build
cd build

# configure a release version, build it, and copy it to it's destination
../configure --disable-debug --disable-fvisibility CXXFLAGS="-stdlib=libc++ -mmacosx-version-min=10.10" CFLAGS="-mmacosx-version-min=10.10"
#make -j8
make
cp .libs/*.a ../lib/mac/Release

# pop back out and clean up
cd ..
rm -rf build
