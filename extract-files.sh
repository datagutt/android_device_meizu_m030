#!/bin/sh

# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=mx
MANUFACTURER=meizu

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

sleep 3

adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/bin/rild

adb pull /system/etc/firmware/isp_firmware.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/etc/firmware/isp_firmware.bin

adb pull /system/lib/egl/libEGL_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/egl/libEGL_mali.so
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/egl/libGLES_android.so
adb pull /system/lib/egl/libGLESv1_CM_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/egl/libGLESv1_CM_mali.so
adb pull /system/lib/egl/libGLESv2_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/egl/libGLESv2_mali.so

adb pull /system/lib/hw/audio_policy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/audio_policy.so
adb pull /system/lib/hw/audio_policy.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/audio_policy.mx.so
adb pull /system/lib/hw/audio.a2dp.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/audio.a2dp.default.so
adb pull /system/lib/hw/audio.primary.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/audio.primary.default.so
adb pull /system/lib/hw/audio.primary.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/audio.primary.mx.so
adb pull /system/lib/hw/camera.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/camera.mx.so
adb pull /system/lib/hw/gps.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/gps.mx.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/gralloc.default.so
adb pull /system/lib/hw/hwcomposer.exynos4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/hwcomposer.exynos4.so
adb pull /system/lib/hw/ledlights.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/ledlights.mx.so 
adb pull /system/lib/hw/lights.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/lights.mx.so
adb pull /system/lib/hw/sensors.mx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/sensors.mx.so

adb pull /system/lib/libreference-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libreference-ril.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libril.so
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsec-ril.so
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsecril-client.so

adb pull /system/usr/idc/m03x_ts.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/idc/m03x_ts.idc
adb pull /system/usr/idc/qwerty.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/idc/qwerty.idc
adb pull /system/usr/idc/qwerty2.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/idc/qwerty2.idc
adb pull /system/usr/idc/qt602240_ts.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/idc/qt602240_ts.idc

adb pull /system/usr/keychars/Generic.kcm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keychars/Generic.kcm
adb pull /system/usr/keychars/qwerty.kcm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keychars/qwerty.kcm
adb pull /system/usr/keychars/qwerty2.kcm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keychars/qwerty2.kcm
adb pull /system/usr/keychars/Virtual.kcm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keychars/Virtual.kcm


adb pull /system/usr/keylayout/* ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keylayout/


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

LOCAL_PATH := vendor/__MANUFACTURER__/__DEVICE__

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    \$(LOCAL_PATH)/proprietary/system/lib/libreference-ril.so:obj/lib/libreference-ril.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libril.so:obj/lib/libril.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libsecril-client.so:obj/lib/libsecril-client.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libion.so:obj/lib/libion.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libUMP.so:obj/lib/libUMP.so \\
	\$(LOCAL_PATH)/proprietary/system/lib/libTVOut.so:obj/lib/libTVOut.so


PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/etc/srm.bin:system/etc/srm.bin

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/camera.mx.so:system/lib/hw/vendor-camera.mx.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/gps.mx.so:system/lib/hw/gps.mx.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/gralloc.mx.so:system/lib/hw/gralloc.mx.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/sensors.mx.so:system/lib/hw/sensors.mx.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/hwcomposer.exynos4.so:system/lib/hw/hwcomposer.exynos4.so

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/lib/libril.so:system/lib/libril.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libsec-ril.so:system/lib/libsec-ril.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libakm.so:system/lib/libakm.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libion.so:system/lib/libion.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libMali.so:system/lib/libMali.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libUMP.so:system/lib/libUMP.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libfimg.so:system/lib/libfimg.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libhwconverter.so:system/lib/libhwconverter.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libhwjpeg.so:system/lib/libhwjpeg.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libcec.so:system/lib/libcec.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libddc.so:system/lib/libddc.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libedid.so:system/lib/libedid.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libfimc.so:system/lib/libfimc.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libhdmi.so:system/lib/libhdmi.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libhdmiclient.so:system/lib/libhdmiclient.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libTVOut.so:system/lib/libTVOut.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libtvoutinterface.so:system/lib/libtvoutinterface.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libtvout_jni.so:system/lib/libtvout_jni.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libtvoutservice.so:system/lib/libtvoutservice.so


PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/usr/idc/m03x_ts.idc:system/usr/idc/m03x_ts.idc \\
    \$(LOCAL_PATH)/proprietary/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \\
    \$(LOCAL_PATH)/proprietary/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \\
    \$(LOCAL_PATH)/proprietary/system/usr/idc/qt602240_ts.idc:system/usr/idc/qt602240_ts.idc

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \\
    \$(LOCAL_PATH)/proprietary/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \\
    \$(LOCAL_PATH)/proprietary/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \\
    \$(LOCAL_PATH)/proprietary/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/max77693-muic.kl:system/usr/keylayout/max77693-muic.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/mx-touch-keypad.kl:system/usr/keylayout/mx-touch-keypad.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),mx)
LOCAL_PATH:=\$(call my-dir)
endif

EOF

exec ./setup-makefiles.sh