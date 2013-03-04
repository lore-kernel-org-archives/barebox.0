Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP8-0002ZR-67
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:53 +0100
Message-Id: <1362392034-1908-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] mtd: nand: Add bbt parameter
To: barebox@lists.infradead.org

The information which kind of bbt (if any) is used is hidden somewhere
in the NAND layer. Expose it to a device parameter to make it detectable
and visible during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ac223ca..7675695 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1688,6 +1688,23 @@ static int mtd_set_erasebad(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
+static const char *mtd_get_bbt_type(struct device_d *dev, struct param_d *p)
+{
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct nand_chip *chip = mtd->priv;
+	char *str;
+
+	if (!chip->bbt)
+		str = "none";
+	else if ((chip->bbt_td && chip->bbt_td->pages[0] != -1) ||
+				(chip->bbt_md && chip->bbt_md->pages[0] != -1))
+		str = "flashbased";
+	else
+		str = "memorybased";
+
+	return str;
+}
+
 int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 {
 	int ret;
@@ -1700,6 +1717,8 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 		dev_add_param(&mtd->class_dev, "erasebad", mtd_set_erasebad,
 				NULL, 0);
 
+	dev_add_param(&mtd->class_dev, "bbt", NULL, mtd_get_bbt_type, 0);
+
 	return ret;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
