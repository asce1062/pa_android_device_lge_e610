# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit device configuration
$(call inherit-product, device/lge/e610/device.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL5

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e610
PRODUCT_NAME := pa_e610
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E610
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=000001 \
    PRODUCT_NAME=m4_open_eu \
    PRIVATE_BUILD_DESC="e610-userdebug 4.4.2 KVT49L 000001 release-keys" \
    BUILD_FINGERPRINT="lge/e610/4.4.2/KVT49L/000001:userdebug/release-keys"
    
# trebuchet
PRODUCT_PACKAGES += Trebuchet

# Leds
PRODUCT_PACKAGES += Leds
