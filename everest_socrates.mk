#
# Copyright (C) 2024 The LineageOS Project, Blinkov `rifux` Vladimir ♪
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
PRODUCT_NAME := everest_socrates
PRODUCT_DEVICE := socrates
PRODUCT_MODEL := Redmi K60 Pro
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Redmi/socrates/socrates:13/TKQ1.221114.001/V816.0.24.7.28.DEV:user/release-keys

# EverestOS flags
EVEREST_MAINTAINER := "rifux.dev"
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1440
EXTRA_UDFPS_ANIMATIONS := true

# EverestOS build type flags
# | Vanilla
WITH_GAPPS := false
TARGET_INCLUDE_PIXEL_LAUNCHER := false