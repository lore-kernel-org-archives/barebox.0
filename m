Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STpeI-00018a-Nm
 for barebox@lists.infradead.org; Mon, 14 May 2012 07:24:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 09:24:41 +0200
Message-Id: <1336980281-30288-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1336980281-30288-1-git-send-email-s.hauer@pengutronix.de>
References: <1336980281-30288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] booting: more flexible Linux bootargs generation
To: barebox@lists.infradead.org

We currently use the environment variable 'bootargs' to get the
Linux bootargs. This patch allows for a more flexible bootargs
generation using global variables. With it the Linux bootargs
are concatenated from multiple variables. This allows to replace
parts of the bootargs string without having to reconstruct it
completely.
With this bootargs can be constructed like:

global linux.bootargs.base="console=ttyS0,115200"
global linux.bootargs.ip="ip=dhcp"
global linux.mtdparts="physmap-flash.0:512K(nor0.barebox),-(root)"

This will then automatically be combined into a kernel bootargs
string during boot.

If the 'linux.bootargs.' variables are all empty the old standard
'bootargs' way will be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c            |    2 +-
 arch/arm/lib/bootm.c               |    3 +-
 arch/blackfin/lib/blackfin_linux.c |    2 +-
 arch/nios2/lib/bootm.c             |    2 +-
 commands/Kconfig                   |   12 ++++++
 commands/linux16.c                 |    2 +-
 common/Makefile                    |    1 +
 common/bootargs.c                  |   79 ++++++++++++++++++++++++++++++++++++
 common/oftree.c                    |    3 +-
 include/boot.h                     |   16 ++++++++
 10 files changed, 116 insertions(+), 6 deletions(-)
 create mode 100644 common/bootargs.c

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index a167036..9f9dea8 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -227,7 +227,7 @@ static void setup_end_tag (void)
 static void setup_tags(unsigned long initrd_address,
 		unsigned long initrd_size, int swap)
 {
-	const char *commandline = getenv("bootargs");
+	const char *commandline = linux_bootargs_get();
 
 	setup_start_tag();
 	setup_memory_tags();
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index c4a50c3..033e2eb 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -394,7 +394,7 @@ static int do_bootm_aimage(struct image_data *data)
 	}
 
 	if (!getenv("aimage_noverwrite_bootargs"))
-		setenv("bootargs", header->cmdline);
+		linux_bootargs_overwrite(header->cmdline);
 
 	if (!getenv("aimage_noverwrite_tags"))
 		armlinux_set_bootparams((void*)header->tags_addr);
@@ -432,6 +432,7 @@ static int do_bootm_aimage(struct image_data *data)
 	return __do_bootm_linux(data, 0);
 
 err_out:
