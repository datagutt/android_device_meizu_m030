## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := m030

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/mx/full_m030.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m030
PRODUCT_NAME := cm_m030
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := m030
PRODUCT_MANUFACTURER := Meizu

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=M03x TARGET_DEVICE=mx BUILD_FINGERPRINT="Meizu/meizu_mx/mx:4.0.3/IML74K/eng.mobileapp.20120725.003030:user/test-keys" PRIVATE_BUILD_DESC="meizu_mx-user 4.0.3 test-keys 7929_zh-HK"


