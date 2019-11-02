
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = c720306388071083ab8b39cdcabce7689102c502
AESD_ASSIGNMENTS_SITE = http://github.com/cu-ecen-5013/assignment-8-char-driver-and-multithreading-shykn1.git
AESD_ASSIGNMENTS_SITE_METHOD = git


AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CROSS_COMPILE=$(TARGET_CROSS) -C  $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/tester.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/start_stop_daemon.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef


$(eval $(generic-package))