+	linux_bootargs_overwrite(NULL);
 	close(fd);
 
 	return ret;
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index 458d1b1..7798bbd 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -43,7 +43,7 @@
 static int do_bootm_linux(struct image_data *idata)
 {
 	int (*appl)(char *cmdline);
-	const char *cmdline = getenv("bootargs");
+	const char *cmdline = linux_bootargs_get();
 	char *cmdlinedest = (char *) CMD_LINE_ADDR;
 
 	if (!idata->os_res)
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index 1cd43c8..5713a89 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -39,7 +39,7 @@
 static int do_bootm_linux(struct image_data *idata)
 {
 	void (*kernel)(int, int, int, const char *);
-	const char *commandline = getenv ("bootargs");
+	const char *commandline = linux_bootargs_get();
 
 	if (!idata->os_res)
 		return -EINVAL;
diff --git a/commands/Kconfig b/commands/Kconfig
index 1c15294..1839538 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -396,6 +396,18 @@ config CMD_BOOTU
 	   compile in the 'bootu' command to start raw (uncompressed)
 	   Linux images
 
+config FLEXIBLE_BOOTARGS
+	bool
+	prompt "flexible Linux bootargs generation"
+	depends on CMD_GLOBAL
+	help
+	  Select this to get a more flexible bootargs generation. With this
+	  option the bootargs are concatenated together from global variables
+	  beginning with 'global.linux.bootargs.' and 'global.linux.mtdparts.'
+	  This allows for more flexible scripting since with it it's possible
+	  to replace parts of the bootargs string without reconstructing it
+	  completely
+
 config CMD_LINUX16
 	tristate
 	depends on X86
diff --git a/commands/linux16.c b/commands/linux16.c
index 20413b6..eccafa8 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -162,7 +162,7 @@ static int do_linux16(int argc, char *argv[])
 	unsigned real_mode_size;
 	int vid_mode = NORMAL_VGA;
 	size_t image_size;
-	const char *cmdline = getenv("bootargs");
+	const char *cmdline = linux_bootargs_get();
 	const char *kernel_file;
 
 	while((opt = getopt(argc, argv, "v:")) > 0) {
diff --git a/common/Makefile b/common/Makefile
index d842a2e..b49e6e0 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -35,6 +35,7 @@ obj-y += resource.o
 obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
+obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 extra-$(CONFIG_MODULES) += module.lds
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
diff --git a/common/bootargs.c b/common/bootargs.c
new file mode 100644
index 0000000..b17e6d1
--- /dev/null
+++ b/common/bootargs.c
@@ -0,0 +1,79 @@
+/*
+ * bootargs.c - concatenate Linux bootargs
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <boot.h>
+#include <malloc.h>
+#include <globalvar.h>
+#include <environment.h>
+
+static char *linux_bootargs;
+static int linux_bootargs_overwritten;
+
+/*
+ * This returns the Linux bootargs
+ *
+ * There are two ways to handle bootargs. The old legacy way is to use the
+ * 'bootargs' environment variable. The new and more flexible way is to use
+ * global variables beginning with "global.linux.bootargs." and
+ * "global.linux.mtdparts.". These variables will be concatenated together to
+ * the resulting bootargs. If there are no "global.linux.bootargs." variables
+ * we fall back to "bootargs"
+ */
+const char *linux_bootargs_get(void)
+{
+	char *bootargs, *mtdparts;
+
+	if (linux_bootargs_overwritten)
+		return linux_bootargs;
+
+	free(linux_bootargs);
+
+	bootargs = globalvar_get_match("linux.bootargs.", " ");
+	if (!strlen(bootargs))
+		return getenv("bootargs");
+
+	mtdparts = globalvar_get_match("linux.mtdparts.", ";");
+
+	if (strlen(mtdparts)) {
+		linux_bootargs = asprintf("%s mtdparts=%s", bootargs, mtdparts);
+		free(bootargs);
+		free(mtdparts);
+	} else {
+		free(mtdparts);
+		linux_bootargs = bootargs;
+	}
+
+	return linux_bootargs;
+}
+
+int linux_bootargs_overwrite(const char *bootargs)
+{
+	if (bootargs) {
+		free(linux_bootargs);
+		linux_bootargs = xstrdup(bootargs);
+		linux_bootargs_overwritten = 1;
+	} else {
+		linux_bootargs_overwritten = 0;
+	}
+
+	return 0;
+}
diff --git a/common/oftree.c b/common/oftree.c
index a657d31..49758a9 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -11,6 +11,7 @@
 #include <errno.h>
 #include <getopt.h>
 #include <init.h>
+#include <boot.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -257,7 +258,7 @@ static int of_fixup_bootargs(struct fdt_header *fdt)
 	if (nodeoffset < 0)
 		return nodeoffset;
 
-	str = getenv("bootargs");
+	str = linux_bootargs_get();
 	if (str) {
 		err = fdt_setprop(fdt, nodeoffset,
 				"bootargs", str, strlen(str)+1);
diff --git a/include/boot.h b/include/boot.h
index a17bf25..3ce0de1 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -5,6 +5,7 @@
 #include <filetype.h>
 #include <of.h>
 #include <linux/list.h>
+#include <environment.h>
 
 struct image_data {
 	/* simplest case. barebox has already loaded the os here */
@@ -71,4 +72,19 @@ static inline int bootm_verbose(struct image_data *data)
 }
 #endif
 
+#ifdef CONFIG_FLEXIBLE_BOOTARGS
+const char *linux_bootargs_get(void);
+int linux_bootargs_overwrite(const char *bootargs);
+#else
+static inline const char *linux_bootargs_get(void)
+{
+	return getenv("bootargs");
+}
+
+static inline int linux_bootargs_overwrite(const char *bootargs)
+{
+	return setenv("bootargs", bootargs);
+}
+#endif
+
 #endif /* __BOOT_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
