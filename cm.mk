## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := m9

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/m9/device_m9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m9
PRODUCT_NAME := cm_meizu_m9
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M9
PRODUCT_MANUFACTURER := Meizu
