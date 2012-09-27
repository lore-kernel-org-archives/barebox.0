Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHf6-0004lH-9H
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:14:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:14:02 +0200
Message-Id: <1348766042-18815-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
References: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] environment generation: Fix dependencies
To: barebox@lists.infradead.org

The dependencies for generating the environment do not work properly:

- If files are removed from the defaultenv, a subsequent make will not
  update the default environment.
- If CONFIG_DEFAULT_ENVIRONMENT_PATH changes, the default environment
  also will not be regenerated.

This patch fixes this by introducing a cmd_env which has the content of
$(ENV_FILES) in the command so that the if_changed mechanism recognizes
a change when $(ENV_FILE) changes. This also results in a nice "  ENV "
string in the build process.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile        |    2 +-
 common/Makefile |   28 ++++++++++++++++++++--------
 scripts/genenv  |    8 +++++---
 3 files changed, 26 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index 0f1a319..af5c036 100644
--- a/Makefile
+++ b/Makefile
@@ -1013,7 +1013,7 @@ endif # CONFIG_MODULES
 CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
-		.tmp_kallsyms* barebox_default_env* barebox.ldr \
+		.tmp_kallsyms* common/barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target barebox-flash-image \
 		Doxyfile.version barebox.srec barebox.s5p
 
diff --git a/common/Makefile b/common/Makefile
index 9eda98c..b74c76b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -39,6 +39,7 @@ obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 extra-$(CONFIG_MODULES) += module.lds
+extra-y += barebox_default_env
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: include/generated/barebox_default_env.h
@@ -63,8 +64,19 @@ ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do fin
 
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
-barebox_default_env: $(ENV_FILES)
-	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
+#
+# Generate a barebox envfs image.
+#
+# echo $(ENV_FILES) > /dev/null is just for letting if_changed
+# recognize that something has changed when the environment has
+# other files,
+#
+quiet_cmd_env = ENV     $@
+cmd_env = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(DEFAULT_ENVIRONMENT_PATH)) || \
+	(echo $(ENV_FILES) > /dev/null; rm -f $@ ; false)
+
+$(obj)/barebox_default_env: $(ENV_FILES) FORCE
+	$(call if_changed,env)
 
 barebox_default_env_comp =
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP),y)
@@ -77,18 +89,18 @@ ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO),y)
 barebox_default_env_comp = .lzo
 endif
 
-barebox_default_env.gz: barebox_default_env
+$(obj)/barebox_default_env.gz: $(obj)/barebox_default_env
 	$(call if_changed,gzip)
 
-barebox_default_env.bz2: barebox_default_env
+$(obj)/barebox_default_env.bz2: $(obj)/barebox_default_env
 	$(call if_changed,bzip2)
 
-barebox_default_env.lzo: barebox_default_env
+$(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env
 	$(call if_changed,lzo)
 
-include/generated/barebox_default_env.h: barebox_default_env$(barebox_default_env_comp)
-	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
-	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s barebox_default_env`;" >> $@
+include/generated/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp)
+	$(Q)cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@
+	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
diff --git a/scripts/genenv b/scripts/genenv
index ff7972b..08c0c10 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -1,12 +1,14 @@
 #!/bin/bash
 
 # Generate the default environment file from a list of directories
-# usage: genenv <basedir> <objdir> <dir>...
+# usage: genenv <basedir> <objdir> <target> <dir>...
 # where <basedir> is the base directory for relative pathes in <dir>
 # where <objdir> is the base directory for relative pathes for result
+# and <target> is the resulting binary environment
 objtree=$2
 cd $1 || exit 1
-shift 2
+target=$3
+shift 3
 
 tempdir=$(mktemp -d tmp.XXXXXX)
 
@@ -20,7 +22,7 @@ done
 
 find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
 
-$objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
+$objtree/scripts/bareboxenv -s $tempdir $target
 
 rm -r $tempdir
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
