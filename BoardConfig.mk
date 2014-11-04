include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/e610/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := e610
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=m4 lge.signed_image=false

TARGET_PREBUILT_KERNEL := device/lge/e610/kernel

TARGET_KERNEL_SOURCE := kernel/lge/SKernel

TARGET_KERNEL_CONFIG := cyanogenmod_m4_defconfig

TARGET_RECOVERY_FSTAB := device/lge/e610/fstab.m4

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e610/recovery/graphics.c

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/e610/bluetooth

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
USE_SET_METADATA := false
SKIP_SET_METADATA := true
DISABLE_OTA := true

## Webkit
PRODUCT_PACKAGES += \
    libwebcore	

# (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_ARCH_LOWMEM := true
JS_ENGINE	:= v8
HTTP	:= chrome
WITH_JIT	:= true
ENABLE_JSC_JIT	:= true
TARGET_WEBKIT_USE_MORE_MEMORY	:= true
TARGET_FORCE_CPU_UPLOAD	:= true
TARGET_USES_JELLYBEAN_BASEBAND := true
TARGET_EXTERNAL_APPS = sdcard1

# trebuchet
PRODUCT_PACKAGES += \
    Trebuchet

# Memory
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false
