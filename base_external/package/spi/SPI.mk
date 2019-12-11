
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#SPI_VERSION = 96f230535d04f3d4a32d4ba1e1ef1f248953c527
SPI_VERSION = 5df95760c43a2bf83cae6f6e1de4b41a4a7a1553
SPI_SITE = https://github.com/srinath-95/Controller.git
SPI_SITE_METHOD = git


#AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

#$(eval $(kernel-module))
define SPI_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all 
endef

#TODO: Add required executables or scripts below
define SPI_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/controller $(TARGET_DIR)/
endef


$(eval $(generic-package))
