Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzPB5-00083s-Qy
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:46:20 +0000
Received: by mail-wg0-f45.google.com with SMTP id l18so205152wgh.28
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 04:45:57 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 13:45:36 +0200
Message-Id: <1403610336-5949-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/3] ARM: mvebu: determine SoC id and revision from PCIe nodes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Marvell MVEBU SoC id and revision can be read out from any PCIe port
registers. This adds corresponding code to read out id and revision
and provides a helper function for drivers to use it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/common.c             | 64 +++++++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/socid.h | 76 ++++++++++++++++++++++++++++++++
 2 files changed, 140 insertions(+)
 create mode 100644 arch/arm/mach-mvebu/include/mach/socid.h

diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 4a78a0f37ec5..b054bf5aff48 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -15,3 +15,67 @@
  *
  */
 
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <of_address.h>
+#include <linux/clk.h>
+
+/*
+ * Marvell MVEBU SoC id and revision can be read from any PCIe
+ * controller port.
+ */
+u16 soc_devid;
+EXPORT_SYMBOL(soc_devid);
+u16 soc_revid;
+EXPORT_SYMBOL(soc_revid);
+
+static const struct of_device_id mvebu_pcie_of_ids[] = {
+	{ .compatible = "marvell,armada-xp-pcie", },
+	{ .compatible = "marvell,armada-370-pcie", },
+	{ .compatible = "marvell,dove-pcie" },
+	{ .compatible = "marvell,kirkwood-pcie" },
+	{ },
+};
+
+#define PCIE_VEN_DEV_ID		0x000
+#define PCIE_REV_ID		0x008
+#define  REV_ID_MASK		0xff
+
+static int mvebu_soc_id_init(void)
+{
+	struct device_node *np, *cnp;
+	struct clk *clk;
+	void __iomem *base;
+
+	np = of_find_matching_node(NULL, mvebu_pcie_of_ids);
+	if (!np)
+		return -ENODEV;
+
+	for_each_child_of_node(np, cnp) {
+		base = of_iomap(cnp, 0);
+		if (!base)
+			continue;
+
+		clk = of_clk_get(cnp, 0);
+		if (IS_ERR(clk))
+			continue;
+
+		clk_enable(clk);
+		soc_devid = readl(base + PCIE_VEN_DEV_ID) >> 16;
+		soc_revid = readl(base + PCIE_REV_ID) & REV_ID_MASK;
+		clk_disable(clk);
+		break;
+	}
+
+	if (!soc_devid) {
+		pr_err("Unable to read SoC id from PCIe ports\n");
+		return -EINVAL;
+	}
+
+	pr_info("SoC: Marvell %04x rev %d\n", soc_devid, soc_revid);
+
+	return 0;
+}
+postcore_initcall(mvebu_soc_id_init);
diff --git a/arch/arm/mach-mvebu/include/mach/socid.h b/arch/arm/mach-mvebu/include/mach/socid.h
new file mode 100644
index 000000000000..36d681a9dcc1
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/socid.h
@@ -0,0 +1,76 @@
+/*
+ * Marvell MVEBU SoC Ids
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_MVEBU_SOCID_H
+#define __MACH_MVEBU_SOCID_H
+
+extern u16 soc_devid;
+extern u16 soc_revid;
+
+static inline u16 mvebu_get_soc_devid(void)
+{
+	return soc_devid;
+}
+
+static inline u16 mvebu_get_soc_revid(void)
+{
+	return soc_revid;
+}
+
+/* Orion */
+#define DEVID_F5180		0x5180
+#define  REVID_F5180N_B1	0x3
+#define DEVID_F5181		0x5181
+#define  REVID_F5181_B1		0x3
+#define  REVID_F5181L		0x8
+#define DEVID_F5182		0x5182
+#define  REVID_F5182_A1		0x1
+#define DEVID_F6183		0x6183
+/* Kirkwood */
+#define DEVID_F6180		0x6180
+#define DEVID_F6190		0x6190
+#define DEVID_F6192		0x6192
+#define DEVID_F6280		0x6280
+#define DEVID_F6281		0x6281
+#define DEVID_F6282		0x1155
+/* Kirkwood Duo */
+#define DEVID_F6321		0x6321
+#define DEVID_F6322		0x6322
+#define DEVID_F6323		0x6323
+/* Avanta */
+#define DEVID_F6510		0x6510
+#define DEVID_F6530		0x6530
+#define DEVID_F6550		0x6550
+#define DEVID_F6560		0x6560
+/* Dove */
+#define DEVID_AP510		0x0510
+#define DEVID_F6781		0x6781
+/* Discovery Duo */
+#define DEVID_MV76100		0x7610
+#define DEVID_MV78100		0x7810
+#define DEVID_MV78200		0x7820
+/* Armada 370 */
+#define DEVID_F6707		0x6707
+#define DEVID_F6710		0x6710
+#define DEVID_F6711		0x6711
+/* Armada XP */
+#define DEVID_MV78130		0x7813
+#define DEVID_MV78160		0x7816
+#define DEVID_MV78230		0x7823
+#define DEVID_MV78260		0x7826
+#define DEVID_MV78460		0x7846
+#define DEVID_MV78880		0x7888
+
+#endif /* __MACH_MVEBU_SOCID_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
