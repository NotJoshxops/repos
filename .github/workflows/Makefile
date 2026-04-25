TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 67mod

67mod_FILES = Tweak.x
67mod_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
