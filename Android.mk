#
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2022 Havoc-OS
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter raphael,$(TARGET_DEVICE)),)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif
