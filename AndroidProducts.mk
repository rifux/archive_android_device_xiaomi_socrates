#
# Copyright (C) 2024 The LineageOS Project, Vladimir `rifux` Blinkov
#
# SPDX-License-Identifier: Apache-2.0
#

#PRODUCT_MAKEFILES := \
#    $(LOCAL_DIR)/lineage_socrates.mk \
#    $(LOCAL_DIR)/rising_socrates.mk

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/rising_socrates.mk

COMMON_LUNCH_CHOICES := \
    rising_socrates-eng \
    rising_socrates-user \
    rising_socrates-userdebug
#    lineage_socrates-eng \
#    lineage_socrates-user \
#    lineage_socrates-userdebug
