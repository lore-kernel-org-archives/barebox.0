Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQz-0007sO-3i
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:41 +0000
Received: by mail-ee0-f49.google.com with SMTP id c41so3889404eek.8
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:18 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:41 +0200
Message-Id: <1398591044-3616-9-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 08/11] clk: add rockchip clock gate driver
To: barebox@lists.infradead.org


Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/Kconfig                    |    3 ++
 drivers/clk/Makefile                |    1 +
 drivers/clk/rockchip/Makefile       |    1 +
 drivers/clk/rockchip/clk-rockchip.c |   86 +++++++++++++++++++++++++++++++++++
 4 files changed, 91 insertions(+)
 create mode 100644 drivers/clk/rockchip/Makefile
 create mode 100644 drivers/clk/rockchip/clk-rockchip.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a7db86c..580faa0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -129,6 +129,9 @@ config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
 	select CPU_V7
 	select ARM_SMP_TWD
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0687b3c..fa707dd 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
+obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
new file mode 100644
index 0000000..1c5271f
--- /dev/null
+++ b/drivers/clk/rockchip/Makefile
@@ -0,0 +1 @@
+obj-y += clk-rockchip.o
\ No newline at end of file
diff --git a/drivers/clk/rockchip/clk-rockchip.c b/drivers/clk/rockchip/clk-rockchip.c
new file mode 100644
index 0000000..99f836c
--- /dev/null
+++ b/drivers/clk/rockchip/clk-rockchip.c
@@ -0,0 +1,86 @@
+/*
+ * Clock gate driver for Rockchip SoCs
+ *
+ * Based on Linux driver:
+ *   Copyright (c) 2013 MundoReader S.L.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <of_address.h>
+#include <malloc.h>
+
+static void __init rk2928_gate_clk_init(struct device_node *node)
+{
+	struct clk_onecell_data *clk_data;
+	const char *clk_parent;
+	const char *clk_name;
+	void __iomem *reg;
+	void __iomem *reg_idx;
+	int flags;
+	int qty;
+	int reg_bit;
+	int clkflags = CLK_SET_RATE_PARENT;
+	int i;
+
+	qty = of_property_count_strings(node, "clock-output-names");
+	if (qty < 0) {
+		pr_err("%s: error in clock-output-names %d\n", __func__, qty);
+		return;
+	}
+
+	if (qty == 0) {
+		pr_info("%s: nothing to do\n", __func__);
+		return;
+	}
+
+	reg = of_iomap(node, 0);
+
+	clk_data = kzalloc(sizeof(struct clk_onecell_data), GFP_KERNEL);
+	if (!clk_data)
+		return;
+
+	clk_data->clks = kzalloc(qty * sizeof(struct clk *), GFP_KERNEL);
+	if (!clk_data->clks) {
+		kfree(clk_data);
+		return;
+	}
+
+	flags = CLK_GATE_HIWORD_MASK | CLK_GATE_INVERTED;
+
+	for (i = 0; i < qty; i++) {
+		of_property_read_string_index(node, "clock-output-names",
+					      i, &clk_name);
+
+		/* ignore empty slots */
+		if (!strcmp("reserved", clk_name))
+			continue;
+
+		clk_parent = of_clk_get_parent_name(node, i);
+
+		reg_idx = reg + 4 * (i / 16);
+		reg_bit = i % 16;
+
+		clk_data->clks[i] = clk_gate(clk_name, clk_parent, reg_idx,
+					     reg_bit, clkflags, flags);
+		WARN_ON(IS_ERR(clk_data->clks[i]));
+	}
+
+	clk_data->clk_num = qty;
+
+	of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+}
+CLK_OF_DECLARE(rk2928_gate, "rockchip,rk2928-gate-clk", rk2928_gate_clk_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
