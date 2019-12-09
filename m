Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGbc-0001tz-Ax
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:49:34 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Mon, 9 Dec 2019 11:49:28 +0100
Message-Id: <20191209104928.1479-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH v2] Allow usage of default environment without environment
 file storage
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

Move envfs functions that are needed when CONFIG_DEFAULT_ENVIRONMENT
and/or CONFIG_ENV_HANDLING is set to a new file common/envfs-core.c.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
v2: instead of introducing new #ifdefs, move functions
to new file common/envfs-core.c which contains the functions that we 
need when CONFIG_ENV_HANDLING and/or CONFIG_DEFAULT_ENVIRONMENT is set. 
Change scripts/bareboxenv.c to use common/envfs-core.c.
---
 commands/nv.c        |   5 ++
 common/Kconfig       |  24 +++---
 common/Makefile      |   3 +-
 common/envfs-core.c  | 197 +++++++++++++++++++++++++++++++++++++++++++
 common/environment.c | 172 -------------------------------------
 common/globalvar.c   |  16 ++--
 common/startup.c     |  24 ++++--
 include/envfs.h      |   5 ++
 scripts/bareboxenv.c |   1 +
 9 files changed, 250 insertions(+), 197 deletions(-)
 create mode 100644 common/envfs-core.c

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
index cafaadb3d..05b961be7 100644
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
index a284655fc..03617e67b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -25,7 +25,8 @@ obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-y				+= console_countdown.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
-obj-$(CONFIG_ENV_HANDLING)	+= environment.o
+obj-$(CONFIG_ENV_HANDLING)	+= environment.o envfs-core.o
+obj-$(CONFIG_DEFAULT_ENVIRONMENT) += envfs-core.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_FILETYPE)		+= filetype.o
 CFLAGS_filetype.o = -I$(srctree)/arch/
