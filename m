Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSLi6-0007SI-HL
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:46:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 49C7B27E046C
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2018 13:46:11 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 29 Nov 2018 13:45:56 +0100
Message-Id: <20181129124556.8179-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] clocksource: Add dw_apb_timer driver
To: barebox@lists.infradead.org
Cc: cleger@kalray.eu, Jules Maselbas <jmaselbas@kalray.eu>

Adapt linux kernel dw_apb_timer driver to barebox.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/clocksource/Kconfig        |   5 +
 drivers/clocksource/Makefile       |   1 +
 drivers/clocksource/dw_apb_timer.c | 148 +++++++++++++++++++++++++++++
 3 files changed, 154 insertions(+)
 create mode 100644 drivers/clocksource/dw_apb_timer.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 02659d86a..337a7a2e1 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -83,4 +83,9 @@ config CLOCKSOURCE_IMX_GPT
 	def_bool y
 	depends on ARCH_HAS_IMX_GPT
 
+config CLOCKSOURCE_DW_APB_TIMER
+	bool "DW APB timer driver"
+	help
+	  Enables the support for the dw_apb timer.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ce4d74137..ab78f0700 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
 obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
+obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
new file mode 100644
index 000000000..82ad6bccb
--- /dev/null
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -0,0 +1,148 @@
+/*
+ * (C) Copyright 2009 Intel Corporation
+ * Author: Jacob Pan (jacob.jun.pan@intel.com)
+ *
+ * Shared with ARM platforms, Jamie Iles, Picochip 2011
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Support for the Synopsys DesignWare APB Timers.
+ *
+ *
+ * Taken from linux-4.9 kernel and adapted to barebox.
+ */
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define APBT_MIN_PERIOD		4
+#define APBT_MIN_DELTA_USEC		200
+
+#define APBTMR_N_LOAD_COUNT		0x00
+#define APBTMR_N_CURRENT_VALUE		0x04
+#define APBTMR_N_CONTROL		0x08
+#define APBTMR_N_EOI			0x0c
+#define APBTMR_N_INT_STATUS		0x10
+
+#define APBTMRS_INT_STATUS		0xa0
+#define APBTMRS_EOI			0xa4
+#define APBTMRS_RAW_INT_STATUS		0xa8
+#define APBTMRS_COMP_VERSION		0xac
+
+#define APBTMR_CONTROL_ENABLE		(1 << 0)
+/* 1: periodic, 0:free running. */
+#define APBTMR_CONTROL_MODE_PERIODIC	(1 << 1)
+#define APBTMR_CONTROL_INT		(1 << 2)
+
+#define APBTMRS_REG_SIZE		0x14
+
+struct dw_apb_timer {
+	void __iomem *base;
+	unsigned long freq;
+	int irq;
+};
+
+static struct dw_apb_timer timer;
+
+static inline u32 apbt_readl(struct dw_apb_timer *timer, unsigned long offs)
+{
+	return readl(timer->base + offs);
+}
+
+static inline void apbt_writel(struct dw_apb_timer *timer, u32 val,
+			unsigned long offs)
+{
+	writel(val, timer->base + offs);
+}
+
+/**
+ * dw_apb_clocksource_start() - start the clocksource counting.
+ *
+ * @clksrc:	The clocksource to start.
+ *
+ * This is used to start the clocksource before registration and can be used
+ * to enable calibration of timers.
+ */
+static int dw_apb_clocksource_start(struct clocksource *clksrc)
+{
+	/*
+	 * start count down from 0xffff_ffff. this is done by toggling the
+	 * enable bit then load initial load count to ~0.
+	 */
+	uint32_t ctrl = apbt_readl(&timer, APBTMR_N_CONTROL);
+
+	ctrl &= ~APBTMR_CONTROL_ENABLE;
+	apbt_writel(&timer, ctrl, APBTMR_N_CONTROL);
+	apbt_writel(&timer, ~0, APBTMR_N_LOAD_COUNT);
+
+	/* enable, mask interrupt */
+	ctrl &= ~APBTMR_CONTROL_MODE_PERIODIC;
+	ctrl |= (APBTMR_CONTROL_ENABLE | APBTMR_CONTROL_INT);
+	apbt_writel(&timer, ctrl, APBTMR_N_CONTROL);
+
+	return 0;
+}
+
+static uint64_t dw_apb_clocksource_read(void)
+{
+	return (uint64_t) ~apbt_readl(&timer, APBTMR_N_CURRENT_VALUE);
+}
+
+static struct clocksource dw_apb_clksrc = {
+	.init  = dw_apb_clocksource_start,
+	.read  = dw_apb_clocksource_read,
+	.mask  = CLOCKSOURCE_MASK(32),
+	.shift = 0,
+};
+
+static int dw_apb_timer_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct resource *iores;
+	struct clk *clk;
+	uint32_t clk_freq;
+
+	/* use only one timer */
+	if (timer.base)
+		return -EBUSY;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+
+	timer.base = IOMEM(iores->start);
+
+	/* Get clock frequency */
+	clk = of_clk_get(np, 0);
+	if (IS_ERR(clk)) {
+		pr_err("Failed to get CPU clock: %ld\n", PTR_ERR(clk));
+		return PTR_ERR(clk);
+	}
+
+	clk_freq = clk_get_rate(clk);
+	clk_put(clk);
+
+	dw_apb_clksrc.mult = clocksource_hz2mult(clk_freq, dw_apb_clksrc.shift);
+
+	return init_clock(&dw_apb_clksrc);
+}
+
+static struct of_device_id dw_apb_timer_dt_ids[] = {
+	{ .compatible = "snps,dw-apb-timer", },
+	{ }
+};
+
+static struct driver_d dw_apb_timer_driver = {
+	.name = "dw-apb-timer",
+	.probe = dw_apb_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(dw_apb_timer_dt_ids),
+};
+
+device_platform_driver(dw_apb_timer_driver);
-- 
2.20.0.rc1.10.g7068cbc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
