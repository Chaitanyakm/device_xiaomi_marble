#
# Copyright (C) 2022-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common Matrixx configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_BOOT_ANIMATION_RES := 1080

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_CHIPSET := SM7475
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1080x2400
WITH_GMS := true
TARGET_INCLUDE_NEXUS := true

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble_global-user 14 UKQ1.230804.001 V816.0.14.0.UMRMIXM release-keys" \
    BuildFingerprint=POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.14.0.UMRMIXM:user/release-keys \
    DeviceProduct=marble \
    SystemName=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
