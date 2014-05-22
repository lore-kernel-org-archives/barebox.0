Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnYzi-0004u5-Ic
 for barebox@lists.infradead.org; Thu, 22 May 2014 19:49:39 +0000
Received: by mail-la0-f42.google.com with SMTP id el20so3110990lab.1
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 12:49:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 23:48:46 +0400
Message-Id: <1400788130-24202-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/7] clocksource: add uemd clocksource
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clocksource/Kconfig  |   4 ++
 drivers/clocksource/Makefile |   1 +
 drivers/clocksource/uemd.c   | 130 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 135 insertions(+)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 43974f0..c1480ce 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -48,3 +48,7 @@ config CLOCKSOURCE_NOMADIK
 config CLOCKSOURCE_ORION
 	bool
 	depends on ARCH_MVEBU
+
+config CLOCKSOURCE_UEMD
+	bool
+	depends on ARCH_UEMD
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 834a15d..97c0288 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_CLOCKSOURCE_DUMMY)   += dummy.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
+obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
new file mode 100644
index 0000000..2ea455e
--- /dev/null
+++ b/drivers/clocksource/uemd.c
@@ -0,0 +1,130 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Based on
+ * https://github.com/RC-MODULE/linux-3.10.x/tree/k1879-3.10.28/arch/arm/mach-uemd/clocksource.c
+ * (C) 2011 RC Module, Sergey Mironov <ierton@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <clock.h>
+
+#define TIMER_LOAD		0x00
+#define TIMER_VALUE		0x04
+#define TIMER_CONTROL		0x08
+
+#define TIMER_CTRL_ENABLE	BIT(7)
+
+/*
+ * TIMER_CONTROL_PERIODIC:
+ * The counter generates an interrupt at a constant interval,
+ * reloading the original value after wrapping past zero.
+ */
+#define TIMER_CTRL_PERIODIC	BIT(6)
+
+/* interrupt enable */
+#define TIMER_CTRL_IE		BIT(5)
+
+/* Prescalers */
+#define TIMER_CTRL_P1		(0 << 2)
+#define TIMER_CTRL_P16		(1 << 2)
+#define TIMER_CTRL_P256		(2 << 2)
+
+/* Counter register size is 32 Bit long */
+#define TIMER_CTRL_32BIT	BIT(1)
+
+static void __iomem *timer_base;
+
+static uint64_t uemd_timer_cs_read(void)
+{
+	/* Down counter! */
+	return ~__raw_readl(timer_base + TIMER_VALUE);
+}
+
+static struct clocksource uemd_cs = {
+	.read = uemd_timer_cs_read,
+	.mask = CLOCKSOURCE_MASK(32),
+};
+
+static int uemd_timer_probe(struct device_d *dev)
+{
+	int mode;
+	struct clk *timer_clk;
+
+	/* use only one timer */
+	if (timer_base)
+		return -EBUSY;
+
+	timer_base = dev_request_mem_region(dev, 0);
+	if (!timer_base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	timer_clk = clk_get(dev, NULL);
+	if (IS_ERR(timer_clk)) {
+		int ret = PTR_ERR(timer_clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	/* Stop timer */
+	__raw_writel(0, timer_base + TIMER_CONTROL);
+
+	/* Setup */
+	__raw_writel(0xffffffff, timer_base + TIMER_LOAD);
+	__raw_writel(0xffffffff, timer_base + TIMER_VALUE);
+
+	mode =	TIMER_CTRL_32BIT	|
+		TIMER_CTRL_PERIODIC	|
+		TIMER_CTRL_P1;
+	__raw_writel(mode, timer_base + TIMER_CONTROL);
+
+	/* Fire it up! */
+	mode |= TIMER_CTRL_ENABLE;
+	__raw_writel(mode, timer_base + TIMER_CONTROL);
+
+	clocks_calc_mult_shift(&uemd_cs.mult, &uemd_cs.shift,
+		clk_get_rate(timer_clk), NSEC_PER_SEC, 10);
+
+	init_clock(&uemd_cs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id uemd_timer_dt_ids[] = {
+	{
+		.compatible = "module,uemd-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d uemd_timer_driver = {
+	.probe	= uemd_timer_probe,
+	.name	= "uemd-timer",
+	.of_compatible = DRV_OF_COMPAT(uemd_timer_dt_ids),
+};
+
+static int uemd_timer_init(void)
+{
+	return platform_driver_register(&uemd_timer_driver);
+}
+coredevice_initcall(uemd_timer_init);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
