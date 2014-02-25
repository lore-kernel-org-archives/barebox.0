Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIIq4-0003C4-PP
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 14:18:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2014 15:18:04 +0100
Message-Id: <1393337884-17282-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
References: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] defaultenv: Allow multiple defaultenvironment overlays
To: barebox@lists.infradead.org

We can compile barebox for multiple boards at once, but currently
they all share a single default environment. This patch adds a
defaultenv_append() which boards can call to customize the default
environment during runtime. Each board now generate default environment
snippets using bbenv-y and add them during runtime with defaultenv_append()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                |   3 +-
 commands/loadenv.c      |  34 +++++++++--
 common/Kconfig          |   6 ++
 common/Makefile         |  39 -------------
 common/environment.c    |   2 +-
 common/startup.c        |  35 +----------
 defaultenv/Makefile     |  23 ++++++++
 defaultenv/defaultenv.c | 150 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/envfs.h         |  31 ++++++++++
 9 files changed, 243 insertions(+), 80 deletions(-)
 create mode 100644 defaultenv/Makefile
 create mode 100644 defaultenv/defaultenv.c

diff --git a/Makefile b/Makefile
index 779ad74..9ff2587 100644
--- a/Makefile
+++ b/Makefile
@@ -493,6 +493,7 @@ all: barebox-flash-image $(KBUILD_DTBS)
 endif
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
+common-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv/
 
 barebox-dirs	:= $(patsubst %/,%,$(filter %/, $(common-y)))
 
@@ -1022,7 +1023,7 @@ clean: archclean $(clean-dirs)
 	@find . $(RCS_FIND_IGNORE) \
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
-		-o -name '*.symtypes' -o -name '*.bbenv.S' -o -name "*.bbenv" \) \
+		-o -name '*.symtypes' -o -name '*.bbenv.*' -o -name "*.bbenv" \) \
 		-type f -print | xargs rm -f
 
 # mrproper - Delete all generated files, including .config
diff --git a/commands/loadenv.c b/commands/loadenv.c
index bad8894..96a0775 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -26,6 +26,7 @@
 #include <envfs.h>
 #include <errno.h>
 #include <fs.h>
