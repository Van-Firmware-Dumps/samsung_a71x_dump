#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a71x device
$(call inherit-product, device/samsung/a71x/device.mk)

PRODUCT_DEVICE := a71x
PRODUCT_NAME := omni_a71x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A716S
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71xskt-user 13 TP1A.220624.014 A716SKSU7FXB3 release-keys"

BUILD_FINGERPRINT := samsung/a71xskt/a71x:13/TP1A.220624.014/A716SKSU7FXB3:user/release-keys
