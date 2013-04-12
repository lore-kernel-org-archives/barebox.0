Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQbDg-0008P0-Iy
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 10:28:41 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 12 Apr 2013 12:28:20 +0200
Message-Id: <1365762505-2540-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
References: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v5 08/13] tegra: add T20 timer driver
To: barebox@lists.infradead.org

Replace the ad-hoc clocksource implementation with a proper driver for
the Tegra 20 timer. This driver is able to do the required hardware
initialisation itself.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20.dtsi           |   9 +++
 arch/arm/mach-tegra/Makefile        |   2 +-
 arch/arm/mach-tegra/clock.c         |  56 -----------------
 arch/arm/mach-tegra/tegra20-car.c   |   4 ++
 arch/arm/mach-tegra/tegra20-timer.c | 119 ++++++++++++++++++++++++++++++++++++
 5 files changed, 133 insertions(+), 57 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/tegra20-timer.c

diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index 2edfda1..cc76527 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -3,6 +3,15 @@
 / {
 	compatible = "nvidia,tegra20";
 
+	timer@60005000 {
+		compatible = "nvidia,tegra20-timer";
+		reg = <0x60005000 0x60>;
+		interrupts = <0 0 0x04
+			      0 1 0x04
+			      0 41 0x04
+			      0 42 0x04>;
+	};
+
 	tegra_car: clock {
 		compatible = "nvidia,tegra20-car";
 		reg = <0x60006000 0x1000>;
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 9aa7725..1112d11 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,3 +1,3 @@
-obj-y += clock.o
 obj-y += reset.o
 obj-y += tegra20-car.o
+obj-y += tegra20-timer.o
diff --git a/arch/arm/mach-tegra/clock.c b/arch/arm/mach-tegra/clock.c
deleted file mode 100644
index 82065ee..0000000
--- a/arch/arm/mach-tegra/clock.c
+++ /dev/null
@@ -1,56 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Clocksource based on Tegra internal timer
- */
-
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
-#include <linux/clk.h>
-#include <init.h>
-#include <asm/io.h>
-#include <mach/iomap.h>
-
-static void __iomem *timer_reg_base = (void __iomem *) (TEGRA_TMR1_BASE);
-
-#define timer_writel(value, reg) \
-	__raw_writel(value, (u32)timer_reg_base + (reg))
-#define timer_readl(reg) \
-	__raw_readl((u32)timer_reg_base + (reg))
-
-static uint64_t tegra_clocksource_read(void)
-{
-	return timer_readl(0x10);
-}
-
-static struct clocksource cs = {
-	.read	= tegra_clocksource_read,
-	.mask	= 0xffffffff,
-};
-
-/* FIXME: here we have no initialization. All initialization made by U-Boot */
-static int clocksource_init(void)
-{
-	cs.mult = clocksource_hz2mult(1000000, cs.shift);
-	init_clock(&cs);
-
-	return 0;
-}
-core_initcall(clocksource_init);
diff --git a/arch/arm/mach-tegra/tegra20-car.c b/arch/arm/mach-tegra/tegra20-car.c
index 93616bf..3af7bdc 100644
--- a/arch/arm/mach-tegra/tegra20-car.c
+++ b/arch/arm/mach-tegra/tegra20-car.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/iomap.h>
 
@@ -92,6 +93,9 @@ static int tegra20_car_probe(struct device_d *dev)
 	/* timer is a gate, but as it's enabled by BOOTROM we needn't worry */
 	clks[timer] = clk_fixed_factor("timer", "clk_m", 1, 1);
 
+	/* device to clock links */
+	clkdev_add_physbase(clks[timer], TEGRA_TMR1_BASE, NULL);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
new file mode 100644
index 0000000..aafbfd4
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -0,0 +1,119 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/**
+ * @file
+ * @brief Device driver for the Tegra 20 timer, which exposes a clocksource.
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+
+/* register definitions */
+#define TIMERUS_CNTR_1US	0x10
+#define TIMERUS_USEC_CFG	0x14
+
+static void __iomem *timer_base;
+
+static uint64_t tegra20_timer_cs_read(void)
+{
+	return readl(timer_base + TIMERUS_CNTR_1US);
+}
+
+static struct clocksource cs = {
+	.read	= tegra20_timer_cs_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+static int tegra20_timer_probe(struct device_d *dev)
+{
+	struct clk *timer_clk;
+	unsigned long rate;
+	u32 reg;
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
+	if (!timer_clk) {
+		dev_err(dev, "could not get clock\n");
+		return -ENODEV;
+	}
+
+	clk_enable(timer_clk);
+
+	/*
+	 * calibrate timer to run at 1MHz
+	 * TIMERUS_USEC_CFG selects the scale down factor with bits [0:7]
+	 * representing the divisor and bits [8:15] representing the dividend
+	 * each in n+1 form.
+	 */
+	rate = clk_get_rate(timer_clk);
+	switch (rate) {
+	case 12000000:
+		reg = 0x000b;
+		break;
+	case 13000000:
+		reg = 0x000c;
+		break;
+	case 19200000:
+		reg = 0x045f;
+		break;
+	case 26000000:
+		reg = 0x0019;
+		break;
+	default:
+		reg = 0;
+		dev_warn(dev, "unknown timer clock rate\n");
+		break;
+	}
+	writel(reg, timer_base + TIMERUS_USEC_CFG);
+
+	cs.mult = clocksource_hz2mult(1000000, cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra20-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra20_timer_driver = {
+	.probe	= tegra20_timer_probe,
+	.name	= "tegra20-timer",
+	.of_compatible = DRV_OF_COMPAT(tegra20_timer_dt_ids),
+};
+
+static int tegra20_timer_init(void)
+{
+	return platform_driver_register(&tegra20_timer_driver);
+}
+coredevice_initcall(tegra20_timer_init);
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
