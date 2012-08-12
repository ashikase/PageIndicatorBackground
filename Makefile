TWEAK_NAME = PageIndicatorBackground
PageIndicatorBackground_FILES = Tweak.xm
PageIndicatorBackground_FRAMEWORKS = UIKit

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

after-clean::
	- rm -f $(THEOS_PROJECT_DIR)/*.deb
	- rm -f $(THEOS_PROJECT_DIR)/.theos/packages/*
