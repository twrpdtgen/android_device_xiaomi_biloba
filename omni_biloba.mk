#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from biloba device
$(call inherit-product, device/xiaomi/biloba/device.mk)

PRODUCT_DEVICE := biloba
PRODUCT_NAME := omni_biloba
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := biloba
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="biloba-user 12 SP1A.210812.016 V13.0.7.0.SCUMIXM release-keys"

BUILD_FINGERPRINT := Redmi/biloba_global/biloba:12/SP1A.210812.016/V13.0.7.0.SCUMIXM:user/release-keys
