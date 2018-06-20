#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := SRPQB27A000RU
TARGET_BOARD_PLATFORM := mt6757
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_OTA_ASSERT_DEVICE := jadelte,jadeltechn

TARGET_PREBUILT_KERNEL := device/samsung/jadelte/kernel
TARGET_PREBUILT_DTB := device/samsung/jadelte/dt.img
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/jadelte/mkbootimg.mk
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04f88000 --tags_offset 0x03f88000

BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS:= true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
TW_INCLUDE_NTFS_3G := true 
TW_NO_EXFAT_FUSE := true
TW_DEVICE_VERSION := 1
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/devices/platform/gen-panel-backlight/backlight/panel/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/11270000.usb3/musb-hdrc/gadget/lun0/file"
TW_MAX_BRIGHTNESS := 255
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MTP_DEVICE := "/dev/mtp_usb"

#color correction
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

#speed up wipe
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
