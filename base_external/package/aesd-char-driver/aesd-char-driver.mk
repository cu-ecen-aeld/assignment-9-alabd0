
##############################################################
#
# LDD
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_DRIVER_VERSION = 157922dacfec8f0eb82a716d0662417c3e5131ab
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-alabd0.git
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES


AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver



$(eval $(kernel-module))
$(eval $(generic-package))
