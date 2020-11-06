Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054I-A7
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:41 +0100
Message-Id: <20201106133900.2656-8-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/26] mtd: Use classdev->parent
To: Barebox List <barebox@lists.infradead.org>

Instead of mtd->parent we can use mtd->classdev.parent which points to
the same device. With this we can remove the 'parent' member of struct
mtd_info. This member exists in the Linux kernel as well, but is of type
struct mtd_info, so this is done as preparation to re-add mtd->parent
with the same type as in Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c                    | 10 ++++------
 drivers/mtd/devices/docg3.c           |  2 +-
 drivers/mtd/devices/m25p80.c          |  2 +-
 drivers/mtd/devices/mtd_dataflash.c   |  2 +-
 drivers/mtd/devices/mtdram.c          |  2 +-
 drivers/mtd/nand/atmel_nand.c         |  2 +-
 drivers/mtd/nand/nand_denali.c        |  2 +-
 drivers/mtd/nand/nand_imx.c           |  4 ++--
 drivers/mtd/nand/nand_mrvl_nfc.c      |  2 +-
 drivers/mtd/nand/nand_mxs.c           |  4 ++--
 drivers/mtd/nand/nand_omap_gpmc.c     |  2 +-
 drivers/mtd/nand/nand_orion.c         |  2 +-
 drivers/mtd/nand/nand_s3c24xx.c       |  2 +-
 drivers/mtd/nand/nomadik_nand.c       |  2 +-
 drivers/mtd/nor/cfi_flash.c           |  4 ++--
 drivers/mtd/partition.c               |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c |  2 +-
 include/linux/mtd/mtd.h               |  1 -
 18 files changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 71c602dbb7..fe7952c803 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -619,8 +619,6 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		devname = "mtd";
 	dev_set_name(&mtd->class_dev, devname);
 	mtd->class_dev.id = device_id;
-	if (mtd->parent)
-		mtd->class_dev.parent = mtd->parent;
 
 	if (IS_ENABLED(CONFIG_MTD_UBI))
 		mtd->class_dev.detect = mtd_detect;
