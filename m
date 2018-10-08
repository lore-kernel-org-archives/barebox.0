Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P9A-0006ey-Jn
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:37:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id l17-v6so3502049pff.2
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:28 -0700
Message-Id: <20181008063542.18709-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063542.18709-1-andrew.smirnov@gmail.com>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/16] clocksource: Add ARM global timer support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port corresponding Linux kernel driver. Currently VFxxx SoC is the
intended consumer because it doesn't include common i.MX GPT block
used as clocksource by other i.MX SoCs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clocksource/Kconfig            |   4 +
 drivers/clocksource/Makefile           |   1 +
 drivers/clocksource/arm_global_timer.c | 113 +++++++++++++++++++++++++
 3 files changed, 118 insertions(+)
 create mode 100644 drivers/clocksource/arm_global_timer.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 3d63f7ff1..2be5a76b3 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -70,3 +70,7 @@ config CLOCKSOURCE_ARMV8_TIMER
 	bool
 	default y
 	depends on ARM && CPU_64v8
+
+config CLOCKSOURCE_ARM_GLOBAL_TIMER
+        def_bool y
+	depends on ARM
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ea33fff50..51f6cb2f4 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
 obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
+obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
new file mode 100644
index 000000000..44e3a3c76
--- /dev/null
+++ b/drivers/clocksource/arm_global_timer.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Clocksource driver for generic Cortex A9 timer block
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * based on corresponding driver from Linux kernel with the following
+ * copyright:
+ *
+ * drivers/clocksource/arm_global_timer.c
+ *
+ * Copyright (C) 2013 STMicroelectronics (R&D) Limited.
+ * Author: Stuart Menefy <stuart.menefy@st.com>
+ * Author: Srinivas Kandagatla <srinivas.kandagatla@st.com>
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <asm/system.h>
+
+#define GT_COUNTER0	0x00
+#define GT_COUNTER1	0x04
+
+#define GT_CONTROL	0x08
+#define GT_CONTROL_TIMER_ENABLE		BIT(0)  /* this bit is NOT banked */
+
+static void __iomem *gt_base;
+
+/*
+ * To get the value from the Global Timer Counter register proceed as follows:
+ * 1. Read the upper 32-bit timer counter register
+ * 2. Read the lower 32-bit timer counter register
+ * 3. Read the upper 32-bit timer counter register again. If the value is
+ *  different to the 32-bit upper value read previously, go back to step 2.
+ *  Otherwise the 64-bit timer counter value is correct.
+ */
+static uint64_t arm_global_clocksource_read(void)
+{
+	uint64_t counter;
+	uint32_t lower;
+	uint32_t upper, old_upper;
+
+	upper = readl(gt_base + GT_COUNTER1);
+	do {
+		old_upper = upper;
+		lower = readl(gt_base + GT_COUNTER0);
+		upper = readl(gt_base + GT_COUNTER1);
+	} while (upper != old_upper);
+
+	counter = upper;
+	counter <<= 32;
+	counter |= lower;
+	return counter;
+}
+
+static struct clocksource cs = {
+	.read	= arm_global_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(64),
+	.shift	= 0,
+};
+
+static int arm_global_timer_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct clk *clk;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(clk);
+	if (ret) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		return ret;
+	}
+
+	gt_base = IOMEM(iores->start);
+
+	cs.mult = clocksource_hz2mult(clk_get_rate(clk), cs.shift);
+
+	writel(0, gt_base + GT_CONTROL);
+	writel(0, gt_base + GT_COUNTER0);
+	writel(0, gt_base + GT_COUNTER1);
+	/* enables timer on all the cores */
+	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
+
+	return init_clock(&cs);
+}
+
+static struct of_device_id arm_global_timer_dt_ids[] = {
+	{ .compatible = "arm,cortex-a9-global-timer", },
+	{ }
+};
+
+static struct driver_d arm_global_timer_driver = {
+	.name = "arm-global-timer",
+	.probe = arm_global_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(arm_global_timer_dt_ids),
+};
+postcore_platform_driver(arm_global_timer_driver);
+
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
