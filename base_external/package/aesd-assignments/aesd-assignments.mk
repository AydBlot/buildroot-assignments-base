
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 2620c7457b07735d1b1585dbd7d6100991cb4c35
AESD_ASSIGNMENTS_SITE = https://github.com/cu-ecen-5013/aesd-assignments-3-and-later-shykn1
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/tester.sh $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
