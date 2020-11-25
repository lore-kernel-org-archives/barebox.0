Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khnE6-0004yh-SN
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 05:20:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Nov 2020 06:20:11 +0100
Message-Id: <20201125052011.20660-5-s.hauer@pengutronix.de>
In-Reply-To: <20201125052011.20660-1-s.hauer@pengutronix.de>
References: <20201125052011.20660-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mtd: nand: denali: cope with kernel device trees without
 chip subnodes
To: Barebox List <barebox@lists.infradead.org>

The Denali binding for the Kernel has evolved over time. Recent Kernels
need NAND chip subnodes in the controller node which then hold the
partition nodes. Older Kernels need the partition nodes directly under
the controller node. Cope with both kernel types.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_denali_dt.c | 57 +++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 877c40714a..8deea0292e 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -51,12 +51,65 @@ static const struct denali_dt_data denali_socfpga_data = {
 	.ecc_caps = &denali_socfpga_ecc_caps,
 };
 
+/*
+ * Older versions of the kernel driver require the partition nodes
+ * to be direct subnodes of the controller node. Starting with Kernel
+ * v5.2 (d8e8fd0ebf8b ("mtd: rawnand: denali: decouple controller and
+ * NAND chips")) the device node for the Denali controller is seen as a
+ * NAND controller node which has subnodes for each chip attached to that
+ * controller. The chip subnodes then hold the partitions. The barebox
+ * Denali driver also supports chip subnodes like the newer Kernel
+ * driver. To find the container node for the partitions we first try
+ * to find the chip subnodes in the Kernel device tree. Only if we
+ * can't find these we try the controller device node and put the
+ * partitions there.
+ * Note that we take the existence of the chip subnodes in the kernel
+ * device tree as a sign that we put the partitions there. When they
+ * don't exist we use the controller node. This means you have to make
+ * sure the chip subnodes exist when you start a Kernel that requires
+ * these. Beginning with Kernel v5.5 (f34a5072c465 ("mtd: rawnand: denali:
+ * remove the old unified controller/chip DT support")) the chip subnodes
+ * are mandatory for the Kernel.
+ */
+static int denali_partition_fixup(struct mtd_info *mtd, struct device_node *root)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct denali_controller *denali = container_of(chip->controller,
+							struct denali_controller,
+							controller);
+	struct device_node *np, *mtdnp = mtd_get_of_node(mtd);
+	char *name;
+
+	name = of_get_reproducible_name(mtdnp);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+
+	if (np) {
+		dev_info(denali->dev, "Fixing up chip node %s\n",
+			 np->full_name);
+	} else {
+		name = of_get_reproducible_name(mtdnp->parent);
+		np = of_find_node_by_reproducible_name(root, name);
+		free(name);
+
+		if (np)
+			dev_info(denali->dev, "Fixing up controller node %s\n",
+				 np->full_name);
+	}
+
+	if (!np)
+		return -EINVAL;
+
+	return of_fixup_partitions(np, &mtd->cdev);
+}
+
 static int denali_dt_chip_init(struct denali_controller *denali,
 			       struct device_node *chip_np)
 {
 	struct denali_chip *dchip;
 	u32 bank;
 	int nsels, i, ret;
+	struct mtd_info *mtd;
 
 	nsels = of_property_count_elems_of_size(chip_np, "reg", sizeof(u32));
 	if (nsels < 0)
@@ -66,6 +119,10 @@ static int denali_dt_chip_init(struct denali_controller *denali,
 
 	dchip->nsels = nsels;
 
+	mtd = nand_to_mtd(&dchip->chip);
+
+	mtd->of_fixup = denali_partition_fixup;
+
 	for (i = 0; i < nsels; i++) {
 		ret = of_property_read_u32_index(chip_np, "reg", i, &bank);
 		if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
