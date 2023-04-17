
##############################################################
#
# LCD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_VERSION = '990472809abe91e5526257a19e90ae200d5e8142'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_SITE = 'git@github.com:mash9756/AESD-Final-LCD.git'
LCD_SITE_METHOD = git
LCD_GIT_SUBMODULES = YES

define LCD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/main $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
