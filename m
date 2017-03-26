Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5F-00051N-OR
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:12 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 7A193B9C68
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:56 +0200
Message-Id: <1490496304-30850-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/13] move boot verify to generic code
To: barebox@lists.infradead.org

so we can use it outside of bootm only

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c      |  6 +++---
 common/Kconfig        |  4 ++++
 common/Makefile       |  1 +
 common/boot_verify.c  | 35 +++++++++++++++++++++++++++++++++++
 common/bootm.c        | 29 +++--------------------------
 common/image-fit.c    | 14 +++++++-------
 common/uimage.c       |  2 +-
 include/boot_verify.h | 20 ++++++++++++++++++++
 include/bootm.h       | 14 +++-----------
 include/image-fit.h   |  4 ++--
 10 files changed, 79 insertions(+), 50 deletions(-)
 create mode 100644 common/boot_verify.c
 create mode 100644 include/boot_verify.h

diff --git a/commands/bootm.c b/commands/bootm.c
index c7cbdbe0f..b35aaa914 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -64,11 +64,11 @@ static int do_bootm(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
-			if (data.verify < BOOTM_VERIFY_HASH)
-				data.verify = BOOTM_VERIFY_HASH;
+			if (data.verify < BOOT_VERIFY_HASH)
+				data.verify = BOOT_VERIFY_HASH;
 			break;
 		case 's':
-			data.verify = BOOTM_VERIFY_SIGNATURE;
+			data.verify = BOOT_VERIFY_SIGNATURE;
 			break;
 #ifdef CONFIG_BOOTM_INITRD
 		case 'L':
diff --git a/common/Kconfig b/common/Kconfig
index 895814ee9..00e98e859 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -24,6 +24,9 @@ config HAS_MODULES
 config HAS_SECURE_BOOT
 	bool
 
+config BOOT_VERIFY
+	bool
+
 config HAS_CACHE
 	bool
 	help
@@ -551,6 +554,7 @@ config TIMESTAMP
 
 menuconfig BOOTM
 	select UIMAGE
+	select BOOT_VERIFY
 	default y if COMMAND_SUPPORT
 	bool "bootm support"
 
diff --git a/common/Makefile b/common/Makefile
index 5f58c81d2..5d471a3a0 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 obj-$(CONFIG_BOOT)		+= boot.o
+obj-$(CONFIG_BOOT_VERIFY)	+= boot_verify.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/boot_verify.c b/common/boot_verify.c
new file mode 100644
index 000000000..afe929e68
--- /dev/null
+++ b/common/boot_verify.c
@@ -0,0 +1,35 @@
+#include <common.h>
+#include <boot_verify.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <init.h>
+
+static enum boot_verify boot_verify_mode = BOOT_VERIFY_HASH;
+
+enum boot_verify boot_get_verify_mode(void)
+{
+	return boot_verify_mode;
+}
+
+static const char * const boot_verify_names[] = {
+#ifndef CONFIG_BOOT_FORCE_SIGNED_IMAGES
+	[BOOT_VERIFY_NONE] = "none",
+	[BOOT_VERIFY_HASH] = "hash",
+	[BOOT_VERIFY_AVAILABLE] = "available",
+#endif
+	[BOOT_VERIFY_SIGNATURE] = "signature",
+};
+
+static int init_boot_verify(void)
+{
+	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
+		boot_verify_mode = BOOT_VERIFY_SIGNATURE;
+
+	globalvar_add_simple_enum("boot.verify", (unsigned int *)&boot_verify_mode,
+				  boot_verify_names, ARRAY_SIZE(boot_verify_names));
+
+	return 0;
+}
+late_initcall(init_boot_verify);
+
+BAREBOX_MAGICVAR_NAMED(global_boot_verify, global.boot.verify, "boot default verify level");
diff --git a/common/bootm.c b/common/bootm.c
index 885b09f81..74202a829 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -69,27 +69,11 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
 	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
-	data->verify = bootm_get_verify_mode();
+	data->verify = boot_get_verify_mode();
 	data->appendroot = bootm_appendroot;
 	data->verbose = bootm_verbosity;
 }
 
