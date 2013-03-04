Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP7-0002ZL-Sx
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:45 +0100
Message-Id: <1362392034-1908-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] mtd: nand: register nand flashes with nand specific
 function
To: barebox@lists.infradead.org

This allows us to have some NAND specific stuff during registration,
like for example adding NAND specific device parameters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c     |    2 +-
 drivers/mtd/nand/nand_base.c      |   11 +++++++++++
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_mxs.c       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c   |    2 +-
 drivers/mtd/nand/nomadik_nand.c   |    2 +-
 include/linux/mtd/nand.h          |    2 +-
 8 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 63484f8..81ccad9 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1223,7 +1223,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		goto err_scan_tail;
 	}
 
-	add_mtd_device(mtd, "nand");
+	add_mtd_nand_device(mtd, "nand");
 
 	if (!res)
 		return res;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 411aba7..c0345c7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1672,4 +1672,15 @@ EXPORT_SYMBOL(nand_scan_ident);
 EXPORT_SYMBOL(nand_scan_tail);
 EXPORT_SYMBOL(nand_release);
 
+int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
+{
+	int ret;
+
+	ret = add_mtd_device(mtd, devname);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index dd66861..842c1de 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1260,7 +1260,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
-	add_mtd_device(mtd, "nand");
+	add_mtd_nand_device(mtd, "nand");
 
 	dev->priv = host;
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 3812ac9..dd43a95 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1252,7 +1252,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	if (err)
 		goto err2;
 
-	return add_mtd_device(mtd, "nand");
+	return add_mtd_nand_device(mtd, "nand");
 err2:
 	free(nand_info->data_buf);
 	free(nand_info->cmd_buf);
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 7849db5..d448251 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1060,7 +1060,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
 
 	/* We are all set to register with the system now! */
-	err = add_mtd_device(minfo, "nand");
+	err = add_mtd_nand_device(minfo, "nand");
 	if (err) {
 		dev_dbg(pdev, "device registration failed\n");
 		goto out_release_mem;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index fef9432..c68c9fb 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -483,7 +483,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	return add_mtd_device(mtd, "nand");
+	return add_mtd_nand_device(mtd, "nand");
 
 on_error:
 	free(host);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 834b6ac..afdbef1 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -221,7 +221,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	}
 
 	pr_info("Registering %s as whole device\n", mtd->name);
-	add_mtd_device(mtd, "nand");
+	add_mtd_nand_device(mtd, "nand");
 
 	return 0;
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index d2f8648..b111b66 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -618,7 +618,7 @@ extern int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 			   int allowbbt);
 extern int nand_do_read(struct mtd_info *mtd, loff_t from, size_t len,
 			size_t * retlen, uint8_t * buf);
-
+extern int add_mtd_nand_device(struct mtd_info *mtd, char *devname);
 /*
 * Constants for oob configuration
 */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
