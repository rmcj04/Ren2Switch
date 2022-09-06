
curl -LOC - https://github.com/uyjulian/pacman-packages/releases/download/v2.2.3-1-pkgbuild-helpers/devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz
/bin/bash -c 'dkp-pacman -U --noconfirm devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz'
curl -LOC - https://github.com/uyjulian/switch-libpython2/releases/download/v2.7.18-switch1/python27-switch.tar.gz
/bin/bash -c 'tar -xf python27-switch.tar.gz -C $DEVKITPRO/portlibs/switch'
curl -LOC - https://github.com/uyjulian/switch-librenpy-switch-modules/releases/download/v7.3.5-switch2/renpy-switch-modules.tar.gz
/bin/bash -c 'tar -xf renpy-switch-modules.tar.gz -C $DEVKITPRO/portlibs/switch'
/bin/bash -c 'sed -i'"'"'.bak'"'"' '"'"'s/set(CMAKE_EXE_LINKER_FLAGS_INIT "/set(CMAKE_EXE_LINKER_FLAGS_INIT "-fPIC /'"'"' $DEVKITPRO/switch.cmake' 
