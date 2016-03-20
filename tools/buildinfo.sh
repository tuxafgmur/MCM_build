#!/bin/bash
echo "ro.build.id=$BUILD_ID"
echo "ro.build.display.id=$(a=${BUILD_DISPLAY_ID/-userdebug/}; echo ${a/ test-keys/})"
echo "ro.build.version.incremental=$BUILD_NUMBER"
echo "ro.build.version.sdk=$PLATFORM_SDK_VERSION"
echo "ro.build.version.preview_sdk=$PLATFORM_PREVIEW_SDK_VERSION"
echo "ro.build.version.codename=$PLATFORM_VERSION_CODENAME"
echo "ro.build.version.all_codenames=$PLATFORM_VERSION_ALL_CODENAMES"
echo "ro.build.version.release=$PLATFORM_VERSION"
echo "ro.build.version.security_patch=$PLATFORM_SECURITY_PATCH"
echo "ro.build.version.base_os=$PLATFORM_BASE_OS"
echo "ro.build.date=`date`"
echo "ro.build.date.utc=`date +%s`"
echo "ro.build.type=$TARGET_BUILD_TYPE"
echo "ro.build.user=$USER"
echo "ro.build.host=`hostname`"
echo "ro.build.tags=$BUILD_VERSION_TAGS"
echo "ro.build.flavor=$TARGET_BUILD_FLAVOR"
echo "ro.build.characteristics=$TARGET_AAPT_CHARACTERISTICS"
if [ "$TARGET_UNIFIED_DEVICE" == "" ] ; then
  echo "ro.build.product=$TARGET_DEVICE"
  echo "ro.product.model=$PRODUCT_MODEL"
  echo "ro.product.device=$TARGET_DEVICE"
  echo "ro.build.description=$PRIVATE_BUILD_DESC"
  echo "ro.build.fingerprint=$BUILD_FINGERPRINT"
  if [ -n "$BUILD_THUMBPRINT" ] ; then
    echo "ro.build.thumbprint=$BUILD_THUMBPRINT"
  fi
fi
echo "ro.product.brand=$PRODUCT_BRAND"
echo "ro.product.name=$PRODUCT_NAME"
echo "ro.product.board=$TARGET_BOOTLOADER_BOARD_NAME"
echo "ro.product.cpu.abi=$TARGET_CPU_ABI"
if [ -n "$TARGET_CPU_ABI2" ] ; then
  echo "ro.product.cpu.abi2=$TARGET_CPU_ABI2"
fi
echo "ro.product.cpu.abilist=$TARGET_CPU_ABI_LIST"
echo "ro.product.cpu.abilist32=$TARGET_CPU_ABI_LIST_32_BIT"
if [ -n "$TARGET_CPU_ABI_LIST_64_BIT" ] ; then
echo "ro.product.cpu.abilist64=$TARGET_CPU_ABI_LIST_64_BIT"
fi
echo "ro.product.manufacturer=$PRODUCT_MANUFACTURER"
if [ -n "$PRODUCT_DEFAULT_LOCALE" ] ; then
  echo "ro.product.locale=$PRODUCT_DEFAULT_LOCALE"
fi
echo "ro.board.platform=$TARGET_BOARD_PLATFORM"
echo "ro.rom.device=$CM_DEVICE"
echo "ro.wifi.channels=$PRODUCT_DEFAULT_WIFI_CHANNELS"
