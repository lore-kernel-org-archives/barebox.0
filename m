Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5e-0000PE-GN
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:52 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id BF0FE18B425C
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:45:58 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:30 +0200
Message-Id: <1400100352-13002-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 03/25] reset: add tegra reset controller
To: barebox@lists.infradead.org

Allows us to drop the hack in the clock controller
and implement proper reset at device level.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                |   1 +
 drivers/clk/tegra/clk-tegra20.c |   2 +
 drivers/clk/tegra/clk-tegra30.c |   2 +
 drivers/clk/tegra/clk.c         | 134 +++++++++++++++++++++++++++++++++++++++-
 drivers/clk/tegra/clk.h         |  12 ++++
 5 files changed, 150 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4a2ec41bb425..f93ef4c62673 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -192,6 +192,7 @@ config ARCH_TEGRA
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
+	select RESET_CONTROLLER
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index ea39f46b15fe..7c7a915b40d4 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -347,6 +347,8 @@ static int tegra20_car_probe(struct device_d *dev)
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
 			    &clk_data);
 
+	tegra_clk_init_rst_controller(car_base, dev->device_node, 3 * 32);
+
 	return 0;
 }
 
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 94bbeace4ae4..adb5824e4be8 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -341,6 +341,8 @@ static int tegra30_car_probe(struct device_d *dev)
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
 			    &clk_data);
 
+	tegra_clk_init_rst_controller(car_base, dev->device_node, 6 * 32);
+
 	return 0;
 }
 
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
index f4013e7e7987..a6b81d029b9e 100644
--- a/drivers/clk/tegra/clk.c
+++ b/drivers/clk/tegra/clk.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
  *
@@ -18,9 +18,103 @@
 
 #include <common.h>
 #include <linux/clk.h>
+#include <linux/reset-controller.h>
+#include <mach/lowlevel.h>
 
 #include "clk.h"
 
