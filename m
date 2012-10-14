Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLb-0004Ba-9E
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:48 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3ED99FF9677
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:17 +0200
Message-Id: <1350248478-19359-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] mtd: add parent support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/core.c                |    4 ++++
 drivers/mtd/devices/docg3.c       |    1 +
 drivers/mtd/nand/atmel_nand.c     |    1 +
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_mxs.c       |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c |    1 +
 drivers/mtd/nand/nand_s3c24xx.c   |    1 +
 drivers/mtd/nand/nomadik_nand.c   |    1 +
 include/linux/mtd/mtd.h           |    2 +-
 9 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index a91ef04..94b7171 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -225,6 +225,10 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
 	mtd->class_dev.id = DEVICE_ID_DYNAMIC;
+	if (mtd->parent) {
+		mtd->class_dev.parent = mtd->parent;
+		dev_add_child(mtd->class_dev.parent, &mtd->class_dev);
+	}
 	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 0fe6799..2f89900 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1172,6 +1172,7 @@ static int __init docg3_probe(struct device_d *dev)
 				continue;
 		}
 		docg3_floors[floor] = mtd;
+		mtd->parent = dev;
 		ret = add_mtd_device(mtd, NULL);
 		if (ret)
 			goto err_probe;
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index aa01124..2784e39 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -363,6 +363,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	nand_chip->priv = host;		/* link the private data structures */
 	mtd->priv = nand_chip;
+	mtd->parent = dev;
 
 	/* Set address of NAND IO lines */
 	nand_chip->IO_ADDR_R = host->io_base;
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b1b7f55..0dcf34a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1182,7 +1182,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	this = &host->nand;
 	mtd = &host->mtd;
 	mtd->priv = this;
-	mtd->dev = dev;
+	mtd->parent = dev;
 
 	/* 50 us command delay time */
 	this->chip_delay = 5;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8aeb14d..d71983a 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1201,6 +1201,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand = &nand_info->nand_chip;
 	mtd = &nand_info->mtd;
 	mtd->priv = nand;
+	mtd->parent = dev;
 
 	nand->priv = nand_info;
 	nand->options |= NAND_NO_SUBPAGE_WRITE;
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index cc356f7..f4f5335 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -929,6 +929,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	minfo = &oinfo->minfo;
 	minfo->priv = (void *)nand;
+	minfo->parent = dev;
 
 	if (pdata->cs >= GPMC_NUM_CS) {
 		dev_dbg(pdev, "Invalid CS!\n");
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 12db692..aef7fa9 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -425,6 +425,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip = &host->nand;
 	mtd = &host->mtd;
 	mtd->priv = chip;
+	mtd->parent = dev;
 
 	/* init the default settings */
 
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 6fc9398..d7e4ae5 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -197,6 +197,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand = &host->nand;
 	mtd->priv = nand;
 	nand->priv = host;
+	mtd->parent = dev;
 
 	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region(dev, 2);
 	nand->cmd_ctrl = nomadik_cmd_ctrl;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 71d3c6f..8114967 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -200,7 +200,7 @@ struct mtd_info {
 	void (*put_device) (struct mtd_info *mtd);
 
 	struct device_d class_dev;
-	struct device_d *dev;
+	struct device_d *parent;
 	struct cdev cdev;
 
 	struct param_d param_size;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
