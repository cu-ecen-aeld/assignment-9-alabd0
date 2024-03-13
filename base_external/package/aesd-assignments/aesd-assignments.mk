
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 157922dacfec8f0eb82a716d0662417c3e5131ab
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-alabd0.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES





define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/etc/finder-app/conf/ $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(@D)/finder-app/finder.sh $(@D)/finder-app/finder-test.sh \
	$(@D)/server/aesdsocket -t $(TARGET_DIR)/usr/bin/ 
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh -T $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef



$(eval $(generic-package))
