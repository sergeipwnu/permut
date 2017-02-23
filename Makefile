GO_EASY_ON_ME = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest
THEOS_BUILD_DIR = debs
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = permut
permut_FILES = Tweak.xm
permut_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
