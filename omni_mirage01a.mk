#
# Copyright (C) 2017 The Android Open Source Project
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

# Specify phone tech before including full_phone
#$(call inherit-product, vendor/batik/config/gsm.mk)

$(call inherit-product, device/LYF/mirage01a/full_mirage01a.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_mirage01a
BOARD_VENDOR := LYF

PRODUCT_GMS_CLIENTID_BASE := android-ckt

TARGET_VENDOR_PRODUCT_NAME := LS-5002
TARGET_VENDOR_DEVICE_NAME := LS-5002
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LS-5002 PRODUCT_NAME=LS-5002

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="LYF/LS-5002/mirage01a_msm8939_64:5.1.1/LMY47V/455:user/release-keys" \
PRIVATE_BUILD_DESC="mirage01a_msm8916_64-user 5.1.1 LMY47V 1004 release-keys"
