
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
I2C_VERSION = b653dc927214ede94807501a15802fc8acceb84b
I2C_SITE = https://github.com/srinath-95/i2c.git
I2C_SITE_METHOD = git


#AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

#$(eval $(kernel-module))
define I2C_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all 
endef

#TODO: Add required executables or scripts below
define I2C_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/i2c $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
