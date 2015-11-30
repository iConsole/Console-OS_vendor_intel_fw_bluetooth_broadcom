LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := bt_bcm4354
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := \
	bt_bcm \
	BCM4354_fw

include $(BUILD_PHONY_PACKAGE)

##################################################

include $(CLEAR_VARS)
LOCAL_MODULE := BCM4354_fw
LOCAL_SRC_FILES := BCM4350C0_003.001.012.0102.0131.hcd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware/bt
LOCAL_MODULE_STEM := $(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)

#################################################

