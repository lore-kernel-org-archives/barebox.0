Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0001qU-Si
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:05 +0100
Message-Id: <20180316125354.23462-30-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/78] clocksource: Add armv8 generic timer support
To: Barebox List <barebox@lists.infradead.org>

armv8 has a generic time used in many SoCs. Add support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clocksource/Kconfig       |  5 +++
 drivers/clocksource/Makefile      |  1 +
 drivers/clocksource/armv8-timer.c | 65 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 71 insertions(+)
 create mode 100644 drivers/clocksource/armv8-timer.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 23ad20afcf..3d63f7ff16 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -65,3 +65,8 @@ config CLOCKSOURCE_ROCKCHIP
 config CLOCKSOURCE_ATMEL_PIT
        bool
        depends on SOC_AT91SAM9 || SOC_SAMA5
+
+config CLOCKSOURCE_ARMV8_TIMER
+	bool
+	default y
+	depends on ARM && CPU_64v8
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index f774edee46..ea33fff502 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
+obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/armv8-timer.c
new file mode 100644
index 0000000000..57b0b694c7
--- /dev/null
+++ b/drivers/clocksource/armv8-timer.c
@@ -0,0 +1,65 @@
+/*
+ * Copyright (C) 2018 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <asm/system.h>
+
+uint64_t armv8_clocksource_read(void)
+{
+	unsigned long cntpct;
+
+	isb();
+	asm volatile("mrs %0, cntpct_el0" : "=r" (cntpct));
+
+	return cntpct;
+}
+
+static struct clocksource cs = {
+	.read	= armv8_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(64),
+	.shift	= 0,
+};
+
+static int armv8_timer_probe(struct device_d *dev)
+{
+	unsigned long cntfrq;
+
+	asm volatile("mrs %0, cntfrq_el0" : "=r" (cntfrq));
+
+	cs.mult = clocksource_hz2mult(cntfrq, cs.shift);
+
+	return init_clock(&cs);
+}
+
+static struct of_device_id armv8_timer_dt_ids[] = {
+	{ .compatible = "arm,armv8-timer", },
+	{ }
+};
+
+static struct driver_d armv8_timer_driver = {
+	.name = "armv8-timer",
+	.probe = armv8_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(armv8_timer_dt_ids),
+};
+
+static int armv8_timer_init(void)
+{
+	return platform_driver_register(&armv8_timer_driver);
+}
+postcore_initcall(armv8_timer_init);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