diff --git a/common/envfs-core.c b/common/envfs-core.c
new file mode 100644
index 000000000..1898c1c8c
--- /dev/null
+++ b/common/envfs-core.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Albert Schwarzkopf <a.schwarzkopf@phytec.de>, PHYTEC Messtechnik GmbH
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+/**
+ * @file
+ * @brief Environment handling support (host and target)
+ *
+ * Important: This file will also be used on the host to create
+ * the default environment when building the barebox binary. So
+ * do not add any new barebox related functions here!
+ */
+#ifdef __BAREBOX__
+#include <common.h>
+#include <fs.h>
+#include <crc.h>
+#include <envfs.h>
+#include <libbb.h>
+#include <libgen.h>
+#include <environment.h>
+#include <libfile.h>
+#else
+# define errno_str(x) ("void")
+#endif
+
+static int dir_remove_action(const char *filename, struct stat *statbuf,
+		void *userdata, int depth)
+{
+	if (!depth)
+		return 1;
+
+	rmdir(filename);
+
+	return 1;
+}
+
+int envfs_check_super(struct envfs_super *super, size_t *size)
+{
+	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
+		printf("envfs: no envfs (magic mismatch) - envfs never written?\n");
+		return -EIO;
+	}
+
+	if (crc32(0, super, sizeof(*super) - 4) != ENVFS_32(super->sb_crc)) {
+		printf("wrong crc on env superblock\n");
+		return -EIO;
+	}
+
+	if (super->major < ENVFS_MAJOR)
+		printf("envfs version %d.%d loaded into %d.%d\n",
+			super->major, super->minor,
+			ENVFS_MAJOR, ENVFS_MINOR);
+
+	*size = ENVFS_32(super->size);
+
+	return 0;
+}
+
+int envfs_check_data(struct envfs_super *super, const void *buf, size_t size)
+{
+	uint32_t crc;
+
+	crc = crc32(0, buf, size);
+	if (crc != ENVFS_32(super->crc)) {
+		printf("wrong crc on env\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
+		const char *dir, unsigned flags)
+{
+	int fd, ret = 0;
+	char *str, *tmp;
+	int headerlen_full;
+	/* for envfs < 1.0 */
+	struct envfs_inode_end inode_end_dummy;
+	struct stat s;
+
+	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
+	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
+
+	while (size) {
+		struct envfs_inode *inode;
+		struct envfs_inode_end *inode_end;
+		uint32_t inode_size, inode_headerlen, namelen;
+
+		inode = buf;
+		buf += sizeof(struct envfs_inode);
+
+		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
+			printf("envfs: wrong magic\n");
+			ret = -EIO;
+			goto out;
+		}
+		inode_size = ENVFS_32(inode->size);
+		inode_headerlen = ENVFS_32(inode->headerlen);
+		namelen = strlen(inode->data) + 1;
+		if (super->major < 1)
+			inode_end = &inode_end_dummy;
+		else
+			inode_end = buf + PAD4(namelen);
+
+		debug("loading %s size %d namelen %d headerlen %d\n", inode->data,
+			inode_size, namelen, inode_headerlen);
+
+		str = concat_path_file(dir, inode->data);
+
+		headerlen_full = PAD4(inode_headerlen);
+		buf += headerlen_full;
+
+		if (ENVFS_32(inode_end->magic) != ENVFS_INODE_END_MAGIC) {
+			printf("envfs: wrong inode_end_magic\n");
+			ret = -EIO;
+			goto out;
+		}
+
+		tmp = strdup(str);
+		make_directory(dirname(tmp));
+		free(tmp);
+
+		ret = stat(str, &s);
+		if (!ret && (flags & ENV_FLAG_NO_OVERWRITE)) {
+			printf("skip %s\n", str);
+			goto skip;
+		}
+
+		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
+			debug("symlink: %s -> %s\n", str, (char*)buf);
+			if (!strcmp(buf, basename(str))) {
+				unlink(str);
+			} else {
+				if (!ret)
+					unlink(str);
+
+				ret = symlink(buf, str);
+				if (ret < 0)
+					printf("symlink: %s -> %s : %s\n",
+							str, (char*)buf, strerror(-errno));
+			}
+			free(str);
+		} else {
+			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+			free(str);
+			if (fd < 0) {
+				printf("Open %s\n", errno_str());
+				ret = fd;
+				goto out;
+			}
+
+			ret = write(fd, buf, inode_size);
+			if (ret < inode_size) {
+				perror("write");
+				ret = -errno;
+				close(fd);
+				goto out;
+			}
+			close(fd);
+		}
+skip:
+		buf += PAD4(inode_size);
+		size -= headerlen_full + PAD4(inode_size) +
+				sizeof(struct envfs_inode);
+	}
+
+	recursive_action(dir, ACTION_RECURSE | ACTION_DEPTHFIRST, NULL,
+			dir_remove_action, NULL, 0);
+
+	ret = 0;
+out:
+	return ret;
+}
+
+int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags)
+{
+	int ret;
+	size_t size;
+	struct envfs_super *super = buf;
+
+	buf = super + 1;
+
+	ret = envfs_check_super(super, &size);
+	if (ret)
+		return ret;
+
+	ret = envfs_check_data(super, buf, size);
+	if (ret)
+		return ret;
+
+	ret = envfs_load_data(super, buf, size, dir, flags);
+
+	return ret;
+}
diff --git a/common/environment.c b/common/environment.c
index aba6dcde4..005caf45e 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -56,7 +56,6 @@ struct action_data {
 	void *writep;
 	struct envfs_entry *env;
 };
-#define PAD4(x) ((x + 3) & ~3)
 
 #ifdef __BAREBOX__
 
@@ -228,17 +227,6 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 }
 #endif
 
-static int dir_remove_action(const char *filename, struct stat *statbuf,
-		void *userdata, int depth)
-{
-	if (!depth)
-		return 1;
-
-	rmdir(filename);
-
-	return 1;
-}
-
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
@@ -382,166 +370,6 @@ out1:
 }
 EXPORT_SYMBOL(envfs_save);
 
