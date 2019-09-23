Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHub-0004dI-U4
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 06:33:33 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Mon, 23 Sep 2019 08:33:20 +0200
Message-Id: <20190923063320.4177-1-a.schwarzkopf@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Allow usage of default environment without environment file
 storage
To: barebox@lists.infradead.org

Currently, the default environment is only used when the
barebox environment on the persistent store is not valid
or when ENVFS_FLAGS_FORCE_BUILT_IN is set in the super block.

However, ENVFS_FLAGS_FORCE_BUILT_IN can be cleared and the
environmnet variables in the persistent store will be
used again. This may not be desirable.

This patch allows building CONFIG_DEFAULT_ENVIRONMENT
independent of CONFIG_ENV_HANDLING. This can be useful
if you never want to load or write values from the
persistent store and you only need to read environment variables
from your default environment.

If CONFIG_ENV_HANDLING is not set, a message will be printed to the
user indicating that changes to non-volatile variables won't be
persisted.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 commands/nv.c        |  5 +++++
 common/Kconfig       | 24 ++++++++++++------------
 common/Makefile      |  1 +
 common/environment.c | 25 +++++++++++++++++++++++--
 common/globalvar.c   | 16 +++++++++++-----
 common/startup.c     | 24 +++++++++++++++++-------
 6 files changed, 69 insertions(+), 26 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index 01c25a108..315019345 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -50,6 +50,11 @@ static int do_nv(int argc, char *argv[])
 	}
 
 	if (do_save) {
+		if (!IS_ENABLED(CONFIG_ENV_HANDLING)) {
+			printf("Error: Current configuration does not support saving variables\n");
+			return COMMAND_ERROR;
+		}
+
 		return nvvar_save();
 	}
 
diff --git a/common/Kconfig b/common/Kconfig
index 8aad5baec..23746f904 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -174,19 +174,19 @@ config GLOBALVAR
 
 config NVVAR
 	bool "Non volatile global environment variables support"
-	default y if !SHELL_NONE
+	default y if !SHELL_NONE && ENV_HANDLING
 	depends on GLOBALVAR
-	depends on ENV_HANDLING
 	select FNMATCH
 	help
 	  Non volatile environment variables begin with "nv.". They behave like
-	  global variables above, but their values are saved in the environment
-	  storage with 'saveenv' and thus are persistent over restarts. nv variables
-	  are coupled with global variables of the same name. Setting "nv.foo" results
-	  in "global.foo" changed also (but not the other way round: setting "global.foo"
-	  leaves "nv.foo" untouched). The idea is that nv variables can store defaults
-	  while global variables can be changed during runtime without changing the
-	  default.
+	  global variables above, but when CONFIG_ENV_HANDLING is enabled, they
+	  can be stored in the environment storage with 'saveenv' and thus
+	  persisted over restarts. nv variables are coupled with global
+	  variables of the same name. Setting "nv.foo" results in "global.foo"
+	  changed also (but not the other way round: setting "global.foo" leaves
+	  "nv.foo" untouched). The idea is that nv variables can store defaults
+	  while global variables can be changed during runtime without changing
+	  the default.
 
 menu "memory layout"
 
@@ -805,12 +805,12 @@ config ENV_HANDLING
 
 config DEFAULT_ENVIRONMENT
 	bool
-	default y
-	depends on ENV_HANDLING
+	default y if ENV_HANDLING
 	prompt "Compile in default environment"
 	help
 	  Enabling this option will give you a default environment when
-	  the environment found in the environment sector is invalid
+	  the environment found in the environment sector is invalid or when
+	  CONFIG_ENV_HANDLING is not enabled.
 
 choice
 	prompt "default compression for in-barebox binaries"
diff --git a/common/Makefile b/common/Makefile
index a284655fc..d4528bb5c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-y				+= console_countdown.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
+obj-$(CONFIG_DEFAULT_ENVIRONMENT) += environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_FILETYPE)		+= filetype.o
 CFLAGS_filetype.o = -I$(srctree)/arch/
diff --git a/common/environment.c b/common/environment.c
index aba6dcde4..e87b136f7 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -62,8 +62,9 @@ struct action_data {
 
 #define TMPDIR "/.defaultenv"
 
-static char *default_environment_path = "/dev/env0";
 
+#ifdef CONFIG_ENV_HANDLING
+static char *default_environment_path = "/dev/env0";
 void default_environment_path_set(char *path)
 {
 	default_environment_path = path;
@@ -87,7 +88,7 @@ static int do_compare_file(const char *filename, const char *base)
 
 	return ret;
 }
-
+#endif
 #else
 #define ERASE_SIZE_ALL 0
 static inline int protect(int fd, size_t count, unsigned long offset, int prot)
@@ -106,6 +107,7 @@ static int do_compare_file(const char *filename, const char *base)
 }
 #endif
 