-static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
-
-enum bootm_verify bootm_get_verify_mode(void)
-{
-	return bootm_verify_mode;
-}
-
-static const char * const bootm_verify_names[] = {
-#ifndef CONFIG_BOOT_FORCE_SIGNED_IMAGES
-	[BOOTM_VERIFY_NONE] = "none",
-	[BOOTM_VERIFY_HASH] = "hash",
-	[BOOTM_VERIFY_AVAILABLE] = "available",
-#endif
-	[BOOTM_VERIFY_SIGNATURE] = "signature",
-};
-
 static int uimage_part_num(const char *partname)
 {
 	if (!partname)
@@ -175,7 +159,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 		if (!data->initrd)
 			return -EINVAL;
 
-		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
+		if (boot_get_verify_mode() > BOOT_VERIFY_NONE) {
 			ret = uimage_verify(data->initrd);
 			if (ret) {
 				printf("Checking data crc failed with %s\n",
@@ -532,7 +516,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES)) {
-		data->verify = BOOTM_VERIFY_SIGNATURE;
+		data->verify = BOOT_VERIFY_SIGNATURE;
 
 		/*
 		 * When we only allow booting signed images make sure everything
@@ -635,14 +619,8 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
-		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
-
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
 
-	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
-				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
-
 	return 0;
 }
 late_initcall(bootm_init);
@@ -653,6 +631,5 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr,
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
-BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
diff --git a/common/image-fit.c b/common/image-fit.c
index 7563eb955..53f3173fc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -427,8 +427,8 @@ static int fit_open_image(struct fit_handle *handle, const char *unit, const voi
 		return -EINVAL;
 	}
 
-	if (handle->verify > BOOTM_VERIFY_NONE) {
-		if (handle->verify == BOOTM_VERIFY_AVAILABLE)
+	if (handle->verify > BOOT_VERIFY_NONE) {
+		if (handle->verify == BOOT_VERIFY_AVAILABLE)
 			ret = 0;
 		else
 			ret = -ESECVIOLATION;
@@ -461,13 +461,13 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 		return 0;
 
 	switch (handle->verify) {
-	case BOOTM_VERIFY_NONE:
-	case BOOTM_VERIFY_HASH:
+	case BOOT_VERIFY_NONE:
+	case BOOT_VERIFY_HASH:
 		return 0;
-	case BOOTM_VERIFY_SIGNATURE:
+	case BOOT_VERIFY_SIGNATURE:
 		ret = -EINVAL;
 		break;
-	case BOOTM_VERIFY_AVAILABLE:
+	case BOOT_VERIFY_AVAILABLE:
 		ret = 0;
 		break;
 	}
@@ -542,7 +542,7 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 }
 
 struct fit_handle *fit_open(const char *filename, const char *config, bool verbose,
-			    enum bootm_verify verify)
+			    enum boot_verify verify)
 {
 	struct fit_handle *handle = NULL;
 	const char *desc = "(no description)";
diff --git a/common/uimage.c b/common/uimage.c
index 72c868882..d1947aa11 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -536,7 +536,7 @@ int uimage_bootm_open(struct image_data *data)
 	if (!data->os)
 		return -EINVAL;
 
-	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
+	if (boot_get_verify_mode() > BOOT_VERIFY_NONE) {
 		ret = uimage_verify(data->os);
 		if (ret) {
 			printf("Checking data crc failed with %s\n",
diff --git a/include/boot_verify.h b/include/boot_verify.h
new file mode 100644
index 000000000..3a4436584
--- /dev/null
+++ b/include/boot_verify.h
@@ -0,0 +1,20 @@
+#ifndef __BOOT_VERIFY_H__
+#define __BOOT_VERIFY_H__
+
+enum boot_verify {
+	BOOT_VERIFY_NONE,
+	BOOT_VERIFY_HASH,
+	BOOT_VERIFY_AVAILABLE,
+	BOOT_VERIFY_SIGNATURE,
+};
+
+#ifndef CONFIG_BOOT_VERIFY
+static inline enum boot_verify boot_get_verify_mode(void)
+{
+	return BOOT_VERIFY_NONE;
+}
+#else
+enum boot_verify boot_get_verify_mode(void);
+#endif
+
+#endif /* __BOOT_VERIFY_H__ */
diff --git a/include/bootm.h b/include/bootm.h
index 27c9f571e..73b0c8294 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -3,21 +3,15 @@
 
 #include <image.h>
 #include <filetype.h>
+#include <boot_verify.h>
 #include <linux/list.h>
 
-enum bootm_verify {
-	BOOTM_VERIFY_NONE,
-	BOOTM_VERIFY_HASH,
-	BOOTM_VERIFY_SIGNATURE,
-	BOOTM_VERIFY_AVAILABLE,
-};
-
 struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
 	const char *oftree_file;
 	int verbose;
-	enum bootm_verify verify;
+	enum boot_verify verify;
 	bool force;
 	bool dryrun;
 	/*
@@ -77,7 +71,7 @@ struct image_data {
 	struct fdt_header *oftree;
 	struct resource *oftree_res;
 
-	enum bootm_verify verify;
+	enum boot_verify verify;
 	int verbose;
 	int force;
 	int dryrun;
@@ -120,8 +114,6 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
 int bootm_get_os_size(struct image_data *data);
 
-enum bootm_verify bootm_get_verify_mode(void);
-
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
 #endif /* __BOOTM_H */
diff --git a/include/image-fit.h b/include/image-fit.h
index e817ebfae..bb69ce5af 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -26,7 +26,7 @@ struct fit_handle {
 	size_t size;
 
 	bool verbose;
-	enum bootm_verify verify;
+	enum boot_verify verify;
 
 	struct device_node *root;
 
@@ -40,7 +40,7 @@ struct fit_handle {
 
 int fit_bootm_open(struct image_data *data);
 struct fit_handle *fit_open(const char *filename, const char *config, bool verbose,
-			    enum bootm_verify verify);
+			    enum boot_verify verify);
 void fit_close(struct fit_handle *handle);
 
 #endif	/* __IMAGE_FIT_H__ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
