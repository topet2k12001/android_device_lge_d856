
$(call inherit-product, device/lge/d856/full_d856.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_d856

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_open_cis" \
    BUILD_FINGERPRINT="lge/g3_open_cis/g3:$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER):user/release-keys" \
    PRIVATE_BUILD_DESC="g3_open_cis-user $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) release-keys"
