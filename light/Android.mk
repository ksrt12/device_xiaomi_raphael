LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.light@2.0-impl.raphael
LOCAL_VENDOR_OVERLAY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INSTALLED_MODULE_STEM := android.hardware.light@2.0-impl.so

LOCAL_SRC_FILES := Light.cpp

LOCAL_SHARED_LIBRARIES := \
        libbase \
        liblog \
        libhidlbase \
        libhidltransport \
        libhardware \
        libutils \
        android.hardware.light@2.0

include $(BUILD_SHARED_LIBRARY)
