
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SPI_VERSION = 42bf5fbff4eb01c339cc7c944a76b9daab374aad
SPI_SITE = https://github.com/srinath-95/i2c.git
SPI_SITE_METHOD = git


#AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

#$(eval $(kernel-module))
define SPI_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all 
endef

#TODO: Add required executables or scripts below
define SPI_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/main $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
