Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLpYK-0003pw-Dl
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:19 +0100
Message-Id: <1423731274-9860-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/17] mtd: core: add error checks
To: Barebox List <barebox@lists.infradead.org>

register_device and devfs_create can fail. Add error checks for these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 345752e..21d04a1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -380,6 +380,7 @@ static struct file_operations mtd_ops = {
 int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
+	int ret;
 
 	if (!devname)
 		devname = "mtd";
@@ -387,7 +388,10 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	mtd->class_dev.id = device_id;
 	if (mtd->parent)
 		mtd->class_dev.parent = mtd->parent;
-	register_device(&mtd->class_dev);
+
+	ret = register_device(&mtd->class_dev);
+	if (ret)
+		return ret;
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
@@ -407,7 +411,9 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
 	}
 
-	devfs_create(&mtd->cdev);
+	ret = devfs_create(&mtd->cdev);
+	if (ret)
+		goto err;
 
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
@@ -420,6 +426,11 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 			hook->add_mtd_device(mtd, devname, &hook->priv);
 
 	return 0;
+err:
+	free(mtd->cdev.name);
+	unregister_device(&mtd->class_dev);
+
+	return ret;
 }
 
 int del_mtd_device (struct mtd_info *mtd)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
