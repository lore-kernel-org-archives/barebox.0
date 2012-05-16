Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUYI7-0002AN-VS
 for barebox@lists.infradead.org; Wed, 16 May 2012 07:05:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 09:04:54 +0200
Message-Id: <1337151896-5888-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
References: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] bootm: Add default images variables
To: barebox@lists.infradead.org

It turns out useful to be able to configure bootm before its usage.
This allows us to overwrite bootm settings on an individual base.
This patch adds global variables to configure the kernel image, the
initrd image and the devicetree image. These values will be used
unless overwritten explicitely with command line switches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |    1 +
 commands/bootm.c |   66 ++++++++++++++++++++++++++++++++++++++++++------------
 2 files changed, 53 insertions(+), 14 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 1839538..52e1f17 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -329,6 +329,7 @@ config CMD_BOOTM
 	select CRC32
 	select UNCOMPRESS
 	select FILETYPE
+	select GLOBALVAR
 	prompt "bootm"
 
 config CMD_BOOTM_SHOW_TYPE
diff --git a/commands/bootm.c b/commands/bootm.c
index 0c0e56a..2989d39 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -47,6 +47,8 @@
 #include <memory.h>
 #include <filetype.h>
 #include <binfmt.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
 static LIST_HEAD(handler_list);
@@ -136,7 +138,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 }
 
 #ifdef CONFIG_OFTREE
-static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
+static int bootm_open_oftree(struct image_data *data, const char *oftree, int num)
 {
 	enum filetype ft;
 	struct fdt_header *fdt, *fixfdt;
@@ -231,19 +233,25 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 	return NULL;
 }
 
-static void bootm_image_name_and_no(char *name, int *no)
+static char *bootm_image_name_and_no(const char *name, int *no)
 {
-	char *at;
+	char *at, *ret;
+
+	if (!name || !*name)
+		return NULL;
 
 	*no = 0;
 
-	at = strchr(name, '@');
+	ret = xstrdup(name);
+	at = strchr(ret, '@');
 	if (!at)
-		return;
+		return ret;
 
 	*at++ = 0;
 
 	*no = simple_strtoul(at, NULL, 10);
+
+	return ret;
 }
 
 #define BOOTM_OPTS_COMMON "ca:e:vo:f"
@@ -261,7 +269,7 @@ static int do_bootm(int argc, char *argv[])
 	struct image_data data;
 	int ret = 1;
 	enum filetype os_type, initrd_type = filetype_unknown;
-	char *oftree = NULL;
+	const char *oftree = NULL, *initrd_file = NULL, *os_file = NULL;
 	int fallback = 0;
 
 	memset(&data, 0, sizeof(struct image_data));
@@ -271,6 +279,11 @@ static int do_bootm(int argc, char *argv[])
 	data.verify = 0;
 	data.verbose = 0;
 
+	oftree = getenv("global.bootm.oftree");
+	os_file = getenv("global.bootm.image");
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+		initrd_file = getenv("global.bootm.initrd");
+
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
@@ -281,7 +294,7 @@ static int do_bootm(int argc, char *argv[])
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'r':
-			data.initrd_file = optarg;
+			initrd_file = optarg;
 			break;
 #endif
 		case 'a':
@@ -304,12 +317,21 @@ static int do_bootm(int argc, char *argv[])
 		}
 	}
 
-	if (optind == argc)
-		return COMMAND_ERROR_USAGE;
+	if (optind != argc)
+		os_file = argv[optind];
+
+	if (!os_file || !*os_file) {
+		printf("no boot image given\n");
+		goto err_out;
+	}
+
+	if (initrd_file && !*initrd_file)
+		initrd_file = NULL;
 
-	data.os_file = argv[optind];
+	if (oftree && !*oftree)
+		oftree = NULL;
 
-	bootm_image_name_and_no(data.os_file, &data.os_num);
+	data.os_file = bootm_image_name_and_no(os_file, &data.os_num);
 
 	os_type = file_name_detect_type(data.os_file);
 	if ((int)os_type < 0) {
@@ -332,8 +354,8 @@ static int do_bootm(int argc, char *argv[])
 		}
 	}
 
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data.initrd_file) {
-		bootm_image_name_and_no(data.initrd_file, &data.initrd_num);
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && initrd_file) {
+		data.initrd_file = bootm_image_name_and_no(initrd_file, &data.initrd_num);
 
 		initrd_type = file_name_detect_type(data.initrd_file);
 		if ((int)initrd_type < 0) {
@@ -388,7 +410,7 @@ static int do_bootm(int argc, char *argv[])
 	if (oftree) {
 		int oftree_num;
 
-		bootm_image_name_and_no(oftree, &oftree_num);
+		oftree = bootm_image_name_and_no(oftree, &oftree_num);
 
 		ret = bootm_open_oftree(&data, oftree, oftree_num);
 		if (ret)
@@ -417,6 +439,8 @@ static int do_bootm(int argc, char *argv[])
 	printf("handler failed with %s\n", strerror(-ret));
 
 err_out:
+	free(data.initrd_file);
+	free(data.os_file);
 	if (data.os_res)
 		release_sdram_region(data.os_res);
 	if (data.initrd_res)
@@ -428,6 +452,18 @@ err_out:
 	return 1;
 }
 
+static int bootm_init(void)
+{
+
+	globalvar_add_simple("bootm.image");
+	globalvar_add_simple("bootm.oftree");
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+		globalvar_add_simple("bootm.initrd");
+
+	return 0;
+}
+late_initcall(bootm_init);
+
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
@@ -453,6 +489,8 @@ BAREBOX_CMD_START(bootm)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
+BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
