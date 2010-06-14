Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007yi-JC
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:33 +0200
Message-Id: <1276508921-3264-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/11] Allow to merge default environment from more than one
	directory
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile        |   15 ---------------
 common/Kconfig  |    4 ++--
 common/Makefile |    6 ++++--
 scripts/genenv  |   17 +++++++++++++++++
 4 files changed, 23 insertions(+), 19 deletions(-)
 create mode 100755 scripts/genenv

diff --git a/Makefile b/Makefile
index d17ca47..e24ae45 100644
--- a/Makefile
+++ b/Makefile
@@ -1299,18 +1299,3 @@ Makefile: ;
 # information in a variable se we can use it in if_changed and friends.
 .PHONY: $(PHONY)
 
-#
-# sanity checks for check default environemnt
-#
-ifdef CONFIG_DEFAULT_ENVIRONMENT
-
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
-$(error default environment path empty))
-endif
-
-saved-env_path := $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
-CONFIG_DEFAULT_ENVIRONMENT_PATH := $(shell cd $(if $(filter /%,$(CONFIG_DEFAULT_ENVIRONMENT_PATH)),,$(srctree)/)$(CONFIG_DEFAULT_ENVIRONMENT_PATH) && /bin/pwd)
-$(if $(CONFIG_DEFAULT_ENVIRONMENT_PATH),, \
-	$(error default environment path $(saved-env_path) does not exist))
-
-endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
diff --git a/common/Kconfig b/common/Kconfig
index f514759..a58f242 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -339,8 +339,8 @@ config DEFAULT_ENVIRONMENT_PATH
 	depends on DEFAULT_ENVIRONMENT
 	prompt "Default environment path"
 	help
-	  The path the default environment will be taken from. Relative
-	  pathes will be relative to the barebox Toplevel dir, but absolute
+	  Space separated list of pathes the default environment will be taken from.
+	  Relative pathes will be relative to the barebox Toplevel dir, but absolute
 	  pathes are fine aswell.
 
 endmenu
diff --git a/common/Makefile b/common/Makefile
index 0c075a9..aebaa39 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -15,6 +15,7 @@ obj-y += env.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
+obj-y += sysdev.o
 obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
@@ -22,9 +23,10 @@ ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: include/barebox_default_env.h
 $(obj)/env.o: include/barebox_default_env.h
 
-ENV_FILES := $(shell find $(srctree)/$(CONFIG_DEFAULT_ENVIRONMENT_PATH))
+ENV_FILES := $(shell cd $(srctree); for i in $(CONFIG_DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f {} \;; done)
+
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
 include/barebox_default_env.h: $(ENV_FILES)
-	$(Q)scripts/bareboxenv -s $(srctree)/$(CONFIG_DEFAULT_ENVIRONMENT_PATH) barebox_default_env
+	$(Q)scripts/genenv $(srctree) $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
 	$(Q)cat barebox_default_env | scripts/bin2c default_environment > $@
diff --git a/scripts/genenv b/scripts/genenv
new file mode 100755
index 0000000..6a833b1
--- /dev/null
+++ b/scripts/genenv
@@ -0,0 +1,17 @@
+#!/bin/bash
+
+# Generate the default environment file from a list of directories
+# usage: genenv <basedir> <dir>...
+# where <basedir> is the base directory for relative pathes in <dir>
+cd $1 || exit 1
+shift
+
+tempdir=$(mktemp -d)
+
+for i in $*; do
+	cp -r $i/* $tempdir
+done
+scripts/bareboxenv -s $tempdir barebox_default_env
+
+rm -r $tempdir
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
