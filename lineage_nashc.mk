#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/nashc/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some common Rising stuff.
WITH_GMS := true
TARGET_CORE_GMS := true
RISING_CHIPSET="Helio G95"
TARGET_ENABLE_BLUR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true

# RisingOS Maintainer Flags
RISING_MAINTAINER := ＳＡＮＩＣ
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="ＳＡＮＩＣ"	

PRODUCT_NAME := lineage_nashc
PRODUCT_DEVICE := nashc
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 8

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3085L1 \
    PRODUCT_NAME=RMX3085 \
    PRIVATE_BUILD_DESC="RMX3085-user 12 SP1A.210812.016 R.GDPR.fa308f-7e6a release-keys"

BUILD_FINGERPRINT := realme/RMX3085/RMX3085L1:12/SP1A.210812.016/R.GDPR.fa308f-7e6a:user/release-keys
