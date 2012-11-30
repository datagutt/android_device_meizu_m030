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

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=M03x TARGET_DEVICE=mx BUILD_FINGERPRINT="Meizu/meizu_mx/mx:4.0.3/IML74K/eng.mobileapp.20120725.003030:user/test-keys" PRIVATE_BUILD_DESC="meizu_mx-user 4.0.3 test-keys 7929_zh-HK"


