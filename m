Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDb-0003sc-4F
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:33:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:30 +0100
Message-Id: <1453447952-30818-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] bootm: make verifying/hashing configurable
To: Barebox List <barebox@lists.infradead.org>

So long struct bootm_data.verify is a bool which enables CRC checking
(hashing). Extend this to a enum and add support for signature checking
in the same option. This also adds the corresponding globalvar and a
-s option to bootm.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 12 +++++++++---
 common/bootm.c   | 20 ++++++++++++++++++--
 include/boot.h   | 12 ++++++++++--
 3 files changed, 37 insertions(+), 7 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 6db0e65..7a19fa2 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,7 +46,7 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-#define BOOTM_OPTS_COMMON "ca:e:vo:fd"
+#define BOOTM_OPTS_COMMON "sca:e:vo:fd"
 
 #ifdef CONFIG_CMD_BOOTM_INITRD
 #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
@@ -65,7 +65,11 @@ static int do_bootm(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
-			data.verify = 1;
+			if (data.verify < BOOTM_VERIFY_HASH)
+				data.verify = BOOTM_VERIFY_HASH;
+			break;
+		case 's':
+			data.verify = BOOTM_VERIFY_SIGNATURE;
 			break;
 #ifdef CONFIG_CMD_BOOTM_INITRD
 		case 'L':
@@ -118,7 +122,8 @@ err_out:
 
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-c\t",  "crc check uImage data")
+BAREBOX_CMD_HELP_OPT ("-c\t",  "hash check image integrity")
+BAREBOX_CMD_HELP_OPT ("-s\t",  "check signature of image")
 BAREBOX_CMD_HELP_OPT ("-d\t",  "dry run: check data, but do not run")
 BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
 #ifdef CONFIG_CMD_BOOTM_INITRD
@@ -160,6 +165,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr,
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
+BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
diff --git a/common/bootm.c b/common/bootm.c
index 4409a8b..78a6bb5 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -56,8 +56,22 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
 	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
+	data->verify = bootm_get_verify_mode();
 }
 
+static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
+
+enum bootm_verify bootm_get_verify_mode(void)
+{
+	return bootm_verify_mode;
+}
+
+static const char * const bootm_verify_names[] = {
+	[BOOTM_VERIFY_NONE] = "none",
+	[BOOTM_VERIFY_HASH] = "hash",
+	[BOOTM_VERIFY_SIGNATURE] = "signature",
+};
+
 /*
  * bootm_load_os() - load OS to RAM
  *
@@ -122,7 +136,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 		if (!data->initrd)
 			return -EINVAL;
 
-		if (data->verify) {
+		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 			ret = uimage_verify(data->initrd);
 			if (ret) {
 				printf("Checking data crc failed with %s\n",
@@ -382,7 +396,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (!data->os)
 		return -EINVAL;
 
-	if (data->verify) {
+	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 		ret = uimage_verify(data->os);
 		if (ret) {
 			printf("Checking data crc failed with %s\n",
@@ -550,6 +564,8 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
+	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
+				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
 	return 0;
 }
diff --git a/include/boot.h b/include/boot.h
index 0c0febe..363a02a 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -7,12 +7,18 @@
 #include <linux/list.h>
 #include <environment.h>
 
+enum bootm_verify {
+	BOOTM_VERIFY_NONE,
+	BOOTM_VERIFY_HASH,
+	BOOTM_VERIFY_SIGNATURE,
+};
+
 struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
 	const char *oftree_file;
 	int verbose;
-	bool verify;
+	enum bootm_verify verify;
 	bool force;
 	bool dryrun;
 	unsigned long initrd_address;
@@ -63,7 +69,7 @@ struct image_data {
 	struct fdt_header *oftree;
 	struct resource *oftree_res;
 
-	int verify;
+	enum bootm_verify verify;
 	int verbose;
 	int force;
 	int dryrun;
@@ -119,6 +125,8 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
 int bootm_get_os_size(struct image_data *data);
 
+enum bootm_verify bootm_get_verify_mode(void);
+
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
 #endif /* __BOOT_H */
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
