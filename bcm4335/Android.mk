LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := bt_bcm4335
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := \
	bt_bcm \
	BCM4335A0_001.001.038.0035.0000.hcd \
	BCM4335B0_fw

include $(BUILD_PHONY_PACKAGE)

##################################################

include $(CLEAR_VARS)
LOCAL_MODULE := BCM4335A0_001.001.038.0035.0000.hcd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware/bt
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

##################################################

include $(CLEAR_VARS)
LOCAL_MODULE := BCM4335B0_fw
LOCAL_SRC_FILES := BCM4335B0_002.001.006.0283.0295.hcd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware/bt
LOCAL_MODULE_STEM := $(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)

#################################################

