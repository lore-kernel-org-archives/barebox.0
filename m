Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kO-0V
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:51:02 +0100
Message-Id: <20170116105108.13617-18-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/23] clk: imx: Add clk-cpu support
To: Barebox List <barebox@lists.infradead.org>

Taken from the kernel as of 4.10-rc3. Needed for i.MX7

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/Makefile  |   1 +
 drivers/clk/imx/clk-cpu.c | 110 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h     |   3 ++
 3 files changed, 114 insertions(+)
 create mode 100644 drivers/clk/imx/clk-cpu.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 65d7859ed..636bfdc2e 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_COMMON_CLK) +=	\
 	clk-pfd.o		\
 	clk-gate2.o		\
 	clk-gate-exclusive.o	\
+	clk-cpu.o		\
 	clk.o
 
 obj-$(CONFIG_ARCH_IMX1)   += clk-imx1.o
diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
new file mode 100644
index 000000000..bd1749fd8
--- /dev/null
+++ b/drivers/clk/imx/clk-cpu.c
@@ -0,0 +1,110 @@
+/*
+ * Copyright (c) 2014 Lucas Stach <l.stach@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <malloc.h>
+#include <clock.h>
+
+#include "clk.h"
+
+struct clk_cpu {
+	struct clk	clk;
+	struct clk	*div;
+	struct clk	*mux;
+	struct clk	*pll;
+	struct clk	*step;
+};
+
+static inline struct clk_cpu *to_clk_cpu(struct clk *clk)
+{
+	return container_of(clk, struct clk_cpu, clk);
+}
+
+static unsigned long clk_cpu_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_cpu *cpu = to_clk_cpu(clk);
+
+	return clk_get_rate(cpu->div);
+}
+
+static long clk_cpu_round_rate(struct clk *clk, unsigned long rate,
+			       unsigned long *prate)
+{
+	struct clk_cpu *cpu = to_clk_cpu(clk);
+
+	return clk_round_rate(cpu->pll, rate);
+}
+
+static int clk_cpu_set_rate(struct clk *clk, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_cpu *cpu = to_clk_cpu(clk);
+	int ret;
+
+	/* switch to PLL bypass clock */
+	ret = clk_set_parent(cpu->mux, cpu->step);
+	if (ret)
+		return ret;
+
+	/* reprogram PLL */
+	ret = clk_set_rate(cpu->pll, rate);
+	if (ret) {
+		clk_set_parent(cpu->mux, cpu->pll);
+		return ret;
+	}
+	/* switch back to PLL clock */
+	clk_set_parent(cpu->mux, cpu->pll);
+
+	/* Ensure the divider is what we expect */
+	clk_set_rate(cpu->div, rate);
+
+	return 0;
+}
+
+static const struct clk_ops clk_cpu_ops = {
+	.recalc_rate	= clk_cpu_recalc_rate,
+	.round_rate	= clk_cpu_round_rate,
+	.set_rate	= clk_cpu_set_rate,
+};
+
+struct clk *imx_clk_cpu(const char *name, const char *parent_name,
+		struct clk *div, struct clk *mux, struct clk *pll,
+		struct clk *step)
+{
+	struct clk_cpu *cpu;
+	int ret;
+
+	cpu = xzalloc(sizeof(*cpu));
+
+	cpu->div = div;
+	cpu->mux = mux;
+	cpu->pll = pll;
+	cpu->step = step;
+
+	cpu->clk.name = name;
+	cpu->clk.ops = &clk_cpu_ops;
+	cpu->clk.flags = 0;
+	cpu->clk.parent_names = &parent_name;
+	cpu->clk.num_parents = 1;
+
+	ret = clk_register(&cpu->clk);
+	if (ret)
+		free(cpu);
+
+	return &cpu->clk;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 7ecb14654..3240231a7 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -120,5 +120,8 @@ struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 
 void imx_check_clocks(struct clk *clks[], unsigned int count);
 
+struct clk *imx_clk_cpu(const char *name, const char *parent_name,
+		struct clk *div, struct clk *mux, struct clk *pll,
+		struct clk *step);
 
 #endif /* __IMX_CLK_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
