
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 6d16ea94bb7dd2636264c2c739c53acb8dfd754d
LDD_SITE = https://github.com/cu-ecen-5013/assignment-7-buildroot-and-yocto-kernel-builds-shykn1
LDD_SITE_METHOD = git

#LDD_SITE = /home/linfeng/Downloads/AESD/assignment-7-buildroot-and-yocto-kernel-builds-shykn1/scull
#LDD_SITE_METHOD = local
LDD_LICENSE  = GPL

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
