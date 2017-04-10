Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXE-0006wy-25
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:15 +0200
Message-Id: <20170410071420.26884-6-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] mtd: nand: use dev_add_param_enum
To: Barebox List <barebox@lists.infradead.org>

dev_add_param_enum allows to pass a priv * so that the device_d *
argument is not needed and can be removed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 34 ++++++++++++++++++++++++++--------
 include/linux/mtd/nand.h     |  1 +
 2 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ceb2bb7215..d9f79474cd 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3853,25 +3853,40 @@ static int mtd_set_erasebad(struct param_d *param, void *priv)
 	return 0;
 }
 
-static const char *mtd_get_bbt_type(struct device_d *dev, struct param_d *p)
+enum bbt_type {
+	BBT_TYPE_NONE = 0,
+	BBT_TYPE_FLASHBASED,
+	BBT_TYPE_MEMORYBASED,
+};
+
+static const char *bbt_type_strings[] = {
+	[BBT_TYPE_NONE] = "none",
+	[BBT_TYPE_FLASHBASED] = "flashbased",
+	[BBT_TYPE_MEMORYBASED] = "memorybased",
+};
+
+static int mtd_get_bbt_type(struct param_d *p, void *priv)
 {
-	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct mtd_info *mtd = priv;
 	struct nand_chip *chip = mtd->priv;
-	const char *str;
+	enum bbt_type type;
 
 	if (!chip->bbt)
-		str = "none";
+		type = BBT_TYPE_NONE;
 	else if ((chip->bbt_td && chip->bbt_td->pages[0] != -1) ||
 				(chip->bbt_md && chip->bbt_md->pages[0] != -1))
-		str = "flashbased";
+		type = BBT_TYPE_FLASHBASED;
 	else
-		str = "memorybased";
+		type = BBT_TYPE_MEMORYBASED;
+
+	chip->bbt_type = type;
 
-	return str;
+	return 0;
 }
 
 int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 {
+	struct nand_chip *chip = mtd->priv;
 	int ret;
 
 	ret = add_mtd_device(mtd, devname, DEVICE_ID_DYNAMIC);
@@ -3882,7 +3897,10 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 		dev_add_param_bool(&mtd->class_dev, "erasebad", mtd_set_erasebad,
 			NULL, &mtd->p_allow_erasebad, mtd);
 
-	dev_add_param(&mtd->class_dev, "bbt", NULL, mtd_get_bbt_type, 0);
+	dev_add_param_enum(&mtd->class_dev, "bbt", NULL, mtd_get_bbt_type,
+			   &chip->bbt_type, bbt_type_strings,
+			   ARRAY_SIZE(bbt_type_strings),
+			   mtd);
 
 	return ret;
 }
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 66c936ee70..27538c3f42 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -540,6 +540,7 @@ struct nand_chip {
 	struct nand_bbt_descr *badblock_pattern;
 
 	void *priv;
+	unsigned int bbt_type;
 };
 
 /*
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
