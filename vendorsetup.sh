#!/usr/bin/bash

#
# Copyright (C) 2024 Vladimir `rifux` Blinkov
#
# SPDX-License-Identifier: Apache-2.0
#

# Vendor
echo 'Cloning Vendor Tree...'
git clone -b V816.0.24.7.28.DEV https://codeberg.org/rifux/proprietary_vendor_xiaomi_socrates vendor/xiaomi/socrates

# Kernel
echo 'Cloning Kernel Tree...'
git clone -b fourteen https://github.com/rifux/android_kernel_xiaomi_sm8550 kernel/xiaomi/sm8550
git clone -b lineage-21 https://github.com/rifux/android_kernel_xiaomi_sm8550-modules kernel/xiaomi/sm8550-modules
git clone -b lineage-21 https://github.com/rifux/android_kernel_xiaomi_sm8550-devicetrees kernel/xiaomi/sm8550-devicetrees

# Hardware
echo 'Cloning hardware/xiaomi...'
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# MIUI camera
echo 'Cloning vendor/xiaomi/socrates-camera'
git clone -b V816.0.24.7.28.DEV https://codeberg.org/rifux/android_vendor_xiaomi_socrates-camera vendor/xiaomi/socrates-camera

# KernelSU
echo 'Fetching kernel/xiaomi/sm8550/KernelSU'
cd kernel/xiaomi/sm8550
git submodule init && git submodule update KernelSU
cd ../../..