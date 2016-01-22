Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDH-0003pm-6j
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:32:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:27 +0100
Message-Id: <1453447952-30818-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] bootm: Initialize bootm_data defaults in single place
To: Barebox List <barebox@lists.infradead.org>

Both the bootm and the boot code initialize the struct bootm_data
with defaults from the bootm global variables. Create a common
function for doing this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 14 ++------------
 commands/bootm.c | 31 +++++--------------------------
 common/bootm.c   | 11 +++++++++++
 include/boot.h   |  2 ++
 4 files changed, 20 insertions(+), 38 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index fd58824..f403010 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -42,13 +42,9 @@ static int timeout;
 static int boot_script(char *path)
 {
 	int ret;
-	struct bootm_data data = {
-		.os_address = UIMAGE_SOME_ADDRESS,
-		.initrd_address = UIMAGE_SOME_ADDRESS,
-	};
+	struct bootm_data data = {};
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.", "");
 
 	ret = run_command(path);
 	if (ret) {
@@ -56,15 +52,9 @@ static int boot_script(char *path)
 		goto out;
 	}
 
-	data.initrd_address = UIMAGE_INVALID_ADDRESS;
-	data.os_address = UIMAGE_SOME_ADDRESS;
-	data.oftree_file = getenv_nonempty("global.bootm.oftree");
-	data.os_file = getenv_nonempty("global.bootm.image");
-	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
-	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
-	data.initrd_file = getenv_nonempty("global.bootm.initrd");
 	data.verbose = verbose;
 	data.dryrun = dryrun;
+	bootm_data_init_defaults(&data);
 
 	ret = bootm_boot(&data);
 	if (ret)
diff --git a/commands/bootm.c b/commands/bootm.c
index 063da62..6db0e65 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -59,19 +59,8 @@ static int do_bootm(int argc, char *argv[])
 	int opt;
 	struct bootm_data data = {};
 	int ret = 1;
-	const char *oftree = NULL, *initrd_file = NULL, *os_file = NULL;
 
-	data.initrd_address = UIMAGE_INVALID_ADDRESS;
-	data.os_address = UIMAGE_SOME_ADDRESS;
-	data.verify = 0;
-	data.verbose = 0;
-
-	oftree = getenv("global.bootm.oftree");
-	os_file = getenv("global.bootm.image");
-	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
-	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		initrd_file = getenv("global.bootm.initrd");
+	bootm_data_init_defaults(&data);
 
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
@@ -83,7 +72,7 @@ static int do_bootm(int argc, char *argv[])
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'r':
-			initrd_file = optarg;
+			data.initrd_file = optarg;
 			break;
 #endif
 		case 'a':
@@ -96,7 +85,7 @@ static int do_bootm(int argc, char *argv[])
 			data.verbose++;
 			break;
 		case 'o':
-			oftree = optarg;
+			data.oftree_file = optarg;
 			break;
 		case 'f':
 			data.force = 1;
@@ -110,23 +99,13 @@ static int do_bootm(int argc, char *argv[])
 	}
 
 	if (optind != argc)
-		os_file = argv[optind];
+		data.os_file = argv[optind];
 
-	if (!os_file || !*os_file) {
+	if (!data.os_file) {
 		printf("no boot image given\n");
 		goto err_out;
 	}
 
-	if (initrd_file && !*initrd_file)
-		initrd_file = NULL;
-
-	if (oftree && !*oftree)
-		oftree = NULL;
-
-	data.os_file = os_file;
-	data.oftree_file = oftree;
-	data.initrd_file = initrd_file;
-
 	ret = bootm_boot(&data);
 	if (ret) {
 		printf("handler failed with: %s\n", strerror(-ret));
diff --git a/common/bootm.c b/common/bootm.c
index e399a6a..4409a8b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -47,6 +47,17 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 	return NULL;
 }
 
+void bootm_data_init_defaults(struct bootm_data *data)
+{
+	data->initrd_address = UIMAGE_INVALID_ADDRESS;
+	data->os_address = UIMAGE_SOME_ADDRESS;
+	data->oftree_file = getenv_nonempty("global.bootm.oftree");
+	data->os_file = getenv_nonempty("global.bootm.image");
+	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
+	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
+	data->initrd_file = getenv_nonempty("global.bootm.initrd");
+}
+
 /*
  * bootm_load_os() - load OS to RAM
  *
diff --git a/include/boot.h b/include/boot.h
index 7c6d9c8..0c0febe 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -109,6 +109,8 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 }
 #endif
 
+void bootm_data_init_defaults(struct bootm_data *data);
+
 int bootm_load_os(struct image_data *data, unsigned long load_address);
 
 bool bootm_has_initrd(struct image_data *data);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
