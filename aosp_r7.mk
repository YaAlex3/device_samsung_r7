#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from r7 device
$(call inherit-product, device/samsung/r7/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080

## Inherit some common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := aosp_r7
PRODUCT_DEVICE := r7
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N770F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

$(call inherit-product, vendor/yaalex/security/sign.mk)
