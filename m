Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubz0-00063p-2O
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:14 +0200
Message-Id: <20190805122015.19220-8-s.hauer@pengutronix.de>
In-Reply-To: <20190805122015.19220-1-s.hauer@pengutronix.de>
References: <20190805122015.19220-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] mtd: nand: Add function to parse device tree properties
To: Barebox List <barebox@lists.infradead.org>

This adds nand_of_parse_node() which can be used to parse generic
NAND device properties. Not very complete yet, but it's a start.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 27 +++++++++++++++++++++++++++
 include/linux/mtd/nand.h     |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index bf15e6ccee..e103eac596 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -43,6 +43,7 @@
 #include <io.h>
 #include <malloc.h>
 #include <module.h>
+#include <of_mtd.h>
 
 /* Define default oob placement schemes for large and small page devices */
 static struct nand_ecclayout nand_oob_8 = {
@@ -3506,6 +3507,32 @@ ident_done:
 	return type;
 }
 
+/**
+ * nand_of_parse_node - parse generic NAND properties
+ * @mtd: MTD device structure
+ * @np: Device node to read information from
+ *
+ * This parses device tree properties generic to NAND controllers and fills in
+ * the various fields in struct nand_chip.
+ */
+void nand_of_parse_node(struct mtd_info *mtd, struct device_node *np)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ecc_strength, ecc_size;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return;
+
+	ecc_strength = of_get_nand_ecc_strength(np);
+	ecc_size = of_get_nand_ecc_step_size(np);
+
+	if (ecc_strength >= 0)
+		chip->ecc.strength = ecc_strength;
+
+	if (ecc_size >= 0)
+		chip->ecc.size = ecc_size;
+}
+
 /**
  * nand_scan_ident - [NAND Interface] Scan for the NAND device
  * @mtd: MTD device structure
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 785cb06030..7f17767c69 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -52,6 +52,8 @@ extern int nand_check_erased_ecc_chunk(void *data, int datalen,
 				       int bitflips_threshold);
 int nand_check_erased_buf(void *buf, int len, int bitflips_threshold);
 
+void nand_of_parse_node(struct mtd_info *mtd, struct device_node *np);
+
 /* The maximum number of NAND chips in an array */
 #define NAND_MAX_CHIPS		8
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
