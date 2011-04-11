Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HqM-0005zb-C5
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:11:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:11:51 +0200
Message-Id: <1302531111-29244-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] nand bb: add proper bb remove function
To: barebox@lists.infradead.org

The old way happily removed cdev entries which were no bb dev
at all. Fix this by checking if the given device actually is
a bb device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c            |   13 +------------
 drivers/mtd/nand/nand-bb.c |   22 ++++++++++++++++++++++
 include/nand.h             |    5 +++++
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index ed55625..88f242d 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -39,7 +39,6 @@
 static int do_nand(struct command *cmdtp, int argc, char *argv[])
 {
 	int opt;
-	struct nand_bb *bb;
 	int command = 0, badblock = 0;
 
 	while((opt = getopt(argc, argv, "adb:")) > 0) {
@@ -72,17 +71,7 @@ static int do_nand(struct command *cmdtp, int argc, char *argv[])
 
 	if (command & NAND_DEL) {
 		while (optind < argc) {
-			struct cdev *cdev;
-
-			cdev = cdev_by_name(basename(argv[optind]));
-			if (!cdev) {
-				printf("no such device: %s\n", argv[optind]);
-				return 1;
-			}
-			bb = cdev->priv;
-			close(bb->fd);
-			devfs_remove(cdev);
-			free(bb);
+			dev_remove_bb_dev(basename(argv[optind]));
 			optind++;
 		}
 	}
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index d71a2b0..dbfb8e3 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -31,6 +31,7 @@
 #include <linux/mtd/mtd-abi.h>
 #include <fcntl.h>
 #include <libgen.h>
+#include <linux/list.h>
 
 struct nand_bb {
 	char cdevname[MAX_DRIVER_NAME];
@@ -47,6 +48,8 @@ struct nand_bb {
 	void *writebuf;
 
 	struct cdev cdev;
+
+	struct list_head list;
 };
 
 static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
@@ -218,6 +221,8 @@ static struct file_operations nand_bb_ops = {
 #endif
 };
 
+static LIST_HEAD(bb_list);
+
 /**
  * Add a bad block aware device ontop of another (NAND) device
  * @param[in] dev The device to add a partition on
@@ -258,6 +263,8 @@ int dev_add_bb_dev(char *path, const char *name)
 	if (ret)
 		goto out4;
 
+	list_add_tail(&bb->list, &bb_list);
+
 	return 0;
 
 out4:
@@ -267,3 +274,18 @@ out1:
 	return ret;
 }
 
+int dev_remove_bb_dev(const char *name)
+{
+	struct nand_bb *bb;
+
+	list_for_each_entry(bb, &bb_list, list) {
+		if (!strcmp(bb->cdev.name, name)) {
+			devfs_remove(&bb->cdev);
+			cdev_close(bb->cdev_parent);
+			free(bb);
+			return 0;
+		}
+	}
+
+	return -ENODEV;
+}
diff --git a/include/nand.h b/include/nand.h
index 05358d0..b1762df 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -6,10 +6,15 @@ struct nand_bb;
 
 #ifdef CONFIG_NAND
 int dev_add_bb_dev(char *filename, const char *name);
+int dev_remove_bb_dev(const char *name);
 #else
 static inline int dev_add_bb_dev(char *filename, const char *name) {
 	return 0;
 }
+static inline int dev_remove_bb_dev(const char *name)
+{
+	return 0;
+}
 #endif
 
 #endif /* __NAND_H__ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
