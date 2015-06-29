Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9RQx-0007wQ-3A
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 05:16:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Jun 2015 07:16:20 +0200
Message-Id: <1435554981-30388-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: Make devname argument to add_mtd_device const
To: Barebox List <barebox@lists.infradead.org>

add_mtd_device duplicates the string where necessary, so make it
const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 2 +-
 drivers/mtd/mtd.h       | 2 +-
 drivers/mtd/mtdoob.c    | 2 +-
 drivers/mtd/mtdraw.c    | 2 +-
 include/linux/mtd/mtd.h | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 681dc93..8b8254c 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -542,7 +542,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 	return 0;
 }
 
-int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
+int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
 	int ret;
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
index 414bd6c..2a85265 100644
--- a/drivers/mtd/mtd.h
+++ b/drivers/mtd/mtd.h
@@ -25,7 +25,7 @@
  */
 struct mtddev_hook {
 	struct list_head hook;
-	int (*add_mtd_device)(struct mtd_info *mtd, char *devname, void **priv);
+	int (*add_mtd_device)(struct mtd_info *mtd, const char *devname, void **priv);
 	int (*del_mtd_device)(struct mtd_info *mtd, void **priv);
 	void *priv;
 };
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 10d17e9..6160ddb 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -69,7 +69,7 @@ static struct file_operations mtd_ops_oob = {
 	.lseek  = dev_lseek_default,
 };
 
-static int add_mtdoob_device(struct mtd_info *mtd, char *devname, void **priv)
+static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **priv)
 {
 	struct mtdoob *mtdoob;
 
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index c25e406..ae4bec2 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -281,7 +281,7 @@ static const struct file_operations mtd_raw_fops = {
 	.lseek		= dev_lseek_default,
 };
 
-static int add_mtdraw_device(struct mtd_info *mtd, char *devname, void **priv)
+static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **priv)
 {
 	struct mtdraw *mtdraw;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 33f1fd5..7e828bc 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -270,7 +270,7 @@ static inline uint32_t mtd_div_by_wb(uint64_t sz, struct mtd_info *mtd)
 
 	/* Kernel-side ioctl definitions */
 
-extern int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id);
+extern int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id);
 extern int del_mtd_device (struct mtd_info *mtd);
 
 extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
