#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-18 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00P

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_TS_MAKEUP := true

# Kernel
TARGET_KERNEL_CONFIG := X00P_defconfig

# Libinit
TARGET_LIBINIT_MSM8937_DEFINES_FILE := $(DEVICE_PATH)/libinit/init_X00P.cpp

# Libshim
TARGET_LD_SHIM_LIBS := /vendor/bin/mm-qcamera-daemon|vendor/lib/libshims_camera.so

# Inherit the proprietary files
-include vendor/asus/X00P/BoardConfigVendor.mk
