#
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2022 Havoc-OS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/raphael-$(BUILD_VENDOR_TYPE)/raphael-vendor.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/../translations \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-havoc

# Properties
-include $(LOCAL_PATH)/system_prop.mk
-include $(LOCAL_PATH)/product_prop.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml \
   frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_VENDOR_OVERLAY)/etc/audio_policy_engine_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR_OVERLAY)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR_OVERLAY)/etc/audio/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothQti

# Calculator
PRODUCT_PACKAGES += ExactCalculator

# Camera
PRODUCT_PACKAGES += \
    Snap

# Device-specific settings
PRODUCT_PACKAGES += \
    XiaomiParts

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData \
    libqdMetaData.system \
    libvulkan

# Fingerprint
PRODUCT_COPY_FILES += \
    vendor/havoc/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:system/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml
    	
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.raphael

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Freeform windows
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.freeform_window_management.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder

# HotwordEnrollement
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.android.hotwordenrollment.common.util.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.android.hotwordenrollment.common.util.xml \
    $(LOCAL_PATH)/configs/hotword-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hotword-hiddenapi-package-whitelist.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# IFAA manager
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Init
PRODUCT_PACKAGES += \
    init.mi_thermald.rc \
    init.qcom.rc \
    init.qcom.usb.sh \
    init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init-qcril-data.rc:$(TARGET_COPY_OUT_VENDOR_OVERLAY)/etc/init/init-qcril-data.rc

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sm8150-tavil-snd-card_Button_Jack.kl:system/usr/keylayout/sm8150-tavil-snd-card_Button_Jack.kl

# Livedisplay
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl.raphael

# Livedisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-sdm

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    NfcNci \
    SecureElement \
    Tag

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service.raphael

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Ril
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Vendor Overlays
PRODUCT_PACKAGES += \
    AospFrameworkResOverlay \
    AospWifiResOverlay \
    CarrierConfigResCommon \
    CellBroadcastReceiverResCommon \
    DevicesAndroidOverlay \
    DevicesOverlay \
    DocumentsUIOverlay \
    ElderlyNavigationBarOverlay \
    FrameworksResCommon \
    FrameworksResTarget \
    GestureLineOverlay \
    MccMncOverlay \
    MiuiBiometricResOverlay \
    MiuiBluetoothOverlay \
    MiuiFrameworkResOverlay \
    MiuiSettingsResOverlay \
    MiuiSystemUIResOverlay \
    OptInAppOverlay \
    SystemUIResCommon \
    TelecommResCommon \
    TelephonyResCommon

# WiFi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay

# WiFi Display
PRODUCT_PACKAGES += \
    libnl

#PRODUCT_BOOT_JARS += \
    WfdCommon