+#if !defined(__BAREBOX__) || defined(CONFIG_ENV_HANDLING)
 static int file_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
@@ -156,7 +158,9 @@ static int file_action(const char *filename, struct stat *statbuf,
 out:
 	return 1;
 }
+#endif
 
+#if !defined(__BAREBOX__) || defined(CONFIG_ENV_HANDLING)
 static void envfs_save_inode(struct action_data *data, struct envfs_entry *env)
 {
 	struct envfs_inode *inode;
@@ -181,8 +185,10 @@ static void envfs_save_inode(struct action_data *data, struct envfs_entry *env)
 	memcpy(data->writep, env->buf, env->size);
 	data->writep += PAD4(env->size);
 }
+#endif
 
 #ifdef __BAREBOX__
+#ifdef CONFIG_ENV_HANDLING
 static int file_remove_action(const char *filename, struct stat *statbuf,
 		void *userdata, int depth)
 {
@@ -220,6 +226,7 @@ out:
 
 	return 1;
 }
+#endif
 #else
 static int file_remove_action(const char *filename, struct stat *statbuf,
 		void *userdata, int depth)
@@ -249,6 +256,12 @@ static int dir_remove_action(const char *filename, struct stat *statbuf,
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
+#if defined(__BAREBOX__) && !defined(CONFIG_ENV_HANDLING)
+int envfs_save(const char *filename, const char *dirname, unsigned flags)
+{
+	return -ENOSYS;
+}
+#else
 int envfs_save(const char *filename, const char *dirname, unsigned flags)
 {
 	struct envfs_super *super;
@@ -381,6 +394,7 @@ out1:
 	return ret;
 }
 EXPORT_SYMBOL(envfs_save);
+#endif
 
 static int envfs_check_super(struct envfs_super *super, size_t *size)
 {
@@ -551,6 +565,12 @@ int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags)
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
+#if defined(__BAREBOX__) && !defined(CONFIG_ENV_HANDLING)
+int envfs_load(const char *filename, const char *dir, unsigned flags)
+{
+	return -ENOSYS;
+}
+#else
 int envfs_load(const char *filename, const char *dir, unsigned flags)
 {
 	struct envfs_super super;
@@ -637,3 +657,4 @@ out:
 
 	return ret;
 }
+#endif
diff --git a/common/globalvar.c b/common/globalvar.c
index 1bea7425d..a826e1bc1 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -75,13 +75,19 @@ static int nv_save(const char *name, const char *val)
 	if (ret)
 		return ret;
 
-	if (once) {
-		pr_info("nv variable modified, will save nv variables on shutdown\n");
-		once = 0;
+	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+		if (once) {
+			pr_info("nv variable modified, will save nv variables on shutdown\n");
+			once = 0;
+		}
+		nv_dirty = 1;
+	} else {
+		if (once) {
+			pr_info("nv variable modified, but won't be saved in this configuration\n");
+			once = 0;
+		}
 	}
 
-	nv_dirty = 1;
-
 	return 0;
 }
 
diff --git a/common/startup.c b/common/startup.c
index 88eeee5e3..2490971ff 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -122,29 +122,39 @@ conflict:
 
 	return -EINVAL;
 }
+#else
+static int check_overlap(const char *path)
+{
+	return 0;
+}
+#endif
 
 static int load_environment(void)
 {
 	const char *default_environment_path;
-	int ret;
+	int __maybe_unused ret = 0;
 
 	default_environment_path = default_environment_path_get();
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
 		defaultenv_load("/env", 0);
 
-	ret = check_overlap(default_environment_path);
-	if (ret)
-		default_environment_path_set(NULL);
-	else
-		envfs_load(default_environment_path, "/env", 0);
+	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+		ret = check_overlap(default_environment_path);
+		if (ret)
+			default_environment_path_set(NULL);
+		else
+			envfs_load(default_environment_path, "/env", 0);
+	} else {
+		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+			pr_notice("No support for persistent environment. Using default environment");
+	}
 
 	nvvar_load();
 
 	return 0;
 }
 environment_initcall(load_environment);
-#endif
 
 static int global_autoboot_abort_key;
 static const char * const global_autoboot_abort_keys[] = {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
