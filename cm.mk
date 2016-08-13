$(call inherit-product, device/lge/d858hk/full_d858hk.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_d858hk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_open_hk" \
    BUILD_FINGERPRINT="lge/g3_open_hk/g3:$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER):user/release-keys" \
    PRIVATE_BUILD_DESC="g3_open_hk-user $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) release-keys"