@@ -673,11 +671,11 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
-	if (mtd->parent && !mtd->master) {
+	if (mtd->class_dev.parent && !mtd->master) {
 		dev_add_param_string(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
-		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
-		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->parent->device_node) {
-			mtd->of_path = xstrdup(mtd->parent->device_node->full_name);
+		of_parse_partitions(&mtd->cdev, mtd->class_dev.parent->device_node);
+		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->class_dev.parent->device_node) {
+			mtd->of_path = xstrdup(mtd->class_dev.parent->device_node->full_name);
 			ret = of_partitions_register_fixup(&mtd->cdev);
 			if (ret)
 				goto err1;
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 9b1e774995..e4104964bc 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1172,7 +1172,7 @@ static int __init docg3_probe(struct device_d *dev)
 				continue;
 		}
 		docg3_floors[floor] = mtd;
-		mtd->parent = dev;
+		mtd->class_dev.parent = dev;
 		ret = add_mtd_device(mtd, NULL, DEVICE_ID_DYNAMIC);
 		if (ret)
 			goto err_probe;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 09a8714247..f4b0d604f5 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -239,7 +239,7 @@ static int m25p_probe(struct device_d *dev)
 	nor->priv = flash;
 
 	flash->mtd.priv = nor;
-	flash->mtd.parent = &spi->dev;
+	flash->mtd.class_dev.parent = &spi->dev;
 	flash->spimem = spimem;
 
 	if (spi->mode & SPI_RX_QUAD)
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 77af940644..f024ffb0ca 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -632,7 +632,7 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 	device->_write = dataflash_write;
 	device->priv = priv;
 
-	device->parent = &spi->dev;
+	device->class_dev.parent = &spi->dev;
 
 	if (revision >= 'c')
 		otp_tag = otp_setup(device, revision);
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index 854aee4773..c2cecd20ec 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -91,7 +91,7 @@ static int mtdram_probe(struct device_d *dev)
 	mtd->_erase = ram_erase;
 	mtd->erasesize = 1;
 
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	ret = add_mtd_device(mtd, mtd->name, device_id);
 	return ret;
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index e250df82d7..80634e3798 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1331,7 +1331,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	}
 
 	nand_chip->priv = host;		/* link the private data structures */
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	/* Set address of NAND IO lines */
 	nand_chip->IO_ADDR_R = host->io_base;
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 77a09ede70..ba3a307c62 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1396,7 +1396,7 @@ int denali_init(struct denali_nand_info *denali)
 	if (!denali->buf.buf)
 		return -ENOMEM;
 
-	mtd->parent = denali->dev;
+	mtd->class_dev.parent = denali->dev;
 	denali_hw_init(denali);
 	denali_drv_init(denali);
 
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 40877eafb6..cc3494e7d3 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1187,7 +1187,7 @@ static int imxnd_create_bbt(struct nand_chip *chip)
 
 		if (ret) {
 			bbt[i >> 3] |= 0x03 << (i & 0x6);
-			dev_info(mtd->parent, "Bad eraseblock %d at 0x%08x\n",
+			dev_info(mtd->class_dev.parent, "Bad eraseblock %d at 0x%08x\n",
 				 i >> 1, (unsigned int)from);
 		}
 
@@ -1337,7 +1337,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	/* structures must be linked */
 	this = &host->nand;
 	mtd = &this->mtd;
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 	mtd->name = "imx_nand";
 
 	/* 50 us command delay time */
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 0a7c0d4a9a..c6636120ea 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1118,7 +1118,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	host->num_cs = 1;
 	host->cs = 0;
 	mtd = &host->chip.mtd;
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 	mtd->name = "mrvl_nand";
 
 	chip = &host->chip;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d4f0262755..69d0966892 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -338,7 +338,7 @@ static int mxs_nand_calc_geo(struct nand_chip *chip)
 	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
 	int max_ecc_strength;
 
-	nand_of_parse_node(mtd, mtd->parent->device_node);
+	nand_of_parse_node(mtd, mtd->dev.parent->device_node);
 
 	max_ecc_strength = ((mtd->oobsize - MXS_NAND_METADATA_SIZE) * 8)
 			   / (gf_len * ecc_chunk_count);
@@ -2191,7 +2191,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	/* structures must be linked */
 	chip = &nand_info->nand_chip;
 	mtd = &nand_info->nand_chip.mtd;
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	chip->priv = nand_info;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index b7c35f8899..52bd2cf542 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1192,7 +1192,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	nand->priv = (void *)oinfo;
 
 	minfo = &nand->mtd;
-	minfo->parent = pdev;
+	minfo->class_dev.parent = pdev;
 
 	if (pdata->cs >= GPMC_NUM_CS) {
 		dev_dbg(pdev, "Invalid CS!\n");
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index ac1c8442c0..445d48c363 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -114,7 +114,7 @@ static int orion_nand_probe(struct device_d *dev)
 	if (!of_property_read_u32(dev_node, "chip-delay", &val))
 		chip->chip_delay = (u8)val;
 
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 	chip->priv = priv;
 	chip->IO_ADDR_R = chip->IO_ADDR_W = io_base;
 	chip->cmd_ctrl = orion_nand_cmd_ctrl;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 9df7f6cba2..2b539395fd 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -421,7 +421,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	/* structures must be linked */
 	chip = &host->nand;
 	mtd = &chip->mtd;
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	/* init the default settings */
 
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 9918548357..286044a963 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -198,7 +198,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand = &host->nand;
 	mtd = &nand->mtd;
 	nand->priv = host;
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region_by_name(dev, "nand_data");
 	if (IS_ERR(nand->IO_ADDR_W))
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 5ee05e1e6e..86d4f0792d 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -954,7 +954,7 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->numeraseregions = info->numeraseregions;
 	mtd->flags = MTD_CAP_NORFLASH;
 	mtd->type = MTD_NORFLASH;
-	mtd->parent = info->dev;
+	mtd->class_dev.parent = info->dev;
 }
 
 static int cfi_probe_one(struct flash_info *info, int num)
@@ -1030,7 +1030,7 @@ static int cfi_probe(struct device_d *dev)
 		mtd = &priv->infos[0].mtd;
 	}
 
-	mtd->parent = dev;
+	mtd->class_dev.parent = dev;
 
 	ret = add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
 	if (ret)
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 27ff9f039f..e52e711663 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -159,7 +159,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 
 	part->type = mtd->type;
 	part->flags = mtd->flags;
-	part->parent = &mtd->class_dev;
+	part->class_dev.parent = &mtd->class_dev;
 	part->writesize = mtd->writesize;
 	part->writebufsize = mtd->writebufsize;
 	part->oobsize = mtd->oobsize;
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 2372482ac1..bcf3c8f886 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1120,7 +1120,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 		if (ret)
 			return ret;
 
-		mtd->parent = nor->dev;
+		mtd->class_dev.parent = nor->dev;
 	} else {
 		nor->dev = dev;
 	}
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 4a14cfd9d0..219a5279cd 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -194,7 +194,6 @@ struct mtd_info {
 	void (*_put_device) (struct mtd_info *mtd);
 
 	struct device_d class_dev;
-	struct device_d *parent;
 	struct cdev cdev;
 
 	struct cdev *cdev_bb;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
