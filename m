Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbfgI-0001zl-Fn
 for barebox@lists.infradead.org; Fri, 16 Dec 2011 21:51:07 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Fri, 16 Dec 2011 22:50:30 +0100
Message-Id: <1324072234-31634-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 4/8] drivers/mtd: recover NAND default device name "nand"
To: barebox@lists.infradead.org

As the previous commit changed the generic MTD device name
created from nand<N> into mtd<N>, provide a parameter to
add_mtd_device() so that legacy nand devices still appear as
nand<N>, and repair existing environements.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/core.c                |   16 +++++++++-------
 drivers/mtd/nand/atmel_nand.c     |    2 +-
 drivers/mtd/nand/diskonchip.c     |    2 +-
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c |    2 +-
 drivers/mtd/nand/nand_s3c2410.c   |    2 +-
 drivers/mtd/nand/nomadik_nand.c   |    2 +-
 include/linux/mtd/mtd.h           |    2 +-
 8 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index cea5231..9029474 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -218,11 +218,11 @@ static struct file_operations mtd_ops_oob = {
 	.lseek  = dev_lseek_default,
 };
 
-static int mtd_init_oob_cdev(struct mtd_info *mtd)
+static int mtd_init_oob_cdev(struct mtd_info *mtd, char *devname)
 {
 	mtd->cdev_oob.ops = &mtd_ops_oob;
 	mtd->cdev_oob.size = (mtd->size / mtd->writesize) * mtd->oobsize;
-	mtd->cdev_oob.name = asprintf("mtd_oob%d", mtd->class_dev.id);
+	mtd->cdev_oob.name = asprintf("%s_oob%d", devname, mtd->class_dev.id);
 	mtd->cdev_oob.priv = mtd;
 	mtd->cdev_oob.dev = &mtd->class_dev;
 	devfs_create(&mtd->cdev_oob);
@@ -236,7 +236,7 @@ static void mtd_exit_oob_cdev(struct mtd_info *mtd)
 }
 #else
 
-static int mtd_init_oob_cdev(struct mtd_info *mtd)
+static int mtd_init_oob_cdev(struct mtd_info *mtd, char *devname)
 {
 	return 0;
 }
@@ -247,16 +247,18 @@ static void mtd_exit_oob_cdev(struct mtd_info *mtd)
 }
 #endif
 
-int add_mtd_device(struct mtd_info *mtd)
+int add_mtd_device(struct mtd_info *mtd, char *devname)
 {
 	char str[16];
 
-	strcpy(mtd->class_dev.name, "mtd");
+	if (!devname)
+		devname = "mtd";
+	strcpy(mtd->class_dev.name, devname);
 	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
-	mtd->cdev.name = asprintf("mtd%d", mtd->class_dev.id);
+	mtd->cdev.name = asprintf("%s%d", devname, mtd->class_dev.id);
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
 	mtd->cdev.mtd = mtd;
@@ -272,7 +274,7 @@ int add_mtd_device(struct mtd_info *mtd)
 
 	devfs_create(&mtd->cdev);
 
-	mtd_init_oob_cdev(mtd);
+	mtd_init_oob_cdev(mtd, devname);
 
 	return 0;
 }
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 8cc1b51..534a065 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -485,7 +485,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		goto err_scan_tail;
 	}
 
-	add_mtd_device(mtd);
+	add_mtd_device(mtd, "nand");
 
 	if (!res)
 		return res;
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index 2433945..8323575 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -1358,7 +1358,7 @@ static int __init nftl_scan_bbt(struct mtd_info *mtd)
 	   At least as nand_bbt.c is currently written. */
 	if ((ret = nand_scan_bbt(mtd, NULL)))
 		return ret;
-	add_mtd_device(mtd);
+	add_mtd_device(mtd, "nand");
 #ifdef CONFIG_MTD_PARTITIONS
 	if (!no_autopart)
 		add_mtd_partitions(mtd, parts, numparts);
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index c8c69d6..85cfbed 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1176,7 +1176,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
-	add_mtd_device(mtd);
+	add_mtd_device(mtd, "nand");
 
 	dev->priv = host;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d5e642a..9fb1132 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -956,7 +956,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
 
 	/* We are all set to register with the system now! */
-	err = add_mtd_device(minfo);
+	err = add_mtd_device(minfo, "nand");
 	if (err) {
 		dev_dbg(pdev, "device registration failed\n");
 		goto out_release_mem;
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index c5f5d97..ed45788 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -485,7 +485,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	return add_mtd_device(mtd);
+	return add_mtd_device(mtd, "nand");
 	
 on_error:
 	free(host);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index c1e93ad..05d61c2 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -220,7 +220,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	}
 
 	pr_info("Registering %s as whole device\n", mtd->name);
-	add_mtd_device(mtd);
+	add_mtd_device(mtd, "nand");
 
 	return 0;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 29591e2..a985c30 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -220,7 +220,7 @@ static inline uint32_t mtd_mod_by_eb(uint64_t sz, struct mtd_info *mtd)
 }
 	/* Kernel-side ioctl definitions */
 
-extern int add_mtd_device(struct mtd_info *mtd);
+extern int add_mtd_device(struct mtd_info *mtd, char *devname);
 extern int del_mtd_device (struct mtd_info *mtd);
 
 extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
