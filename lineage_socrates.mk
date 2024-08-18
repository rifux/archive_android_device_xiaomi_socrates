#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/socrates/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AOSP flags
PRODUCT_NAME := lineage_socrates
PRODUCT_DEVICE := socrates
PRODUCT_MODEL := Redmi K60 Pro
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Redmi/socrates/socrates:13/TKQ1.221114.001/V816.0.24.7.28.DEV:user/release-keys

# Matrixx flags
PRODUCT_SYSTEM_NAME := socrates
PRODUCT_SYSTEM_DEVICE := socrates

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="socrates-user 13 TKQ1.221114.001 V816.0.24.7.28.DEV release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_HAS_UDFPS := true

MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := "Vladimir Blinkov"
MATRIXX_CHIPSET := "Snapdragon 8 Gen 2"
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1440x3200

# Matrixx build flags
TARGET_EXCLUDES_VIA := true
TARGET_EXCLUDES_AUDIOFX := true

# | Google
WITH_GMS := true

# | Vanilla
#WITH_GMS := false