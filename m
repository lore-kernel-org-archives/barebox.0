Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054M-CT
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:42 +0100
Message-Id: <20201106133900.2656-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/26] mtd: rename class_dev to dev
To: Barebox List <barebox@lists.infradead.org>

The mtds own device is named 'dev' in the Kernel whereas it's named
'class_dev' in barebox. Rename it to 'dev' for better compatilibility
to the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c                    | 38 ++++++++++++------------
 drivers/mtd/devices/docg3.c           |  2 +-
 drivers/mtd/devices/m25p80.c          |  2 +-
 drivers/mtd/devices/mtd_dataflash.c   |  2 +-
 drivers/mtd/devices/mtdram.c          |  2 +-
 drivers/mtd/mtdoob.c                  |  2 +-
 drivers/mtd/mtdraw.c                  |  6 ++--
 drivers/mtd/nand/atmel_nand.c         |  2 +-
 drivers/mtd/nand/nand_base.c          | 12 ++++----
 drivers/mtd/nand/nand_denali.c        |  2 +-
 drivers/mtd/nand/nand_imx.c           |  4 +--
 drivers/mtd/nand/nand_mrvl_nfc.c      |  2 +-
 drivers/mtd/nand/nand_mxs.c           |  2 +-
 drivers/mtd/nand/nand_omap_gpmc.c     |  2 +-
 drivers/mtd/nand/nand_orion.c         |  2 +-
 drivers/mtd/nand/nand_s3c24xx.c       |  2 +-
 drivers/mtd/nand/nomadik_nand.c       |  2 +-
 drivers/mtd/nor/cfi_flash.c           |  4 +--
 drivers/mtd/partition.c               |  2 +-
 drivers/mtd/peb.c                     | 42 +++++++++++++--------------
 drivers/mtd/spi-nor/cadence-quadspi.c |  2 +-
 drivers/mtd/ubi/build.c               |  2 +-
 include/linux/mtd/mtd.h               |  2 +-
 23 files changed, 70 insertions(+), 70 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index fe7952c803..9d3b62762c 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -568,7 +568,7 @@ static int mtd_part_compare(struct list_head *a, struct list_head *b)
 
 static int mtd_detect(struct device_d *dev)
 {
-	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, dev);
 	int bufsize = 512;
 	void *buf;
 	int ret = 0, i;
@@ -617,13 +617,13 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 
 	if (!devname)
 		devname = "mtd";
-	dev_set_name(&mtd->class_dev, devname);
-	mtd->class_dev.id = device_id;
+	dev_set_name(&mtd->dev, devname);
+	mtd->dev.id = device_id;
 
 	if (IS_ENABLED(CONFIG_MTD_UBI))
-		mtd->class_dev.detect = mtd_detect;
+		mtd->dev.detect = mtd_detect;
 
-	ret = register_device(&mtd->class_dev);
+	ret = register_device(&mtd->dev);
 	if (ret)
 		return ret;
 
@@ -633,19 +633,19 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		mtd->cdev.name = xstrdup(devname);
 	else
 		mtd->cdev.name = basprintf("%s%d", devname,
-					     mtd->class_dev.id);
+					     mtd->dev.id);
 
 	INIT_LIST_HEAD(&mtd->partitions);
 
 	mtd->cdev.priv = mtd;
-	mtd->cdev.dev = &mtd->class_dev;
+	mtd->cdev.dev = &mtd->dev;
 	mtd->cdev.mtd = mtd;
 
 	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		dev_add_param_uint64_ro(&mtd->class_dev, "size", &mtd->size, "%llu");
-		dev_add_param_uint32_ro(&mtd->class_dev, "erasesize", &mtd->erasesize, "%u");
-		dev_add_param_uint32_ro(&mtd->class_dev, "writesize", &mtd->writesize, "%u");
-		dev_add_param_uint32_ro(&mtd->class_dev, "oobsize", &mtd->oobsize, "%u");
+		dev_add_param_uint64_ro(&mtd->dev, "size", &mtd->size, "%llu");
+		dev_add_param_uint32_ro(&mtd->dev, "erasesize", &mtd->erasesize, "%u");
+		dev_add_param_uint32_ro(&mtd->dev, "writesize", &mtd->writesize, "%u");
+		dev_add_param_uint32_ro(&mtd->dev, "oobsize", &mtd->oobsize, "%u");
 	}
 
 	ret = devfs_create(&mtd->cdev);