-static int envfs_check_super(struct envfs_super *super, size_t *size)
-{
-	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
-		printf("envfs: no envfs (magic mismatch) - envfs never written?\n");
-		return -EIO;
-	}
-
-	if (crc32(0, super, sizeof(*super) - 4) != ENVFS_32(super->sb_crc)) {
-		printf("wrong crc on env superblock\n");
-		return -EIO;
-	}
-
-	if (super->major < ENVFS_MAJOR)
-		printf("envfs version %d.%d loaded into %d.%d\n",
-			super->major, super->minor,
-			ENVFS_MAJOR, ENVFS_MINOR);
-
-	*size = ENVFS_32(super->size);
-
-	return 0;
-}
-
-static int envfs_check_data(struct envfs_super *super, const void *buf, size_t size)
-{
-	uint32_t crc;
-
-	crc = crc32(0, buf, size);
-	if (crc != ENVFS_32(super->crc)) {
-		printf("wrong crc on env\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
-static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
-		const char *dir, unsigned flags)
-{
-	int fd, ret = 0;
-	char *str, *tmp;
-	int headerlen_full;
-	/* for envfs < 1.0 */
-	struct envfs_inode_end inode_end_dummy;
-	struct stat s;
-
-	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
-	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
-
-	while (size) {
-		struct envfs_inode *inode;
-		struct envfs_inode_end *inode_end;
-		uint32_t inode_size, inode_headerlen, namelen;
-
-		inode = buf;
-		buf += sizeof(struct envfs_inode);
-
-		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
-			printf("envfs: wrong magic\n");
-			ret = -EIO;
-			goto out;
-		}
-		inode_size = ENVFS_32(inode->size);
-		inode_headerlen = ENVFS_32(inode->headerlen);
-		namelen = strlen(inode->data) + 1;
-		if (super->major < 1)
-			inode_end = &inode_end_dummy;
-		else
-			inode_end = buf + PAD4(namelen);
-
-		debug("loading %s size %d namelen %d headerlen %d\n", inode->data,
-			inode_size, namelen, inode_headerlen);
-
-		str = concat_path_file(dir, inode->data);
-
-		headerlen_full = PAD4(inode_headerlen);
-		buf += headerlen_full;
-
-		if (ENVFS_32(inode_end->magic) != ENVFS_INODE_END_MAGIC) {
-			printf("envfs: wrong inode_end_magic\n");
-			ret = -EIO;
-			goto out;
-		}
-
-		tmp = strdup(str);
-		make_directory(dirname(tmp));
-		free(tmp);
-
-		ret = stat(str, &s);
-		if (!ret && (flags & ENV_FLAG_NO_OVERWRITE)) {
-			printf("skip %s\n", str);
-			goto skip;
-		}
-
-		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
-			debug("symlink: %s -> %s\n", str, (char*)buf);
-			if (!strcmp(buf, basename(str))) {
-				unlink(str);
-			} else {
-				if (!ret)
-					unlink(str);
-
-				ret = symlink(buf, str);
-				if (ret < 0)
-					printf("symlink: %s -> %s : %s\n",
-							str, (char*)buf, strerror(-errno));
-			}
-			free(str);
-		} else {
-			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-			free(str);
-			if (fd < 0) {
-				printf("Open %s\n", errno_str());
-				ret = fd;
-				goto out;
-			}
-
-			ret = write(fd, buf, inode_size);
-			if (ret < inode_size) {
-				perror("write");
-				ret = -errno;
-				close(fd);
-				goto out;
-			}
-			close(fd);
-		}
-skip:
-		buf += PAD4(inode_size);
-		size -= headerlen_full + PAD4(inode_size) +
-				sizeof(struct envfs_inode);
-	}
-
-	recursive_action(dir, ACTION_RECURSE | ACTION_DEPTHFIRST, NULL,
-			dir_remove_action, NULL, 0);
-
-	ret = 0;
-out:
-	return ret;
-}
-
-int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags)
-{
-	int ret;
-	size_t size;
-	struct envfs_super *super = buf;
-
-	buf = super + 1;
-
-	ret = envfs_check_super(super, &size);
-	if (ret)
-		return ret;
-
-	ret = envfs_check_data(super, buf, size);
-	if (ret)
-		return ret;
-
-	ret = envfs_load_data(super, buf, size, dir, flags);
-
-	return ret;
-}
-
 /**
  * Restore the last environment into the current one
  * @param[in] filename from where to restore
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
index c6e119966..c417a4d07 100644
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
diff --git a/include/envfs.h b/include/envfs.h
index 27c4b42c6..c8fc3759c 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -93,8 +93,13 @@ struct envfs_super {
 #endif
 
 #define ENV_FLAG_NO_OVERWRITE	(1 << 0)
+#define PAD4(x) ((x + 3) & ~3)
 int envfs_load(const char *filename, const char *dirname, unsigned flags);
 int envfs_save(const char *filename, const char *dirname, unsigned flags);
+int envfs_check_super(struct envfs_super *super, size_t *size);
+int envfs_check_data(struct envfs_super *super, const void *buf, size_t size);
+int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
+		const char *dir, unsigned flags);
 int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags);
 
 /* defaults to /dev/env0 */
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index c512a105e..d1cf33a4d 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -104,6 +104,7 @@ static char *concat_subpath_file(const char *path, const char *f)
 #include "../include/envfs.h"
 #include "../crypto/crc32.c"
 #include "../lib/make_directory.c"
+#include "../common/envfs-core.c"
 #include "../common/environment.c"
 
 static void usage(char *prgname)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
