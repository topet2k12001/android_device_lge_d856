#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/d856/d856-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/lge/g3-common/configs/audio/mixer_paths_bcm.xml:system/etc/mixer_paths.xml

# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_PACKAGES += \
    init.galbi.bt.sh \
    init.galbi.bt_vendor.rc

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# WiFi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    libwcnss_qmi \
    wcnss_service

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default

# WiFi BCMDHD
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
		hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/fw_bcmdhd_fp.bin:system/etc/firmware/fw_bcmdhd_fp.bin

# common g3
$(call inherit-product, device/lge/g3-common/g3.mk)
