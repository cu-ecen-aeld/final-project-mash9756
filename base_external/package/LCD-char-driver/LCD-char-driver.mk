
##############################################################
#
# LCD_CHAR_DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_CHAR_DRIVER_VERSION = '5a5496bc5d355b0056534780f2783afcadf5c54f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_CHAR_DRIVER_SITE = 'git@github.com:mash9756/AESD-Final-LCD.git'
LCD_CHAR_DRIVER_SITE_METHOD = git
LCD_CHAR_DRIVER_GIT_SUBMODULES = YES

LCD_CHAR_DRIVER_MODULE_SUBDIRS = src/driver

# invoke kernel module helper infrastructure
$(eval $(kernel-module))

# install load and unload scripts
define LCD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/driver/LCDchar_load $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/src/driver/LCDchar_unload $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/src/driver/lcdinit $(TARGET_DIR)/sbin/
endef


$(eval $(generic-package))