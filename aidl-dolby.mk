#
# Copyright (C) 2022 FlamingoOS Project
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

# Dolby path
DOLBY_PATH := hardware/dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   $(DOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# DSP Volume Synchronizer
PRODUCT_PACKAGES += \
    DSPVolumeSynchronizer

# Spatial Audio
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.dynamic.head_tracker.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.dynamic.head_tracker.xml

# Overlays
PRODUCT_PACKAGES += \
    DolbyFrameworksResCommon

# Spatial Audio: optimize spatializer effect
PRODUCT_VENDOR_PROPERTIES += \
       audio.spatializer.effect.util_clamp_min=300

# Spatial Audio: declare use of spatial audio
PRODUCT_VENDOR_PROPERTIES += \
       ro.audio.spatializer_enabled=true \
       ro.audio.headtracking_enabled=true \
       ro.audio.spatializer_transaural_enabled_default=false \
       ro.audio.stereo_spatialization_enabled=true \
       persist.vendor.audio.spatializer.speaker_enabled=true

# Codec2 Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    debug.c2.use_dmabufheaps=1 \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false

# Init
PRODUCT_PACKAGES += \
    init.dolby.rc

# AIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_PATH)/vintf/dolby_framework_matrix.xml

# LunarisDolby
PRODUCT_PACKAGES += \
    LunarisDolby

PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/product/etc/default-permissions/default-permissions-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-com.motorola.dolby.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/product/etc/motorola/bgintents/com.motorola.dynamicvolume.bgintents.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/motorola/bgintents/com.motorola.dynamicvolume.bgintents.xml \
    $(DOLBY_PATH)/proprietary/product/etc/permissions/privapp-permissions-com.motorola.dynamicvolume.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.motorola.dynamicvolume.xml \
    $(DOLBY_PATH)/proprietary/product/etc/sysconfig/hiddenapi-whitelist-com.motorola.dynamicvolume.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-whitelist-com.motorola.dynamicvolume.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/com.motorola.dolby.dolbyui.dax3.features.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.dolby.dolbyui.dax3.features.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.frameworks.core.addon.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.motosignature.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-checkin.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/moto-core_services.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-core_services.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-settings.xml \
    $(DOLBY_PATH)/proprietary/system/etc/permissions/motoaudioeffectsdk.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/motoaudioeffectsdk.xml \
    $(DOLBY_PATH)/proprietary/system/etc/sysconfig/hiddenapi-whitelist-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-whitelist-com.motorola.dolby.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/enable-disable-packages/enable-disable-com.motorola.sstservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/enable-disable-packages/enable-disable-com.motorola.sstservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/feature-com.motorola.sstservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/feature-com.motorola.sstservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-permissions-com.motorola.sstservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.motorola.sstservice.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-default-spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default-spatializer.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-default_retin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default_retin.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-moto_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_1.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-moto_2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_2.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-moto_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_3.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/dms-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/dms-service.rc \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.media.c2-default-service-dax.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2-default-service-dax.rc \
    $(DOLBY_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

PRODUCT_PACKAGES += \
    libcodec2_soft_ac4dec \
    libcodec2_soft_ddpdec \
    libcodec2_store_dolby \
    libdapparamstorage \
    libdeccfg \
    libdlbdsservice \
    libdlbpreg \
    libdmshal \
    liboem_specific \
    libspatializerparamstorage \
    libdlbvolaidl \
    libswdapaidl \
    libswgamedapaidl \
    libswspatializeraidl \
    vendor.dolby.dms-V1-ndk \
    vendor.dolby.hardware.dms@2.0 \
    MotoDolbyDax3 \
    MotoSignature2App \
    MotoSignatureApp \
    MotoMultiVolume \
    MotoSstSoundService \
    MotorolaSettingsProvider \
    daxService \
    com.motorola.frameworks.core.addon \
    com.motorola.motosignature \
    moto-checkin \
    moto-core_services \
    moto-settings \
    motoaudioeffectsdk \
    dms-service.xml \
    vendor.dolby.media.c2-default-service-dax.xml \
    vendor.dolby.dms.service \
    vendor.dolby.media.c2-default-service-dax
