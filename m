Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra9SK-0001Jc-2u
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 17:14:26 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 12 Dec 2011 18:14:05 +0100
Message-Id: <1323710046-4455-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/2] drivers/mtd: introduce {add,del}_nand_device
To: barebox@lists.infradead.org

As legacy nand support has already defined the functions
add_mtd_device and del_mtd_device, rename these to
add_nand_device and del_nand_device, as they are nand
specialized and not mtd generic.

This prevents them from clashing with the core generic add
and del mtd device.

If consensus if reached further, these nand functions could
be replaced by the core ones, as long as the core
functionality is judged rich enough to suit nand
maintainers.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/atmel_nand.c     |    2 +-
 drivers/mtd/nand/diskonchip.c     |    8 ++++----
 drivers/mtd/nand/nand.c           |    4 ++--
 drivers/mtd/nand/nand.h           |    3 +++
 drivers/mtd/nand/nand_base.c      |    2 +-
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c |    2 +-
 drivers/mtd/nand/nand_s3c2410.c   |    2 +-
 drivers/mtd/nand/nomadik_nand.c   |    2 +-
 9 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 8cc1b51..663f51b 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -485,7 +485,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		goto err_scan_tail;
 	}
 
-	add_mtd_device(mtd);
+	add_nand_device(mtd);
 
 	if (!res)
 		return res;
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index 2433945..688a7a9 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -1358,7 +1358,7 @@ static int __init nftl_scan_bbt(struct mtd_info *mtd)
 	   At least as nand_bbt.c is currently written. */
 	if ((ret = nand_scan_bbt(mtd, NULL)))
 		return ret;
-	add_mtd_device(mtd);
+	add_nand_device(mtd);
 #ifdef CONFIG_MTD_PARTITIONS
 	if (!no_autopart)
 		add_mtd_partitions(mtd, parts, numparts);
@@ -1418,7 +1418,7 @@ static int __init inftl_scan_bbt(struct mtd_info *mtd)
 	   do without it for non-INFTL use, since all it gives us is
 	   autopartitioning, but I want to give it more thought. */
 	if (!numparts) return -EIO;
-	add_mtd_device(mtd);
+	add_nand_device(mtd);
 #ifdef CONFIG_MTD_PARTITIONS
 	if (!no_autopart)
 		add_mtd_partitions(mtd, parts, numparts);
@@ -1687,9 +1687,9 @@ static inline int __init doc_probe(unsigned long physadr)
 		/* DBB note: i believe nand_release is necessary here, as
 		   buffers may have been allocated in nand_base.  Check with
 		   Thomas. FIX ME! */
-		/* nand_release will call del_mtd_device, but we haven't yet
+		/* nand_release will call del_nand_device, but we haven't yet
 		   added it.  This is handled without incident by
-		   del_mtd_device, as far as I can tell. */
+		   del_nand_device, as far as I can tell. */
 		nand_release(mtd);
 		kfree(mtd);
 		goto fail;
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 6db21d6..84d1183 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -249,7 +249,7 @@ static void nand_exit_oob_cdev(struct mtd_info *mtd)
 }
 #endif
 
-int add_mtd_device(struct mtd_info *mtd)
+int add_nand_device(struct mtd_info *mtd)
 {
 	char str[16];
 
@@ -279,7 +279,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	return 0;
 }
 
-int del_mtd_device (struct mtd_info *mtd)
+int del_nand_device(struct mtd_info *mtd)
 {
 	unregister_device(&mtd->class_dev);
 	nand_exit_oob_cdev(mtd);
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
index 123258d..c8c7c51 100644
--- a/drivers/mtd/nand/nand.h
+++ b/drivers/mtd/nand/nand.h
@@ -1,6 +1,9 @@
 #ifndef __NAND_H
 #define __NAND_H
 
+int add_nand_device(struct mtd_info *mtd);
+int del_nand_device(struct mtd_info *mtd);
+
 int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			     int page, int sndcmd);
 int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ec0f4a3..01244f0 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1461,7 +1461,7 @@ void nand_release(struct mtd_info *mtd)
 	struct nand_chip *chip = mtd->priv;
 
 	/* Deregister the device */
-	del_mtd_device(mtd);
+	del_nand_device(mtd);
 
 	/* Free bad block table memory */
 	kfree(chip->bbt);
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index c8c69d6..d5d1226 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1176,7 +1176,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
-	add_mtd_device(mtd);
+	add_nand_device(mtd);
 
 	dev->priv = host;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d5e642a..8d4d7b4 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -956,7 +956,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
 
 	/* We are all set to register with the system now! */
-	err = add_mtd_device(minfo);
+	err = add_nand_device(minfo);
 	if (err) {
 		dev_dbg(pdev, "device registration failed\n");
 		goto out_release_mem;
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index c5f5d97..f5910e1 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -485,7 +485,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	return add_mtd_device(mtd);
+	return add_nand_device(mtd);
 	
 on_error:
 	free(host);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index c1e93ad..2719f8b 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -220,7 +220,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	}
 
 	pr_info("Registering %s as whole device\n", mtd->name);
-	add_mtd_device(mtd);
+	add_nand_device(mtd);
 
 	return 0;
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