+#include <malloc.h>
 
 static int do_loadenv(int argc, char *argv[])
 {
@@ -33,8 +34,9 @@ static int do_loadenv(int argc, char *argv[])
 	unsigned flags = 0;
 	int opt;
 	int scrub = 0;
+	int defaultenv = 0;
 
-	while ((opt = getopt(argc, argv, "ns")) > 0) {
+	while ((opt = getopt(argc, argv, "nsd")) > 0) {
 		switch (opt) {
 		case 'n':
 			flags |= ENV_FLAG_NO_OVERWRITE;
@@ -42,6 +44,9 @@ static int do_loadenv(int argc, char *argv[])
 		case 's':
 			scrub = 1;
 			break;
+		case 'd':
+			defaultenv = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -52,10 +57,26 @@ static int do_loadenv(int argc, char *argv[])
 	else
 		dirname = argv[optind + 1];
 
-	if (argc - optind < 1)
+	if (argc - optind < 1) {
 		filename = default_environment_path_get();
-	else
-		filename = argv[optind];
+	} else {
+		char *str = normalise_path(argv[optind]);
+
+		/*
+		 * /dev/defaultenv use to contain the defaultenvironment.
+		 * we do not have this file anymore, but maintain compatibility
+		 * to the 'loadenv -s /dev/defaultenv' command to restore the
+		 * default environment for some time.
+		 */
+		if (!strcmp(str, "/dev/defaultenv")) {
+			defaultenv = 1;
+			filename = "defaultenv";
+		} else {
+			filename = argv[optind];
+		}
+
+		free(str);
+	}
 
 	if (scrub) {
 		int ret;
@@ -77,7 +98,10 @@ static int do_loadenv(int argc, char *argv[])
 
 	printf("loading environment from %s\n", filename);
 
-	return envfs_load(filename, dirname, flags);
+	if (defaultenv)
+		return defaultenv_load(dirname);
+	else
+		return envfs_load(filename, dirname, flags);
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
diff --git a/common/Kconfig b/common/Kconfig
index d6cda8c..d862c05 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -587,6 +587,12 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_BOOT
 	prompt "Generic environment template"
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
+	bool
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on CONFIG_CMD_MENU_MANAGEMENT
+	default y
+
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on !HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/common/Makefile b/common/Makefile
index 9c68f7b..667c7b3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -7,7 +7,6 @@ obj-y				+= misc.o
 obj-y				+= memsize.o
 obj-y				+= resource.o
 obj-y				+= bootsource.o
-extra-y				+= barebox_default_env barebox_default_env.h
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_BANNER)		+= version.o
 obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
@@ -45,44 +44,6 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 
-
-ifdef CONFIG_DEFAULT_ENVIRONMENT
-$(obj)/startup.o: $(obj)/barebox_default_env.h
-$(obj)/env.o: $(obj)/barebox_default_env.h
-
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW),y)
-DEFAULT_ENVIRONMENT_PATH = "defaultenv/defaultenv-2-base"
-ifeq ($(CONFIG_CMD_MENU_MANAGEMENT),y)
-DEFAULT_ENVIRONMENT_PATH += "defaultenv/defaultenv-2-menu"
-endif
-endif
-
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
-DEFAULT_ENVIRONMENT_PATH = "defaultenv/defaultenv-1"
-endif
-
-ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
-DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
-endif
-
-endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
-
-#
-# Generate a barebox envfs image.
-#
-quiet_cmd_envs = ENV     $@
-cmd_envs = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(DEFAULT_ENVIRONMENT_PATH))
-
-$(obj)/barebox_default_env: FORCE
-	$(call cmd,envs)
-
-quiet_cmd_env_h = ENVH    $@
-cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
-	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
-
-$(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
-	$(call if_changed,env_h)
-
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
 ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
diff --git a/common/environment.c b/common/environment.c
index 19fb027..776fa3a 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -240,7 +240,7 @@ static int envfs_check_super(struct envfs_super *super, size_t *size)
 	return 0;
 }
 
-static int envfs_check_data(struct envfs_super *super, void *buf, size_t size)
+static int envfs_check_data(struct envfs_super *super, const void *buf, size_t size)
 {
 	uint32_t crc;
 
diff --git a/common/startup.c b/common/startup.c
index 6847b61..409cdd1 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -44,39 +44,6 @@
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
 
-#ifdef CONFIG_DEFAULT_ENVIRONMENT
-#include "barebox_default_env.h"
-
-static int register_default_env(void)
-{
-	int ret;
-	void *defaultenv;
-
-	if (!IS_ENABLED(CONFIG_DEFAULT_COMPRESSION_NONE)) {
-
-		defaultenv = xzalloc(default_environment_uncompress_size);
-
-		ret = uncompress(default_environment, default_environment_size,
-				NULL, NULL,
-				defaultenv, NULL, uncompress_err_stdout);
-		if (ret) {
-			free(defaultenv);
-			return ret;
-		}
-	} else {
-		defaultenv = (void *)default_environment;
-	}
-
-
-	add_mem_device("defaultenv", (unsigned long)defaultenv,
-		       default_environment_uncompress_size,
-		       IORESOURCE_MEM_WRITEABLE);
-	return 0;
-}
-
-device_initcall(register_default_env);
-#endif
-
 #if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
 static int mount_root(void)
 {
@@ -120,7 +87,7 @@ void __noreturn start_barebox(void)
 			pr_err("no valid environment found on %s. "
 				"Using default environment\n",
 				default_environment_path);
-			envfs_load("/dev/defaultenv", "/env", 0);
+			defaultenv_load("/env");
 		}
 	}
 
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
new file mode 100644
index 0000000..d449e02
--- /dev/null
+++ b/defaultenv/Makefile
@@ -0,0 +1,23 @@
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
+obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
+extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX)
+
+$(obj)/defaultenv.o: $(obj)/barebox_default_env.h
+
+#
+# Generate a barebox envfs image.
+#
+quiet_cmd_env_default = ENV     $@
+cmd_env_default = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
+
+$(obj)/barebox_default_env: FORCE
+	$(call cmd,env_default)
+
+quiet_cmd_env_h = ENVH    $@
+cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
+	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
+
+$(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
+	$(call if_changed,env_h)
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
new file mode 100644
index 0000000..7859eb2
--- /dev/null
+++ b/defaultenv/defaultenv.c
@@ -0,0 +1,150 @@
+/*
+ * Copyright (C) 2014 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <envfs.h>
+#include <filetype.h>
+#include <uncompress.h>
+#include <malloc.h>
+#include <init.h>
+#include <asm/unaligned.h>
+#include "barebox_default_env.h"
+
+static LIST_HEAD(defaultenv_list);
+
+struct defaultenv {
+	struct list_head list;
+	const char *name;
+	void *buf;
+	size_t size;
+};
+
+static void defaultenv_add_base(void)
+{
+	static int base_added;
+
+	if (base_added)
+		return;
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW))
+		defaultenv_append_directory(defaultenv_2_base);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU))
+		defaultenv_append_directory(defaultenv_2_menu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_1);
+
+	/*
+	 * The traditional environment given with CONFIG_DEFAULT_ENVIRONMENT_PATH.
+	 * Once all users are converted to bbenv-y this can go.
+	 */
+	defaultenv_append((void *)default_environment,
+			default_environment_size, "defaultenv");
+
+	base_added = 1;
+
+	return;
+}
+
+/*
+ * defaultenv_append - append a envfs buffer to the default environment
+ * @buf:	The buffer containing the binary environment. If it is
+ *              not a plain buffer it is assumed to be a compressed buffer.
+ * @size:	The length of the buffer
+ *
+ * This adds an overlay to the default environment. New files will be created,
+ * existing files will be overwritten with the overlay.
+ */
+void defaultenv_append(void *buf, unsigned int size, const char *name)
+{
+	struct defaultenv *df;
+
+	defaultenv_add_base();
+
+	df = xzalloc(sizeof(*df));
+	df->buf = buf;
+	df->size = size;
+	df->name = name;
+
+	list_add_tail(&df->list, &defaultenv_list);
+}
+
+static int defaultenv_load_one(struct defaultenv *df, const char *dir)
+{
+	void *freep = NULL;
+	void *buf;
+	enum filetype ft = file_detect_type(df->buf, df->size);
+	uint32_t size;
+	int ret;
+
+	pr_debug("loading %s\n", df->name);
+
+	if (!IS_ENABLED(CONFIG_DEFAULT_COMPRESSION_NONE) &&
+			ft != filetype_barebox_env) {
+		size = get_unaligned_le32(df->buf + df->size - 4);
+		freep = malloc(size);
+		if (!freep)
+			return -ENOMEM;
+
+		ret = uncompress(df->buf, df->size,
+				NULL, NULL,
+				freep, NULL, uncompress_err_stdout);
+		if (ret) {
+			free(freep);
+			pr_err("Failed to uncompress: %s\n", strerror(-ret));
+			return ret;
+		}
+
+		buf = freep;
+	} else {
+		buf = df->buf;
+		size = df->size;
+	}
+
+	ret = envfs_load_from_buf(buf, size, dir, 0);
+
+	free(freep);
+
+	if (ret)
+		pr_err("Failed to load defaultenv: %s\n", strerror(-ret));
+
+	return ret;
+}
+
+/*
+ * defaultenv_load - load the default environment
+ * @dir:	The directory the default environment should be loaded to.
+ *
+ * This loads all environment snippets previously registered with
+ * defaultenv_append to the directory given with @dir.
+ *
+ * Return: 0 for success, negative error code otherwise.
+ */
+int defaultenv_load(const char *dir)
+{
+	struct defaultenv *df;
+	int ret;
+
+	defaultenv_add_base();
+
+	list_for_each_entry(df, &defaultenv_list, list) {
+		ret = defaultenv_load_one(df, dir);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/include/envfs.h b/include/envfs.h
index b63683c..74479ee 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -3,6 +3,7 @@
 
 #ifdef __BAREBOX__
 #include <asm/byteorder.h>
+#include <linux/stringify.h>
 #endif
 
 #define ENVFS_MAJOR		1
@@ -111,4 +112,34 @@ static inline char *default_environment_path_get(void)
 
 int envfs_register_partition(const char *devname, unsigned int partnr);
 
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+void defaultenv_append(void *buf, unsigned int size, const char *name);
+int defaultenv_load(const char *dir);
+#else
+static inline void defaultenv_append(void *buf, unsigned int size, const char *name)
+{
+}
+
+static inline int defaultenv_load(const char *dir)
+{
+	return -ENOSYS;
+}
+#endif
+
+/*
+ * Append environment directory compiled into barebox with bbenv-y
+ * to the default environment. The symbol is generated from the filename
+ * during the build process. Replace '-' with '_' to get the name
+ * from the filename.
+ */
+#define defaultenv_append_directory(name)			\
+	{							\
+		extern char __bbenv_##name##_start[];		\
+		extern char __bbenv_##name##_end[];		\
+		defaultenv_append(__bbenv_##name##_start,	\
+				__bbenv_##name##_end -		\
+				__bbenv_##name##_start,		\
+				__stringify(name));		\
+	}
+
 #endif /* _ENVFS_H */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
