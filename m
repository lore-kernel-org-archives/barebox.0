Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6l-0005gC-Da
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:04 +0200
Message-Id: <1435303867-12889-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: detect ubi devices automatically
To: Barebox List <barebox@lists.infradead.org>

Hook UBI attachment into the mtd class devices detect function. This
makes it possible to attach ubi devices with 'detect nand0.root'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 681dc93..8a07086 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -18,7 +18,9 @@
 #include <common.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/mtd.h>
+#include <mtd/ubi-user.h>
 #include <cmdlinepart.h>
+#include <filetype.h>
 #include <init.h>
 #include <xfuncs.h>
 #include <driver.h>
@@ -542,6 +544,41 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 	return 0;
 }
 
+static int mtd_detect(struct device_d *dev)
+{
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	int bufsize = 512;
+	void *buf;
+	int ret;
+	enum filetype filetype;
+	size_t retlen;
+
+	/*
+	 * Do not try to attach an UBI device if this device has partitions
+	 * as it's not a good idea to attach UBI on a raw device when the
+	 * real UBI only spans the first partition.
+	 */
+	if (!list_empty(&mtd->partitions))
+		return -EBUSY;
+
+	buf = xmalloc(bufsize);
+
+	ret = mtd_read(mtd, 0, bufsize, &retlen, buf);
+	if (ret)
+		goto out;
+
+	filetype = file_detect_type(buf, bufsize);
+	if (filetype == filetype_ubi) {
+		ret = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO, 0, 20);
+		if (ret == -EEXIST)
+			ret = 0;
+	}
+out:
+	free(buf);
+
+	return ret;
+}
+
 int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
@@ -554,6 +591,9 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (mtd->parent)
 		mtd->class_dev.parent = mtd->parent;
 
+	if (IS_ENABLED(CONFIG_MTD_UBI))
+		mtd->class_dev.detect = mtd_detect;
+
 	ret = register_device(&mtd->class_dev);
 	if (ret)
 		return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
