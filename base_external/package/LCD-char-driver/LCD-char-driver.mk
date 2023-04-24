
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_DRIVER_VERSION = '04c1ee738ef544fd96403f9775b3dea83734fab7'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = 'git@github.com:mash9756/AESD-Final-LCD.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES

AESD_CHAR_DRIVER_MODULE_SUBDIRS = src/driver

# invoke kernel module helper infrastructure
$(eval $(kernel-module))

# install load and unload scripts
define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/driver/LCDchar_load $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/src/driver/LCDchar_unload $(TARGET_DIR)/sbin/
endef


$(eval $(generic-package))