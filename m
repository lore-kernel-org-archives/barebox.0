Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZN-Tc
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:39 +0100
Message-Id: <1382961700-8833-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
References: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mtd: Pass device_id to add_mtd_device
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

Right now we do not support persistent names for mtd devices. The
base name can be passed to add_mtd_device, but this is always appended
with a dynamic number. With this patch add_mtd_device takes a device_id
argument which can be used to create a mtd device with an exact name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c                  | 10 +++++++---
 drivers/mtd/devices/docg3.c         |  2 +-
 drivers/mtd/devices/m25p80.c        |  4 +---
 drivers/mtd/devices/mtd_dataflash.c |  2 +-
 drivers/mtd/nand/nand_base.c        |  2 +-
 drivers/mtd/nor/cfi_flash.c         |  2 +-
 include/linux/mtd/mtd.h             |  2 +-
 7 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 70036aa..f63b10e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -359,21 +359,25 @@ static struct file_operations mtd_ops = {
 	.lseek  = dev_lseek_default,
 };
 
-int add_mtd_device(struct mtd_info *mtd, char *devname)
+int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
 
 	if (!devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
-	mtd->class_dev.id = DEVICE_ID_DYNAMIC;
+	mtd->class_dev.id = device_id;
 	if (mtd->parent)
 		mtd->class_dev.parent = mtd->parent;
 	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
-	mtd->cdev.name = asprintf("%s%d", devname, mtd->class_dev.id);
+	if (device_id == DEVICE_ID_SINGLE)
+		mtd->cdev.name = xstrdup(devname);
+	else
+		mtd->cdev.name = asprintf("%s%d", devname, mtd->class_dev.id);
+
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
 	mtd->cdev.mtd = mtd;
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index e15c809..9ae606b 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1173,7 +1173,7 @@ static int __init docg3_probe(struct device_d *dev)
 		}
 		docg3_floors[floor] = mtd;
 		mtd->parent = dev;
-		ret = add_mtd_device(mtd, NULL);
+		ret = add_mtd_device(mtd, NULL, DEVICE_ID_DYNAMIC);
 		if (ret)
 			goto err_probe;
 		found++;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 57fe1f2..429ddf6 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -942,9 +942,7 @@ static int m25p_probe(struct device_d *dev)
 				flash->mtd.eraseregions[i].erasesize / 1024,
 				flash->mtd.eraseregions[i].numblocks);
 
-
-
-	return add_mtd_device(&flash->mtd, flash->mtd.name);
+	return add_mtd_device(&flash->mtd, flash->mtd.name, DEVICE_ID_DYNAMIC);
 }
 
 static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 52bd842..d785e33 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -643,7 +643,7 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 			name, (long long)((device->size + 1023) >> 10),
 			pagesize, otp_tag);
 
-	err = add_mtd_device(device, device->name);
+	err = add_mtd_device(device, device->name, DEVICE_ID_DYNAMIC);
 
 	if (!err)
 		return 0;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index c252a2a..d249565 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3687,7 +3687,7 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 {
 	int ret;
 
-	ret = add_mtd_device(mtd, devname);
+	ret = add_mtd_device(mtd, devname, DEVICE_ID_DYNAMIC);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 51fc6bc..71dd3c8 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -965,7 +965,7 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->type = MTD_NORFLASH;
 	mtd->parent = info->dev;
 
-	add_mtd_device(mtd, "nor");
+	add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
 }
 
 static int cfi_probe (struct device_d *dev)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index ed8722e..1735b49 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -254,7 +254,7 @@ static inline uint32_t mtd_mod_by_eb(uint64_t sz, struct mtd_info *mtd)
 }
 	/* Kernel-side ioctl definitions */
 
-extern int add_mtd_device(struct mtd_info *mtd, char *devname);
+extern int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id);
 extern int del_mtd_device (struct mtd_info *mtd);
 
 extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