+#define CLK_OUT_ENB_L			0x010
+#define CLK_OUT_ENB_H			0x014
+#define CLK_OUT_ENB_U			0x018
+#define CLK_OUT_ENB_V			0x360
+#define CLK_OUT_ENB_W			0x364
+#define CLK_OUT_ENB_X			0x280
+#define CLK_OUT_ENB_SET_L		0x320
+#define CLK_OUT_ENB_CLR_L		0x324
+#define CLK_OUT_ENB_SET_H		0x328
+#define CLK_OUT_ENB_CLR_H		0x32c
+#define CLK_OUT_ENB_SET_U		0x330
+#define CLK_OUT_ENB_CLR_U		0x334
+#define CLK_OUT_ENB_SET_V		0x440
+#define CLK_OUT_ENB_CLR_V		0x444
+#define CLK_OUT_ENB_SET_W		0x448
+#define CLK_OUT_ENB_CLR_W		0x44c
+#define CLK_OUT_ENB_SET_X		0x284
+#define CLK_OUT_ENB_CLR_X		0x288
+
+#define RST_DEVICES_L			0x004
+#define RST_DEVICES_H			0x008
+#define RST_DEVICES_U			0x00C
+#define RST_DFLL_DVCO			0x2F4
+#define RST_DEVICES_V			0x358
+#define RST_DEVICES_W			0x35C
+#define RST_DEVICES_X			0x28C
+#define RST_DEVICES_SET_L		0x300
+#define RST_DEVICES_CLR_L		0x304
+#define RST_DEVICES_SET_H		0x308
+#define RST_DEVICES_CLR_H		0x30c
+#define RST_DEVICES_SET_U		0x310
+#define RST_DEVICES_CLR_U		0x314
+#define RST_DEVICES_SET_V		0x430
+#define RST_DEVICES_CLR_V		0x434
+#define RST_DEVICES_SET_W		0x438
+#define RST_DEVICES_CLR_W		0x43c
+#define RST_DEVICES_SET_X		0x290
+#define RST_DEVICES_CLR_X		0x294
+
+static struct tegra_clk_periph_regs periph_regs[] = {
+	[0] = {
+		.enb_reg = CLK_OUT_ENB_L,
+		.enb_set_reg = CLK_OUT_ENB_SET_L,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_L,
+		.rst_reg = RST_DEVICES_L,
+		.rst_set_reg = RST_DEVICES_SET_L,
+		.rst_clr_reg = RST_DEVICES_CLR_L,
+	},
+	[1] = {
+		.enb_reg = CLK_OUT_ENB_H,
+		.enb_set_reg = CLK_OUT_ENB_SET_H,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_H,
+		.rst_reg = RST_DEVICES_H,
+		.rst_set_reg = RST_DEVICES_SET_H,
+		.rst_clr_reg = RST_DEVICES_CLR_H,
+	},
+	[2] = {
+		.enb_reg = CLK_OUT_ENB_U,
+		.enb_set_reg = CLK_OUT_ENB_SET_U,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_U,
+		.rst_reg = RST_DEVICES_U,
+		.rst_set_reg = RST_DEVICES_SET_U,
+		.rst_clr_reg = RST_DEVICES_CLR_U,
+	},
+	[3] = {
+		.enb_reg = CLK_OUT_ENB_V,
+		.enb_set_reg = CLK_OUT_ENB_SET_V,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_V,
+		.rst_reg = RST_DEVICES_V,
+		.rst_set_reg = RST_DEVICES_SET_V,
+		.rst_clr_reg = RST_DEVICES_CLR_V,
+	},
+	[4] = {
+		.enb_reg = CLK_OUT_ENB_W,
+		.enb_set_reg = CLK_OUT_ENB_SET_W,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_W,
+		.rst_reg = RST_DEVICES_W,
+		.rst_set_reg = RST_DEVICES_SET_W,
+		.rst_clr_reg = RST_DEVICES_CLR_W,
+	},
+	[5] = {
+		.enb_reg = CLK_OUT_ENB_X,
+		.enb_set_reg = CLK_OUT_ENB_SET_X,
+		.enb_clr_reg = CLK_OUT_ENB_CLR_X,
+		.rst_reg = RST_DEVICES_X,
+		.rst_set_reg = RST_DEVICES_SET_X,
+		.rst_clr_reg = RST_DEVICES_CLR_X,
+	},
+};
+
+static void __iomem *car_base;
+
 void tegra_init_from_table(struct tegra_clk_init_table *tbl,
 				  struct clk *clks[], int clk_max)
 {
@@ -55,3 +149,41 @@ void tegra_init_from_table(struct tegra_clk_init_table *tbl,
 			}
 	}
 }
+
+static int tegra_clk_rst_assert(struct reset_controller_dev *rcdev,
+                                unsigned long id)
+{
+	tegra_read_chipid();
+
+	writel(BIT(id % 32), car_base + periph_regs[id / 32].rst_set_reg);
+
+	return 0;
+}
+
+static int tegra_clk_rst_deassert(struct reset_controller_dev *rcdev,
+                                  unsigned long id)
+{
+	writel(BIT(id % 32), car_base + periph_regs[id / 32].rst_clr_reg);
+
+	return 0;
+}
+
+static struct reset_control_ops rst_ops = {
+	.assert = tegra_clk_rst_assert,
+	.deassert = tegra_clk_rst_deassert,
+};
+
+static struct reset_controller_dev rst_ctlr = {
+	.ops = &rst_ops,
+	.of_reset_n_cells = 1,
+};
+
+void tegra_clk_init_rst_controller(void __iomem *base, struct device_node *np,
+                                   unsigned int num)
+{
+	car_base = base;
+
+	rst_ctlr.of_node = np;
+	rst_ctlr.nr_resets = num;
+	reset_controller_register(&rst_ctlr);
+}
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 9bb8f1c45734..29d5249b2ec4 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -148,3 +148,15 @@ struct tegra_clk_init_table {
 
 void tegra_init_from_table(struct tegra_clk_init_table *tbl,
 		struct clk *clks[], int clk_max);
+
+struct tegra_clk_periph_regs {
+	u32 enb_reg;
+	u32 enb_set_reg;
+	u32 enb_clr_reg;
+	u32 rst_reg;
+	u32 rst_set_reg;
+	u32 rst_clr_reg;
+};
+
+void tegra_clk_init_rst_controller(void __iomem *base, struct device_node *np,
+		unsigned int num);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
