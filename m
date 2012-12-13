Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjAz1-0001zd-EJ
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 15:46:00 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 13 Dec 2012 16:45:54 +0100
Message-Id: <1355413554-16312-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] commands: add scrub
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Allows erasing a whole NAND device including the bad blocks. Only meant
for development where one might accidently overwrite real bad block
information.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 commands/Kconfig            |    8 +++++
 commands/flash.c            |   68 ++++++++++++++++++++++++++++++++++++++++++-
 drivers/mtd/core.c          |    7 +++++
 include/linux/mtd/mtd-abi.h |    1 +
 4 files changed, 83 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index ac9b797..32ba35f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -341,6 +341,14 @@ config CMD_FLASH
 	tristate
 	prompt "protect/erase"
 
+config CMD_SCRUB
+	tristate
+	depends on CMD_FLASH && EXPERIMENTAL
+	prompt "scrub"
+	help
+	  DANGEROUS! Like erase, but will erase badblocks, too!
+	  Only meant for development!
+
 config CMD_UBI
 	tristate
 	default y if UBI
diff --git a/commands/flash.c b/commands/flash.c
index d22d6a0..7cdc86d 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -28,9 +28,13 @@
 #include <command.h>
 #include <errno.h>
 #include <getopt.h>
+#include <malloc.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <ioctl.h>
 #include <linux/stat.h>
+#include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/nand.h>
 
 static int do_flerase(int argc, char *argv[])
 {
@@ -38,11 +42,14 @@ static int do_flerase(int argc, char *argv[])
 	char *filename = NULL;
 	struct stat s;
 	loff_t start = 0, size = ~0;
-	int ret = 0;
+	int ret = 0, do_scrub;
 
 	if (argc == 1)
 		return COMMAND_ERROR_USAGE;
 
+	/* was 'scrub' called? */
+	do_scrub = (*argv[0] == 's');
+
 	filename = argv[1];
 
 	if (stat(filename, &s)) {
@@ -64,10 +71,50 @@ static int do_flerase(int argc, char *argv[])
 		goto out;
 	}
 
+	if (do_scrub) {
+		ret = ioctl(fd, MEMIGNOREBAD, (void *)1);
+		if (ret) {
+			perror("activating scrub");
+			printf("Currently, scrub only works with whole NAND devices, not partitions.\n");
+			goto out;
+		}
+	}
+
 	if (erase(fd, size, start)) {
 		perror("erase");
 		ret = 1;
 	}
+
+	if (do_scrub) {
+		struct mtd_info_user user;
+		int tmp_ret;
+
+		/* Always clear 'MEMIGNOREBAD', even when erase failed! */
+		tmp_ret = ioctl(fd, MEMIGNOREBAD, (void *)0);
+		if (tmp_ret) {
+			perror("deactivating scrub");
+			ret = tmp_ret;
+		}
+
+		/* Bail out on erase error or ioctl error */
+		if (ret)
+			goto out;
+
+		/* After scrubbing, recreate BBTs */
+		ret = ioctl(fd, MEMGETINFO, &user);
+		if (ret) {
+			perror("ioctl");
+			goto out;
+		}
+
+		if (user.type == MTD_NANDFLASH) {
+			struct nand_chip *chip = user.mtd->priv;
+
+			kfree(chip->bbt);
+			chip->bbt = NULL;
+			ret = chip->scan_bbt(user.mtd);
+		}
+	}
 out:
 	close(fd);
 
@@ -99,6 +146,25 @@ devinfo_command for partition handling.
 
  */
 
+#ifdef CONFIG_CMD_SCRUB
+
+BAREBOX_CMD_HELP_START(scrub)
+BAREBOX_CMD_HELP_USAGE("scrub <device>\n")
+BAREBOX_CMD_HELP_SHORT("Scrub a NAND device. DANGEROUS! Make sure you read all help text.\n")
+BAREBOX_CMD_HELP_TEXT("This is similar to erase but will erase badblocks, too!\n")
+BAREBOX_CMD_HELP_TEXT("That will also erase factory written badblock information, but might\n")
+BAREBOX_CMD_HELP_TEXT("restore blocks you accidently marked bad. USE ONLY WHEN YOU ARE SURE!\n")
+BAREBOX_CMD_HELP_TEXT("It will always scrub the whole device, areas are not supported (yet).\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(scrub)
+	.cmd		= do_flerase,
+	.usage		= "scrub FLASH memory (DANGEROUS!)",
+	BAREBOX_CMD_HELP(cmd_scrub_help)
+BAREBOX_CMD_END
+
+#endif /* CONFIG_CMD_SCRUB */
+
 static int do_protect(int argc, char *argv[])
 {
 	int fd;
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 95db1d6..b18447f 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -130,6 +130,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 {
 	int ret = 0;
 	struct mtd_info *mtd = cdev->priv;
+	struct nand_chip *chip = mtd->priv;
 	struct mtd_info_user *user = buf;
 #if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
 	struct mtd_ecc_stats *ecc = buf;
@@ -148,6 +149,12 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		ret = mtd->block_markbad(mtd, *offset);
 		break;
 #endif
+	case MEMIGNOREBAD:
+		dev_dbg(cdev->dev, "MEMINGNOREBAD: %d\n", (bool)buf);
+		mtd->flags &= ~MTD_IGNORE_BB;
+		if ((bool)buf)
+			mtd->flags |= MTD_IGNORE_BB;
+		break;
 	case MEMGETINFO:
 		user->type	= mtd->type;
 		user->flags	= mtd->flags;
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 49eb8e6..a1b2eb4 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -99,6 +99,7 @@ struct otp_info {
 #define ECCGETLAYOUT		_IOR('M', 17, struct nand_ecclayout)
 #define ECCGETSTATS		_IOR('M', 18, struct mtd_ecc_stats)
 #define MTDFILEMODE		_IO('M', 19)
+#define MEMIGNOREBAD		_IOW('M', 64, int)
 
 /*
  * Obsolete legacy interface. Keep it in order not to break userspace
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
