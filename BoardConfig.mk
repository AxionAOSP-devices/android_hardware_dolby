#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Properties
TARGET_ODM_PROP += $(DOLBY_PATH)/properties/odm.prop
TARGET_VENDOR_PROP += $(DOLBY_PATH)/properties/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor
