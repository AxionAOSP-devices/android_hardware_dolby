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
DOLBY_PATH := hardware/aidl-dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   $(DOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# DSP Volume Synchronizer
PRODUCT_PACKAGES += \
    DSPVolumeSynchronizer

# Remove Packages for Dolby Support
PRODUCT_PACKAGES += \
    RemovePackagesDolby

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
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false

# Init
PRODUCT_PACKAGES += \
    init.dolby.rc

# AIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_PATH)/vintf/dolby_framework_matrix.xml

# LunarisDolby
# PRODUCT_PACKAGES += \
#    LunarisDolby

PRODUCT_COPY_FILES += \
    vendor/aidl/dolby/proprietary/vendor/etc/dolby/dax-default-spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default-spatializer.xml \
    vendor/aidl/dolby/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    vendor/aidl/dolby/proprietary/vendor/etc/dolby_vision.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/dolby_vision.cfg \
    vendor/aidl/dolby/proprietary/vendor/etc/init/android.hardware.media.c2-mi-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.c2-mi-service.rc \
    vendor/aidl/dolby/proprietary/vendor/etc/init/dms-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/dms-service.rc \
    vendor/aidl/dolby/proprietary/vendor/etc/init/dvs-aidl-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/dvs-aidl-service.rc \
    vendor/aidl/dolby/proprietary/vendor/etc/init/vendor.dolby.media.c2-default-service-dax.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2-default-service-dax.rc \
    vendor/aidl/dolby/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    vendor/aidl/dolby/proprietary/vendor/etc/media_codecs_mi_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mi_c2_audio.xml \
    vendor/aidl/dolby/proprietary/vendor/etc/surfaceflinger/dolby_vision.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surfaceflinger/dolby_vision.cfg \
    vendor/aidl/dolby/proprietary/vendor/persist/display/dolby_vision.cfg:$(TARGET_COPY_OUT_VENDOR)/persist/display/dolby_vision.cfg

PRODUCT_PACKAGES += \
    android.media.audio.common.types-V6-ndk \
    lib_AIVC_decoder \
    lib_AIVC_encoder \
    libcodec2_soft_ac4dec \
    libcodec2_soft_aivc_dec \
    libcodec2_soft_aivc_enc \
    libcodec2_soft_ddpdec \
    libcodec2_soft_mihc_dec \
    libcodec2_soft_mihc_enc \
    libcodec2_store_dolby \
    libcodec2_store_mi \
    libdapparamstorage \
    libdeccfg \
    libdlbdsservice \
    libdlbpreg \
    libdmshal \
    libdolbyclstc \
    libdolbydecoderprocessor \
    libdolbyeglcore \
    libdolbyencoderprocessor \
    libdolbyottcameracontrol \
    libdolbyproxyandroid \
    libmisoundfx_aidl_ext \
    libqcodec2_dolbydecoderfilter \
    libqcodec2_dolbyencoderfilter \
    libspatializerparamstorage \
    libswspatializeraidl_ext \
    libdlbvolaidl \
    libhwdapaidl \
    liblvacfsprocessingaidl \
    libmiwndnsprocessingaidl \
    libspatializeraidl \
    libswgamedapaidl \
    libswspatializeraidl \
    vendor.dolby.dms-V1-ndk \
    vendor.dolby.hardware.dms@2.0 \
    dms-service.xml \
    dvs-aidl-service.xml \
    media_c2_mi.xml \
    vendor.dolby.media.c2-default-service-dax.xml \
    android.hardware.media.c2-mi-service \
    dvs-aidl-service \
    vendor.dolby.dms.service \
    vendor.dolby.media.c2-default-service-dax

PRODUCT_PACKAGES += \
    vendor_lib64_soundfx_libmisoundfx_aidl_so
