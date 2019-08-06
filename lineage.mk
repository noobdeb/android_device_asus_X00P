#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00P device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00P
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := lineage_X00P
PRODUCT_MODEL := X00P

PRODUCT_GMS_CLIENTID_BASE := android-asus
TARGET_VENDOR_PRODUCT_NAME := X00P

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="E300L_WW-user 8.0.0 OPR1.170623.032 eng.root.20190521.160404 release-keys"

BUILD_FINGERPRINT := asus/WW_X00PD/ASUS_X00P_4:8.0.0/OPR1.170623.032/15.00.1905.101:user/release-keys
