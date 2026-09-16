ARCHS = arm64 arm64e

TARGET = iphone:clang:latest:15.0

THEOS_PACKAGE_SCHEME = roothide

INSTALL_TARGET_PROCESSES = MobilePhone WeChat

TWEAK_NAME = NoProximityCall

NoProximityCall_FILES = NoProximityCall.xm
NoProximityCall_CFLAGS = -fobjc-arc
NoProximityCall_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
