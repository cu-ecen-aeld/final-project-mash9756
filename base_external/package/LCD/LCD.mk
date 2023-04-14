
##############################################################
#
# LCD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_VERSION = '81a0610d4131fc79cbc9c6b258cc8e4c04dfef24'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_SITE = 'git@github.com:mash9756/AESD-Final-LCD.git'
LCD_SITE_METHOD = git
LCD_GIT_SUBMODULES = YES

define LCD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/LCD $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
