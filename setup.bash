set -e

export DEVKITPRO=/opt/devkitpro
export RENPY_VER=7.6.1
export PYGAME_SDL2_VER=2.1.0


apt-get -y update
apt-get -y install python2.7 python-pip p7zip-full cython libsdl2-dev libsdl2-image-dev libjpeg-dev libpng-dev libsdl2-ttf-dev libsdl2-mixer-dev libavformat-dev libfreetype6-dev libswscale-dev libglew-dev libfribidi-dev libavcodec-dev  libswresample-dev libsdl2-gfx-dev libgl1-mesa-glx
pip2 install future six typing requests ecdsa pefile==2019.4.18 Cython==0.29.36

curl -LOC - https://github.com/Otorhin/scripts/releases/download/oof/devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz
curl -LOC - https://github.com/Otorhin/scripts/releases/download/oof/python27-switch.tar.gz
curl -LOC - https://github.com/Otorhin/scripts/releases/download/oof/switch-libfribidi-1.0.12-1-any.pkg.tar.xz
dkp-pacman -U --noconfirm devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz
dkp-pacman -U --noconfirm switch-libfribidi-1.0.12-1-any.pkg.tar.xz
tar -xf python27-switch.tar.gz -C $DEVKITPRO/portlibs/switch

rm devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz
rm switch-libfribidi-1.0.12-1-any.pkg.tar.xz
rm python27-switch.tar.gz

/bin/bash -c 'sed -i'"'"'.bak'"'"' '"'"'s/set(CMAKE_EXE_LINKER_FLAGS_INIT "/set(CMAKE_EXE_LINKER_FLAGS_INIT "-fPIC /'"'"' $DEVKITPRO/switch.cmake'


curl -LOC - https://www.renpy.org/dl/$RENPY_VER/pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$RENPY_VER.tar.gz
curl -LOC - https://www.renpy.org/dl/$RENPY_VER/renpy-$RENPY_VER-sdk.zip
curl -LOC - https://www.renpy.org/dl/$RENPY_VER/renpy-$RENPY_VER-source.tar.bz2
curl -LOC - https://www.renpy.org/dl/$RENPY_VER/android-native-symbols.zip
curl -LOC - https://dl.otorh.in/github/rawproject.zip


rm -rf pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$RENPY_VER pygame_sdl2-source
tar -xf pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$RENPY_VER.tar.gz
mv pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$RENPY_VER pygame_sdl2-source
rm pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$RENPY_VER.tar.gz

rm -rf renpy-$RENPY_VER-source renpy-source
tar -xf renpy-$RENPY_VER-source.tar.bz2
mv renpy-$RENPY_VER-source renpy-source
rm renpy-$RENPY_VER-source.tar.bz2

rm -rf renpy-$RENPY_VER-sdk renpy_sdk
unzip -qq renpy-$RENPY_VER-sdk.zip -d renpy_sdk
rm renpy-$RENPY_VER-sdk.zip

rm -rf raw
unzip -qq rawproject.zip -d raw
rm rawproject.zip

rm -rf android-native-symbols renpy_androidlib ./raw/android/lib
unzip -qq android-native-symbols.zip -d ./raw/android/lib
rm -rf ./raw/android/lib/x86_64/
rm android-native-symbols.zip

pushd renpy-source
patch -p1 < ../renpy.patch
pushd module
rm -rf gen gen-static
popd
popd
pushd pygame_sdl2-source
rm -rf gen gen-static
popd
