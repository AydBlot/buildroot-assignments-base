
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
GPIO_VERSION = fde5f70e84a821a20479fc4b6f583f71ca1e658b
GPIO_SITE = https://github.com/srinath-95/gpio.git
GPIO_SITE_METHOD = git


#AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

#$(eval $(kernel-module))
define GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all 
endef

#TODO: Add required executables or scripts below
define GPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio $(TARGET_DIR)/usr
endef


$(eval $(generic-package))
