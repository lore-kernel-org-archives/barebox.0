Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xq1-0001S9-FV
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 09:16:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 11:15:52 +0200
Message-Id: <1434964552-13915-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434964552-13915-1-git-send-email-s.hauer@pengutronix.de>
References: <1434964552-13915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: cfi-flash: Add mtd concat support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 80 +++++++++++++++++++++++++++++++++++++--------
 1 file changed, 66 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index f9aecad..f2268df 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -41,6 +41,7 @@
 #include <progress.h>
 #include <linux/err.h>
 #include <asm/unaligned.h>
+#include <linux/mtd/concat.h>
 #include "cfi_flash.h"
 
 /*
@@ -920,6 +921,12 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return 0;
 }
 
+struct cfi_priv {
+	struct flash_info *infos;
+	int num_devs;
+	struct mtd_info **mtds;
+};
+
 static void cfi_init_mtd(struct flash_info *info)
 {
 	struct mtd_info *mtd = &info->mtd;
@@ -948,39 +955,84 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->flags = MTD_CAP_NORFLASH;
 	mtd->type = MTD_NORFLASH;
 	mtd->parent = info->dev;
-
-	add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
 }
 
-static int cfi_probe(struct device_d *dev)
+static int cfi_probe_one(struct flash_info *info, int num)
 {
-	struct flash_info *info = xzalloc(sizeof(*info));
 	int ret;
 
-	dev->priv = info;
-
-	/* Init: no FLASHes known */
 	info->flash_id = FLASH_UNKNOWN;
 	info->cmd_reset = FLASH_CMD_RESET;
-	info->base = dev_request_mem_region(dev, 0);
+	info->base = dev_request_mem_region(info->dev, num);
 	if (IS_ERR(info->base))
 		return PTR_ERR(info->base);
 
-	info->dev = dev;
-
 	ret = flash_detect_size(info);
 	if (ret) {
-		dev_warn(dev, "## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
-			dev->resource[0].start, info->size, info->size << 20);
+		dev_warn(info->dev, "## Unknown FLASH on Bank at 0x%p - Size = 0x%08lx = %ld MB\n",
+			info->base, info->size, info->size << 20);
 		return -ENODEV;
 	}
 
-	dev_info(dev, "found cfi flash at 0x%p, size %s\n",
+	dev_info(info->dev, "found cfi flash at 0x%p, size %s\n",
 			info->base, size_human_readable(info->size));
 
+	cfi_init_mtd(info);
+
+	return 0;
+}
+
+static int cfi_probe(struct device_d *dev)
+{
+	struct cfi_priv *priv;
+	int i, ret;
+	struct mtd_info *mtd;
+	const char *mtd_name = NULL;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->num_devs = dev->num_resources;
+	priv->infos = xzalloc(sizeof(*priv->infos) * priv->num_devs);
+	priv->mtds = xzalloc(sizeof(*priv->mtds) * priv->num_devs);
+
+	of_property_read_string(dev->device_node, "linux,mtd-name", &mtd_name);
+
+	if (!mtd_name)
+		mtd_name = dev_name(dev);
+
+	dev->priv = priv;
+
+	for (i = 0; i < priv->num_devs; i++) {
+		struct flash_info *info = &priv->infos[i];
+
+		info->dev = dev;
+		info->mtd.name = xstrdup(mtd_name);
+
+		ret = cfi_probe_one(info, i);
+		if (ret)
+			return ret;
+		priv->mtds[i] = &priv->infos[i].mtd;
+	}
+
 	dev->info = cfi_info;
 
-	cfi_init_mtd(info);
+	if (priv->num_devs > 1 && IS_ENABLED(CONFIG_MTD_CONCAT)) {
+		mtd = mtd_concat_create(priv->mtds, priv->num_devs, "nor");
+		if (!mtd) {
+			dev_err(dev, "failed to create concat mtd device\n");
+			return -ENODEV;
+		}
+	} else {
+		if (priv->num_devs > 1)
+			dev_warn(dev, "mtd concat disabled. using first chip only\n");
+		mtd = &priv->infos[0].mtd;
+	}
+
+	mtd->parent = dev;
+
+	ret = add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
+	if (ret)
+		return ret;
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
