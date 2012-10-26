## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/mx/device_mx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mx
PRODUCT_NAME := cm_meizu_mx
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := MX
PRODUCT_MANUFACTURER := Meizu