@@ -660,7 +660,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 				continue;
 			if (mtd->master_offset + mtd->size <= mtdpart->master_offset)
 				continue;
-			dev_err(&mtd->class_dev, "New partition %s conflicts with %s\n",
+			dev_err(&mtd->dev, "New partition %s conflicts with %s\n",
 					mtd->name, mtdpart->name);
 			goto err1;
 		}
@@ -671,11 +671,11 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
-	if (mtd->class_dev.parent && !mtd->master) {
-		dev_add_param_string(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
-		of_parse_partitions(&mtd->cdev, mtd->class_dev.parent->device_node);
-		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->class_dev.parent->device_node) {
-			mtd->of_path = xstrdup(mtd->class_dev.parent->device_node->full_name);
+	if (mtd->dev.parent && !mtd->master) {
+		dev_add_param_string(&mtd->dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
+		of_parse_partitions(&mtd->cdev, mtd->dev.parent->device_node);
+		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->dev.parent->device_node) {
+			mtd->of_path = xstrdup(mtd->dev.parent->device_node->full_name);
 			ret = of_partitions_register_fixup(&mtd->cdev);
 			if (ret)
 				goto err1;
@@ -691,7 +691,7 @@ err1:
 	devfs_remove(&mtd->cdev);
 err:
 	free(mtd->cdev.name);
-	unregister_device(&mtd->class_dev);
+	unregister_device(&mtd->dev);
 
 	return ret;
 }
@@ -707,7 +707,7 @@ int del_mtd_device (struct mtd_info *mtd)
 	devfs_remove(&mtd->cdev);
 	if (mtd->cdev_bb)
 		mtd_del_bb(mtd);
-	unregister_device(&mtd->class_dev);
+	unregister_device(&mtd->dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
 	if (mtd->master)
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index e4104964bc..cb0bb5cfec 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1172,7 +1172,7 @@ static int __init docg3_probe(struct device_d *dev)
 				continue;
 		}
 		docg3_floors[floor] = mtd;
-		mtd->class_dev.parent = dev;
+		mtd->dev.parent = dev;
 		ret = add_mtd_device(mtd, NULL, DEVICE_ID_DYNAMIC);
 		if (ret)
 			goto err_probe;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index f4b0d604f5..8845ec3a3e 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -239,7 +239,7 @@ static int m25p_probe(struct device_d *dev)
 	nor->priv = flash;
 
 	flash->mtd.priv = nor;
-	flash->mtd.class_dev.parent = &spi->dev;
+	flash->mtd.dev.parent = &spi->dev;
 	flash->spimem = spimem;
 
 	if (spi->mode & SPI_RX_QUAD)
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index f024ffb0ca..9d4105f82b 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -632,7 +632,7 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 	device->_write = dataflash_write;
 	device->priv = priv;
 
-	device->class_dev.parent = &spi->dev;
+	device->dev.parent = &spi->dev;
 
 	if (revision >= 'c')
 		otp_tag = otp_setup(device, revision);
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index c2cecd20ec..9cc8194b5d 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -91,7 +91,7 @@ static int mtdram_probe(struct device_d *dev)
 	mtd->_erase = ram_erase;
 	mtd->erasesize = 1;
 
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	ret = add_mtd_device(mtd, mtd->name, device_id);
 	return ret;
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 4aef844485..3229a1cce5 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -80,7 +80,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdoob->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtd->oobsize;
 	mtdoob->cdev.name = basprintf("%s.oob", mtd->cdev.name);
 	mtdoob->cdev.priv = mtdoob;
-	mtdoob->cdev.dev = &mtd->class_dev;
+	mtdoob->cdev.dev = &mtd->dev;
 	mtdoob->mtd = mtd;
 	*priv = mtdoob;
 	devfs_create(&mtdoob->cdev);
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index b71619244b..6bebe0409e 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -252,7 +252,7 @@ static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 	erase.len = mtd->erasesize;
 
 	while (count > 0) {
-		dev_dbg(&mtd->class_dev, "erase 0x%08llx len: 0x%08llx\n",
+		dev_dbg(&mtd->dev, "erase 0x%08llx len: 0x%08llx\n",
 			erase.addr, erase.len);
 
 		if (!mtd->allow_erasebad)
@@ -261,7 +261,7 @@ static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 			ret = 0;
 
 		if (ret > 0) {
-			dev_info(&mtd->class_dev, "Skipping bad block at 0x%08llx\n",
+			dev_info(&mtd->dev, "Skipping bad block at 0x%08llx\n",
 				 erase.addr);
 		} else {
 			ret = mtd_erase(mtd, &erase);
@@ -309,7 +309,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdraw->cdev.size = (loff_t)mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
 	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
 	mtdraw->cdev.priv = mtdraw;
-	mtdraw->cdev.dev = &mtd->class_dev;
+	mtdraw->cdev.dev = &mtd->dev;
 	mtdraw->cdev.mtd = mtd;
 	*priv = mtdraw;
 	devfs_create(&mtdraw->cdev);
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 80634e3798..90656bcb5d 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1331,7 +1331,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	}
 
 	nand_chip->priv = host;		/* link the private data structures */
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	/* Set address of NAND IO lines */
 	nand_chip->IO_ADDR_R = host->io_base;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index b8438b2891..f869c21705 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3891,7 +3891,7 @@ static int mtd_set_erasebad(struct param_d *param, void *priv)
 	}
 
 	if (!mtd->allow_erasebad)
-		dev_warn(&mtd->class_dev,
+		dev_warn(&mtd->dev,
 			"Allowing to erase bad blocks. This may be dangerous!\n");
 
 	mtd->allow_erasebad = true;
@@ -3940,17 +3940,17 @@ int add_mtd_nand_device(struct nand_chip *chip, char *devname)
 		return ret;
 
 	if (IS_ENABLED(CONFIG_NAND_ALLOW_ERASE_BAD))
-		dev_add_param_bool(&mtd->class_dev, "erasebad", mtd_set_erasebad,
+		dev_add_param_bool(&mtd->dev, "erasebad", mtd_set_erasebad,
 			NULL, &mtd->p_allow_erasebad, mtd);
 
-	dev_add_param_enum(&mtd->class_dev, "bbt", NULL, mtd_get_bbt_type,
+	dev_add_param_enum(&mtd->dev, "bbt", NULL, mtd_get_bbt_type,
 			   &chip->bbt_type, bbt_type_strings,
 			   ARRAY_SIZE(bbt_type_strings),
 			   mtd);
 
-	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.bytes", &chip->ecc.bytes, "%u");
-	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.strength", &chip->ecc.strength, "%u");
-	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.size", &chip->ecc.size, "%u");
+	dev_add_param_uint32_ro(&mtd->dev, "ecc.bytes", &chip->ecc.bytes, "%u");
+	dev_add_param_uint32_ro(&mtd->dev, "ecc.strength", &chip->ecc.strength, "%u");
+	dev_add_param_uint32_ro(&mtd->dev, "ecc.size", &chip->ecc.size, "%u");
 
 	return ret;
 }
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index ba3a307c62..629281061b 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1396,7 +1396,7 @@ int denali_init(struct denali_nand_info *denali)
 	if (!denali->buf.buf)
 		return -ENOMEM;
 
-	mtd->class_dev.parent = denali->dev;
+	mtd->dev.parent = denali->dev;
 	denali_hw_init(denali);
 	denali_drv_init(denali);
 
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index cc3494e7d3..d566c941e7 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1187,7 +1187,7 @@ static int imxnd_create_bbt(struct nand_chip *chip)
 
 		if (ret) {
 			bbt[i >> 3] |= 0x03 << (i & 0x6);
-			dev_info(mtd->class_dev.parent, "Bad eraseblock %d at 0x%08x\n",
+			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
 				 i >> 1, (unsigned int)from);
 		}
 
@@ -1337,7 +1337,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	/* structures must be linked */
 	this = &host->nand;
 	mtd = &this->mtd;
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 	mtd->name = "imx_nand";
 
 	/* 50 us command delay time */
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index c6636120ea..3f5e04b716 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1118,7 +1118,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	host->num_cs = 1;
 	host->cs = 0;
 	mtd = &host->chip.mtd;
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 	mtd->name = "mrvl_nand";
 
 	chip = &host->chip;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 69d0966892..8075f6a854 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2191,7 +2191,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	/* structures must be linked */
 	chip = &nand_info->nand_chip;
 	mtd = &nand_info->nand_chip.mtd;
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	chip->priv = nand_info;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 52bd2cf542..6ad06288eb 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1192,7 +1192,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	nand->priv = (void *)oinfo;
 
 	minfo = &nand->mtd;
-	minfo->class_dev.parent = pdev;
+	minfo->dev.parent = pdev;
 
 	if (pdata->cs >= GPMC_NUM_CS) {
 		dev_dbg(pdev, "Invalid CS!\n");
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index 445d48c363..796c53e4c4 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -114,7 +114,7 @@ static int orion_nand_probe(struct device_d *dev)
 	if (!of_property_read_u32(dev_node, "chip-delay", &val))
 		chip->chip_delay = (u8)val;
 
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 	chip->priv = priv;
 	chip->IO_ADDR_R = chip->IO_ADDR_W = io_base;
 	chip->cmd_ctrl = orion_nand_cmd_ctrl;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 2b539395fd..ac95973194 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -421,7 +421,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	/* structures must be linked */
 	chip = &host->nand;
 	mtd = &chip->mtd;
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	/* init the default settings */
 
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 286044a963..55aa756826 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -198,7 +198,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand = &host->nand;
 	mtd = &nand->mtd;
 	nand->priv = host;
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region_by_name(dev, "nand_data");
 	if (IS_ERR(nand->IO_ADDR_W))
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 86d4f0792d..225b03ec3d 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -954,7 +954,7 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->numeraseregions = info->numeraseregions;
 	mtd->flags = MTD_CAP_NORFLASH;
 	mtd->type = MTD_NORFLASH;
-	mtd->class_dev.parent = info->dev;
+	mtd->dev.parent = info->dev;
 }
 
 static int cfi_probe_one(struct flash_info *info, int num)
@@ -1030,7 +1030,7 @@ static int cfi_probe(struct device_d *dev)
 		mtd = &priv->infos[0].mtd;
 	}
 
-	mtd->class_dev.parent = dev;
+	mtd->dev.parent = dev;
 
 	ret = add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
 	if (ret)
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index e52e711663..6a6988432c 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -159,7 +159,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 
 	part->type = mtd->type;
 	part->flags = mtd->flags;
-	part->class_dev.parent = &mtd->class_dev;
+	part->dev.parent = &mtd->dev;
 	part->writesize = mtd->writesize;
 	part->writebufsize = mtd->writebufsize;
 	part->oobsize = mtd->oobsize;
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index d10a8a024d..27996d7e86 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -241,7 +241,7 @@ retry:
 			 * enabled. A corresponding message will be printed
 			 * later, when it is has been scrubbed.
 			 */
-			dev_dbg(&mtd->class_dev, "fixable bit-flip detected at PEB %d\n", pnum);
+			dev_dbg(&mtd->dev, "fixable bit-flip detected at PEB %d\n", pnum);
 			if (len != read)
 				return -EIO;
 			return -EUCLEAN;
@@ -250,7 +250,7 @@ retry:
 		if (mtd_is_eccerr(err) && retries++ < MTD_IO_RETRIES)
 			goto retry;
 
-		dev_err(&mtd->class_dev, "error %d%s while reading %d bytes from PEB %d:%d\n",
+		dev_err(&mtd->dev, "error %d%s while reading %d bytes from PEB %d:%d\n",
 			err, errstr, len, pnum, offset);
 		return err;
 	}
@@ -288,7 +288,7 @@ int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 
 	err = mtd_peb_read(mtd, buf, pnum, offset, len);
 	if (err && !mtd_is_bitflip(err)) {
-		dev_err(&mtd->class_dev,
+		dev_err(&mtd->dev,
 			"error %d while reading %d bytes from PEB %d:%d\n",
 			err, len, pnum, offset);
 		goto out;
@@ -297,7 +297,7 @@ int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 	err = mtd_buf_all_ff(buf, len);
 	if (err == 0) {
 		if (warn)
-			dev_err(&mtd->class_dev, "all-ff check failed for PEB %d\n",
+			dev_err(&mtd->dev, "all-ff check failed for PEB %d\n",
 				pnum);
 		err = -EBADMSG;
 		goto out;
@@ -347,15 +347,15 @@ int mtd_peb_verify(struct mtd_info *mtd, const void *buf, int pnum,
 		if (c == c1)
 			continue;
 
-		dev_err(&mtd->class_dev, "self-check failed for PEB %d:%d, len %d\n",
+		dev_err(&mtd->dev, "self-check failed for PEB %d:%d, len %d\n",
 			pnum, offset, len);
-		dev_info(&mtd->class_dev, "data differs at position %d\n", i);
+		dev_info(&mtd->dev, "data differs at position %d\n", i);
 		dump_len = max_t(int, 128, len - i);
 #ifdef DEBUG
-		dev_info(&mtd->class_dev, "hex dump of the original buffer from %d to %d\n",
+		dev_info(&mtd->dev, "hex dump of the original buffer from %d to %d\n",
 			i, i + dump_len);
 		memory_display(buf + i, i, dump_len, 4, 0);
-		dev_info(&mtd->class_dev, "hex dump of the read buffer from %d to %d\n",
+		dev_info(&mtd->dev, "hex dump of the read buffer from %d to %d\n",
 			i, i + dump_len);
 		memory_display(buf1 + i, i, dump_len, 4, 0);
 		dump_stack();
@@ -395,7 +395,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 	size_t written;
 	loff_t addr;
 
-	dev_dbg(&mtd->class_dev, "write %d bytes to PEB %d:%d\n", len, pnum, offset);
+	dev_dbg(&mtd->dev, "write %d bytes to PEB %d:%d\n", len, pnum, offset);
 
 	if (!mtd_peb_valid(mtd, pnum))
 		return -EINVAL;
@@ -409,7 +409,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 		return -EINVAL;
 
 	if (mtd_peb_emulate_write_failure()) {
-		dev_err(&mtd->class_dev, "Cannot write %d bytes to PEB %d:%d (emulated)\n",
+		dev_err(&mtd->dev, "Cannot write %d bytes to PEB %d:%d (emulated)\n",
 			len, pnum, offset);
 		return -EIO;
 	}
@@ -424,7 +424,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 	addr = (loff_t)pnum * mtd->erasesize + offset;
 	err = mtd_write(mtd, addr, len, &written, buf);
 	if (err) {
-		dev_err(&mtd->class_dev, "error %d while writing %d bytes to PEB %d:%d, written %zu bytes\n",
+		dev_err(&mtd->dev, "error %d while writing %d bytes to PEB %d:%d, written %zu bytes\n",
 			err, len, pnum, offset, written);
 	} else {
 		if (written != len)
@@ -537,7 +537,7 @@ int mtd_peb_erase(struct mtd_info *mtd, int pnum)
 	int ret;
 	struct erase_info ei = {};
 
-	dev_dbg(&mtd->class_dev, "erase PEB %d\n", pnum);
+	dev_dbg(&mtd->dev, "erase PEB %d\n", pnum);
 
 	if (!mtd_peb_valid(mtd, pnum))
 		return -EINVAL;
@@ -557,7 +557,7 @@ int mtd_peb_erase(struct mtd_info *mtd, int pnum)
 	}
 
 	if (mtd_peb_emulate_erase_failure()) {
-		dev_err(&mtd->class_dev, "cannot erase PEB %d (emulated)", pnum);
+		dev_err(&mtd->dev, "cannot erase PEB %d (emulated)", pnum);
 		return -EIO;
 	}
 
@@ -592,7 +592,7 @@ int mtd_peb_torture(struct mtd_info *mtd, int pnum)
 	if (!peb_buf)
 		return -ENOMEM;
 
-	dev_dbg(&mtd->class_dev, "run torture test for PEB %d\n", pnum);
+	dev_dbg(&mtd->dev, "run torture test for PEB %d\n", pnum);
 
 	patt_count = ARRAY_SIZE(patterns);
 
@@ -622,7 +622,7 @@ int mtd_peb_torture(struct mtd_info *mtd, int pnum)
 		goto out;
 
 	err = patt_count + 1;
-	dev_dbg(&mtd->class_dev, "PEB %d passed torture test, do not mark it as bad\n",
+	dev_dbg(&mtd->dev, "PEB %d passed torture test, do not mark it as bad\n",
 		pnum);
 
 out:
@@ -632,7 +632,7 @@ out:
 		 * has not passed because it happened on a freshly erased
 		 * physical eraseblock which means something is wrong with it.
 		 */
-		dev_err(&mtd->class_dev, "read problems on freshly erased PEB %d, must be bad\n",
+		dev_err(&mtd->dev, "read problems on freshly erased PEB %d, must be bad\n",
 			pnum);
 
 		err = -EIO;
@@ -707,7 +707,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 
 		ret = mtd_read_oob(mtd, offs, &ops);
 		if (ret) {
-			dev_err(&mtd->class_dev, "Cannot read raw data at 0x%08llx\n", offs);
+			dev_err(&mtd->dev, "Cannot read raw data at 0x%08llx\n", offs);
 			goto err;
 		}
 	}
@@ -733,12 +733,12 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 		pos[offs] ^= 1 << bit;
 
 		if (info)
-			dev_info(&mtd->class_dev, "Flipping bit %d @ %d\n", bit, offs);
+			dev_info(&mtd->dev, "Flipping bit %d @ %d\n", bit, offs);
 	}
 
 	ret = mtd_peb_erase(mtd, pnum);
 	if (ret < 0) {
-		dev_err(&mtd->class_dev, "Cannot erase PEB %d\n", pnum);
+		dev_err(&mtd->dev, "Cannot erase PEB %d\n", pnum);
 		goto err;
 	}
 
@@ -750,7 +750,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 
 		ret = mtd_write_oob(mtd, offs, &ops);
 		if (ret) {
-			dev_err(&mtd->class_dev, "Cannot write page at 0x%08llx\n", offs);
+			dev_err(&mtd->dev, "Cannot write page at 0x%08llx\n", offs);
 			goto err;
 		}
 	}
@@ -758,7 +758,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 	ret = 0;
 err:
 	if (ret)
-		dev_err(&mtd->class_dev, "Failed to create bitflips: %s\n", strerror(-ret));
+		dev_err(&mtd->dev, "Failed to create bitflips: %s\n", strerror(-ret));
 
 	free(buf);
 	free(oobbuf);
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index bcf3c8f886..ea53d2cd84 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1120,7 +1120,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 		if (ret)
 			return ret;
 
-		mtd->class_dev.parent = nor->dev;
+		mtd->dev.parent = nor->dev;
 	} else {
 		nor->dev = dev;
 	}
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index da409010f7..8a6d0ebde0 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -159,7 +159,7 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 
 	dev_set_name(&ubi->dev, "%s.ubi", ubi->mtd->cdev.name);
 	ubi->dev.id = DEVICE_ID_SINGLE;
-	ubi->dev.parent = &ubi->mtd->class_dev;
+	ubi->dev.parent = &ubi->mtd->dev;
 
 	err = register_device(&ubi->dev);
 	if (err)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 219a5279cd..e4ce2ae233 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -193,7 +193,7 @@ struct mtd_info {
 	int (*_get_device) (struct mtd_info *mtd);
 	void (*_put_device) (struct mtd_info *mtd);
 
-	struct device_d class_dev;
+	struct device_d dev;
 	struct cdev cdev;
 
 	struct cdev *cdev_bb;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
