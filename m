Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE9-00049g-ES
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:08:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:44 +0200
Message-Id: <1347480407-16865-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/15] cfi-flash: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.c |   29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 16885c0..a8eebf5 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -982,6 +982,7 @@ static void cfi_init_mtd(struct flash_info *info)
 static int cfi_probe (struct device_d *dev)
 {
 	struct flash_info *info = xzalloc(sizeof(*info));
+	int cfinum;
 
 	dev->priv = (void *)info;
 
@@ -1000,7 +1001,12 @@ static int cfi_probe (struct device_d *dev)
 	dev_info(dev, "found cfi flash at %p, size %ld\n",
 			info->base, info->size);
 
-	info->cdev.name = asprintf("nor%d", dev->id);
+	if (dev->id < 0)
+		cfinum = cdev_find_free_index("nor");
+	else
+		cfinum = dev->id;
+
+	info->cdev.name = asprintf("nor%d", cfinum);
 	info->cdev.size = info->size;
 	info->cdev.dev = dev;
 	info->cdev.ops = &cfi_ops;
@@ -1011,19 +1017,30 @@ static int cfi_probe (struct device_d *dev)
 #endif
 	devfs_create(&info->cdev);
 
+	if (dev->device_node)
+		of_parse_partitions(info->cdev.name, dev->device_node);
+
 	return 0;
 }
 
+static __maybe_unused struct of_device_id cfi_dt_ids[] = {
+	{
+		.compatible = "cfi-flash",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d cfi_driver = {
-        .name    = "cfi_flash",
-        .probe   = cfi_probe,
-        .info    = cfi_info,
+	.name    = "cfi_flash",
+	.probe   = cfi_probe,
+	.info    = cfi_info,
+	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
 };
 
 static int cfi_init(void)
 {
-        return register_driver(&cfi_driver);
+	return register_driver(&cfi_driver);
 }
 
 device_initcall(cfi_init);
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
