Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MS-Dg
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:53 +0200
Message-Id: <1365343255-26497-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/21] mtd: Nand: Use dev_add_param_bool for erasebad parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 22 ++++++++++++----------
 include/linux/mtd/mtd.h      |  1 +
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index fa10d95..67e913a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1672,18 +1672,20 @@ EXPORT_SYMBOL(nand_scan_ident);
 EXPORT_SYMBOL(nand_scan_tail);
 EXPORT_SYMBOL(nand_release);
 
-static int mtd_set_erasebad(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int mtd_set_erasebad(struct param_d *param, void *priv)
 {
-	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
-	int erasebad;
+	struct mtd_info *mtd = priv;
 
-	erasebad = simple_strtoul(val, NULL, 0);
+	if (!mtd->p_allow_erasebad) {
+		mtd->allow_erasebad = false;
+		return 0;
+	}
 
-	if (erasebad && !mtd->allow_erasebad)
-		dev_warn(dev, "Allowing to erase bad blocks. This may be dangerous!\n");
+	if (!mtd->allow_erasebad)
+		dev_warn(&mtd->class_dev,
+			"Allowing to erase bad blocks. This may be dangerous!\n");
 
-	mtd->allow_erasebad = erasebad ? true : false;
+	mtd->allow_erasebad = true;
 
 	return 0;
 }
@@ -1714,8 +1716,8 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 		return ret;
 
 	if (IS_ENABLED(CONFIG_NAND_ALLOW_ERASE_BAD))
-		dev_add_param(&mtd->class_dev, "erasebad", mtd_set_erasebad,
-				NULL, 0);
+		dev_add_param_bool(&mtd->class_dev, "erasebad", mtd_set_erasebad,
+			NULL, &mtd->p_allow_erasebad, mtd);
 
 	dev_add_param(&mtd->class_dev, "bbt", NULL, mtd_get_bbt_type, 0);
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 390f4b0..df04030 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -208,6 +208,7 @@ struct mtd_info {
 
 	/* If true erasing bad blocks is allowed, this is set via a device parameter */
 	bool allow_erasebad;
+	int p_allow_erasebad;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
