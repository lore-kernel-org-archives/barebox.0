Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050i-M6
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:44 +0200
Message-Id: <1380006527-2599-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] bootm: Add dryrun support
To: barebox@lists.infradead.org

This adds support for checking the bootm command without actually booting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 15 ++++++++++++---
 common/bootm.c   |  6 +++++-
 include/boot.h   |  2 ++
 3 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 927c2fb..44facd4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,7 +46,7 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-#define BOOTM_OPTS_COMMON "ca:e:vo:f"
+#define BOOTM_OPTS_COMMON "ca:e:vo:fd"
 
 #ifdef CONFIG_CMD_BOOTM_INITRD
 #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
@@ -101,6 +101,9 @@ static int do_bootm(int argc, char *argv[])
 		case 'f':
 			data.force = 1;
 			break;
+		case 'd':
+			data.dryrun = 1;
+			break;
 		default:
 			break;
 		}
@@ -125,17 +128,23 @@ static int do_bootm(int argc, char *argv[])
 	data.initrd_file = initrd_file;
 
 	ret = bootm_boot(&data);
+	if (ret) {
+		printf("handler failed with: %s\n", strerror(-ret));
+		goto err_out;
+	}
 
-	printf("handler failed with %s\n", strerror(-ret));
+	if (data.dryrun)
+		printf("Dryrun. Aborted\n");
 
 err_out:
-	return 1;
+	return ret ? 1 : 0;
 }
 
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
 BAREBOX_CMD_HELP_OPT  ("-c",  "crc check uImage data\n")
+BAREBOX_CMD_HELP_OPT  ("-d",  "dryrun. Check data, but do not run\n")
 #ifdef CONFIG_CMD_BOOTM_INITRD
 BAREBOX_CMD_HELP_OPT  ("-r <initrd>","specify an initrd image\n")
 BAREBOX_CMD_HELP_OPT  ("-L <load addr>","specify initrd load address\n")
diff --git a/common/bootm.c b/common/bootm.c
index 3c5689b..a431dff 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -263,6 +263,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
+	data->dryrun = bootm_data->dryrun;
 	data->initrd_address = bootm_data->initrd_address;
 	data->os_address = bootm_data->os_address;
 	data->os_entry = bootm_data->os_entry;
@@ -346,7 +347,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
-	ret = handler->bootm(data);
+	if (data->dryrun)
+		ret = 0;
+	else
+		ret = handler->bootm(data);
 err_out:
 	if (data->os_res)
 		release_sdram_region(data->os_res);
diff --git a/include/boot.h b/include/boot.h
index 3bb55e7..84b4fd0 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -14,6 +14,7 @@ struct bootm_data {
 	int verbose;
 	bool verify;
 	bool force;
+	bool dryrun;
 	unsigned long initrd_address;
 	unsigned long os_address;
 	unsigned long os_entry;
@@ -64,6 +65,7 @@ struct image_data {
 	int verify;
 	int verbose;
 	int force;
+	int dryrun;
 };
 
 struct image_handler {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
