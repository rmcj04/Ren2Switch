set -e

source $DEVKITPRO/switchvars.sh
rm -rf build
mkdir build
cd build
cmake ..
make