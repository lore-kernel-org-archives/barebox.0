Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXl9m-00069y-8q
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:39:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:38:49 +0100
Message-Id: <1426574331-22797-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
References: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] ARM: i.MX: Add imx_clk_gate_exclusive
To: Barebox List <barebox@lists.infradead.org>

This adds support for two gates from can only exclusively be enabled.
Based on the corresponding Linux code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile             |   2 +-
 arch/arm/mach-imx/clk-gate-exclusive.c | 103 +++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/clk.h                |   3 +
 3 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/clk-gate-exclusive.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 048cac5..ae953b1 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -16,7 +16,7 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o clk-gate2.o
+obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o clk-gate2.o clk-gate-exclusive.o
 obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
diff --git a/arch/arm/mach-imx/clk-gate-exclusive.c b/arch/arm/mach-imx/clk-gate-exclusive.c
new file mode 100644
index 0000000..db88db0
--- /dev/null
+++ b/arch/arm/mach-imx/clk-gate-exclusive.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_gate_exclusive - i.MX specific gate clock which is mutually
+ * exclusive with other gate clocks
+ *
+ * @gate: the parent class
+ * @exclusive_mask: mask of gate bits which are mutually exclusive to this
+ *	gate clock
+ *
+ * The imx exclusive gate clock is a subclass of basic clk_gate
+ * with an addtional mask to indicate which other gate bits in the same
+ * register is mutually exclusive to this gate clock.
+ */
+struct clk_gate_exclusive {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+	u32 exclusive_mask;
+};
+
+static int clk_gate_exclusive_enable(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+	u32 val = readl(exgate->reg);
+
+	if (val & exgate->exclusive_mask)
+		return -EBUSY;
+
+	val |= 1 << exgate->shift;
+
+	writel(val, exgate->reg);
+
+	return 0;
+}
+
+static void clk_gate_exclusive_disable(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+	u32 val = readl(exgate->reg);
+
+	val &= ~(1 << exgate->shift);
+
+	writel(val, exgate->reg);
+}
+
+static int clk_gate_exclusive_is_enabled(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+
+	return readl(exgate->reg) & (1 << exgate->shift);
+}
+
+static const struct clk_ops clk_gate_exclusive_ops = {
+	.enable = clk_gate_exclusive_enable,
+	.disable = clk_gate_exclusive_disable,
+	.is_enabled = clk_gate_exclusive_is_enabled,
+};
+
+struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+	 void __iomem *reg, u8 shift, u32 exclusive_mask)
+{
+	struct clk_gate_exclusive *exgate;
+	int ret;
+
+	exgate = xzalloc(sizeof(*exgate));
+	exgate->parent = parent;
+	exgate->clk.name = name;
+	exgate->clk.ops = &clk_gate_exclusive_ops;
+	exgate->clk.flags = CLK_SET_RATE_PARENT;
+	exgate->clk.parent_names = &exgate->parent;
+	exgate->clk.num_parents = 1;
+
+	exgate->reg = reg;
+	exgate->shift = shift;
+	exgate->exclusive_mask = exclusive_mask;
+
+	ret = clk_register(&exgate->clk);
+	if (ret) {
+		free(exgate);
+		return ERR_PTR(ret);
+	}
+
+	return &exgate->clk;
+}
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 8ec3eb5..c8da2fa 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -92,4 +92,7 @@ static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg,
 	return imx_clk_mux(name, reg, shift, width, parents, num_parents);
 }
 
+struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u32 exclusive_mask);
+
 #endif /* __IMX_CLK_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
