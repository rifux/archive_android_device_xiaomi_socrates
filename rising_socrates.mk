#
# Copyright (C) 2024 The LineageOS Project, Vladimir `rifux` Blinkov
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

# AOSP common flags
PRODUCT_NAME := lineage_socrates
PRODUCT_DEVICE := socrates
PRODUCT_MODEL := Redmi K60 Pro
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Redmi/socrates/socrates:14/UKQ1.230804.001/V816.0.9.0.UMKCNXM:user/release-keys

# Boot animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# RisingOS common flags
TARGET_ENABLE_BLUR := true
RISING_MAINTAINER := "Vladimir Blinkov"
PRODUCT_NO_CAMERA := false
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 8 Gen 2" \
    RISING_MAINTAINER="Vladimir Blinkov" \
    PRIVATE_BUILD_DESC="socrates-user 14 UKQ1.230804.001 V816.0.9.0.UMKCNXM release-keys"

# RisingOS build flags
# | Google
WITH_GMS := true
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true

# | Vanilla
# RISING_PACKAGE_TYPE := "VANILLA_AOSP"
# WITH_GMS := false
# TARGET_CORE_GMS := false
# TARGET_CORE_GMS_EXTRAS := false
