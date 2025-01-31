. env.sh

BUILD_DIR="c:/ncs/v2.8.0/nrf/samples/bluetooth/peripheral_hids_keyboard/build"
SOURCE_DIR="c:/ncs/v2.8.0/nrf/samples/bluetooth/peripheral_hids_keyboard"
HEX_FILE="$BUILD_DIR/merged.hex"



west build --build-dir $BUILD_DIR $SOURCE_DIR --pristine --board nrf52dk/nrf52832 --sysbuild -- -DNCS_TOOLCHAIN_VERSION=NONE
#. env.sh


west flash --build-dir $BUILD_DIR --hex-file $HEX_FILE

nrfjprog --reset