set -e

export DEVKITPRO=/opt/devkitpro
pushd pygame_sdl2-source
rm -rf gen gen-static
python2 setup.py || true
PYGAME_SDL2_STATIC=1 python2 setup.py || true
popd

pushd renpy-source/module
rm -rf gen gen-static
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py || true
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local RENPY_STATIC=1 python2 setup.py || true
popd


pushd pygame_sdl2-source
python2 setup.py build
python2 setup.py install_headers
python2 setup.py install
popd

pushd renpy-source/module
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py build
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py install
popd


bash link_sources.bash

export PREFIXARCHIVE=$(realpath renpy-switch-modules.tar.gz)

rm -rf build-switch
mkdir build-switch
pushd build-switch
mkdir local_prefix
export LOCAL_PREFIX=$(realpath local_prefix)
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
mkdir -p $LOCAL_PREFIX/lib
cp librenpy-switch-modules.a $LOCAL_PREFIX/lib/librenpy-switch-modules.a
popd

tar -czvf $PREFIXARCHIVE -C $LOCAL_PREFIX .
tar -xf renpy-switch-modules.tar.gz -C $DEVKITPRO/portlibs/switch
rm renpy-switch-modules.tar.gz
rm -rf build-switch

source /opt/devkitpro/switchvars.sh

pushd switch
rm -rf build
mkdir build
pushd build
cmake ..
make
popd
popd
mv ./switch/build/renpy-switch.nso ./raw/switch/exefs/main
rm -rf switch include source pygame_sdl2-source


rm -rf renpy_clear
mkdir renpy_clear
cp ./renpy_sdk/*/renpy.sh ./renpy_clear/renpy.sh
cp -r ./renpy_sdk/*/lib ./renpy_clear/lib
mkdir ./renpy_clear/game
cp -r ./renpy-source/renpy ./renpy_clear/renpy
cp ./renpy-source/renpy.py ./renpy_clear/renpy.py
mv ./script.rpy ./renpy_clear/game/script.rpy
cp ./renpy_sdk/*/*.exe ./renpy_clear/
rm -rf renpy-source renpy_sdk ./renpy_clear/lib/*mac*

pushd renpy_clear
./renpy.sh --compile . compile
find ./renpy/ -regex ".*\.\(pxd\|pyx\|rpym\|pxi\)" -delete  # py\|rpy\| ???
popd


rm -rf private
mkdir private
mkdir private/lib
cp -r renpy_clear/renpy private/renpy
cp -r renpy_clear/lib/python2.7/ private/lib/python2.7/
cp renpy_clear/renpy.py private/main.py
rm -rf private/renpy/common
python2 generate_private.py
rm -rf private



mkdir -p ./raw/switch/romfs/Contents/renpy/common
mkdir -p ./raw/android/assets/renpy/common
cp -r ./renpy_clear/renpy/common ./raw/switch/romfs/Contents/renpy/
cp -r ./renpy_clear/renpy/common ./raw/android/assets/renpy/
mv private.mp3 ./raw/android/assets
cp ./renpy_clear/renpy.py ./raw/switch/romfs/Contents/
unzip -qq ./raw/lib.zip -d ./raw/lib/
rm ./raw/lib.zip
cp -r ./renpy_clear/renpy/ ./raw/lib/renpy/
rm -rf ./raw/lib/renpy/common/
7z a -tzip ./raw/switch/romfs/Contents/lib.zip ./raw/lib/*
rm -rf ./raw/lib
rm ./renpy_clear/*.txt
rm -rf ./renpy_clear/game
mv ./renpy_clear/ ./raw/renpy_clear/
7z a -tzip raw.zip ./raw/*


