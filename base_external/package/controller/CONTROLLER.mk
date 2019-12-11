
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#SPI_VERSION = 96f230535d04f3d4a32d4ba1e1ef1f248953c527
#CONTROLLER_VERSION = c8a1f790d15ddb73570b76a7769527b31d0f2681
CONTROLLER_VERSION = 8d0085b43d1bc8a21524f536932c1111ef20944b
CONTROLLER_SITE = https://github.com/cu-ecen-5013/final-project-assignment-shykn1.git
CONTROLLER_SITE_METHOD = git


#AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

#$(eval $(kernel-module))
define CONTROLLER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all 
endef

#TODO: Add required executables or scripts below
define CONTROLLER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/controller $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
