Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO93u-0007aT-Gp
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 15:28:07 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9A6A1105008D
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 17:34:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 16 Oct 2012 17:25:37 +0200
Message-Id: <1350401137-12977-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350401137-12977-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121016151831.GB30038@game.jcrosoft.org>
 <1350401137-12977-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] mtd: add parent support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/core.c                  |    4 ++++
 drivers/mtd/devices/docg3.c         |    1 +
 drivers/mtd/devices/mtd_dataflash.c |    2 ++
 drivers/mtd/nand/atmel_nand.c       |    1 +
 drivers/mtd/nand/nand_imx.c         |    2 +-
 drivers/mtd/nand/nand_mxs.c         |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c   |    1 +
 drivers/mtd/nand/nand_s3c24xx.c     |    1 +
 drivers/mtd/nand/nomadik_nand.c     |    1 +
 include/linux/mtd/mtd.h             |    2 +-
 10 files changed, 14 insertions(+), 2 deletions(-)

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
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 9b2be51..cbed15b 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -628,6 +628,8 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 	device->write = dataflash_write;
 	device->priv = priv;
 
+	device->parent = &spi->dev;
+
 	if (revision >= 'c')
 		otp_tag = otp_setup(device, revision);
 
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
index 58dbd70..79e1f0a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1175,7 +1175,7 @@ static int __init imxnd_probe(struct device_d *dev)
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
