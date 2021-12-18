#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#Inherit some common raphael stuff
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

HAVOC_BUILD_TYPE := $(BUILD_VENDOR_TYPE)vendor

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := havoc_raphael

BUILD_FINGERPRINT := "Xiaomi/raphael/raphael:11/RKQ1.200826.002/V12.5.1.0.RFKMIXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
