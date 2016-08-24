Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcXer-0005Ec-HN
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 12:51:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 48E64A00259
 for <barebox@lists.infradead.org>; Wed, 24 Aug 2016 14:51:37 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 24 Aug 2016 14:49:24 +0200
Message-Id: <1472042970-35151-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
References: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v2 2/8] clocksource: Add rk3288 timer driver
To: barebox@lists.infradead.org

This driver comes from the u-boot (v2016.01).

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
Changes since v1:
- moved rk_timer to drivers/clocksource
- rk_timer now binds against a DT node
---
 arch/arm/mach-rockchip/Kconfig              |  5 ++
 arch/arm/mach-rockchip/include/mach/timer.h | 19 ++++++++
 drivers/clocksource/Kconfig                 |  4 ++
 drivers/clocksource/Makefile                |  1 +
 drivers/clocksource/rk_timer.c              | 73 +++++++++++++++++++++++++++++
 5 files changed, 102 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/include/mach/timer.h
 create mode 100644 drivers/clocksource/rk_timer.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index e027fae..71fcbe7 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -7,6 +7,10 @@ config ARCH_TEXT_BASE
 	default 0x68000000 if ARCH_RK3188
 	default 0x0 if ARCH_RK3288
 
+config RK_TIMER
+	hex
+	default 1
+
 choice
 	prompt "Select Rockchip SoC"
 
@@ -15,6 +19,7 @@ config ARCH_RK3188
 
 config ARCH_RK3288
 	bool "Rockchip RK3288 SoCs"
+	select CLOCKSOURCE_ROCKCHIP
 endchoice
 
 comment "select Rockchip boards:"
diff --git a/arch/arm/mach-rockchip/include/mach/timer.h b/arch/arm/mach-rockchip/include/mach/timer.h
new file mode 100644
index 0000000..e6ed0e4
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/timer.h
@@ -0,0 +1,19 @@
+/*
+ * (C) Copyright 2015 Rockchip Electronics Co., Ltd
+ *
+ * SPDX-License-Identifier:     GPL-2.0+
+ */
+
+#ifndef _ASM_ARCH_TIMER_H
+#define _ASM_ARCH_TIMER_H
+
+struct rk_timer {
+	unsigned int timer_load_count0;
+	unsigned int timer_load_count1;
+	unsigned int timer_curr_value0;
+	unsigned int timer_curr_value1;
+	unsigned int timer_ctrl_reg;
+	unsigned int timer_int_status;
+};
+
+#endif
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 3fb09fb..f1ab554 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -49,3 +49,7 @@ config CLOCKSOURCE_ORION
 config CLOCKSOURCE_UEMD
 	bool
 	depends on ARCH_UEMD
+
+config CLOCKSOURCE_ROCKCHIP
+	bool
+	depends on ARCH_ROCKCHIP
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 4eb1656..39982ff 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
+obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
new file mode 100644
index 0000000..baa517c
--- /dev/null
+++ b/drivers/clocksource/rk_timer.c
@@ -0,0 +1,73 @@
+/*
+ * (C) Copyright 2015 Rockchip Electronics Co., Ltd
+ *
+ * (C) Copyright 2016 PHYTEC Messtechnik GmbH
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+
+ * SPDX-License-Identifier:     GPL-2.0+
+ */
+
+#include <clock.h>
+#include <init.h>
+#include <io.h>
+#include <mach/timer.h>
+#include <stdio.h>
+#include <mach/hardware.h>
+#include <mach/cru_rk3288.h>
+#include <common.h>
+
+struct rk_timer *timer_ptr;
+
+static uint64_t rockchip_get_ticks(void)
+{
+	uint64_t timebase_h, timebase_l;
+
+	timebase_l = readl(&timer_ptr->timer_curr_value0);
+	timebase_h = readl(&timer_ptr->timer_curr_value1);
+
+	return timebase_h << 32 | timebase_l;
+}
+
+static struct clocksource rkcs = {
+	.read   = rockchip_get_ticks,
+	.mask   = CLOCKSOURCE_MASK(32),
+	.shift  = 10,
+};
+
+static int rockchip_timer_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	timer_ptr = IOMEM(iores->start) + 0x20 * CONFIG_RK_TIMER;
+
+	rkcs.mult = clocksource_hz2mult(OSC_HZ, rkcs.shift);
+
+	writel(0xffffffff, &timer_ptr->timer_load_count0);
+	writel(0xffffffff, &timer_ptr->timer_load_count1);
+	writel(1, &timer_ptr->timer_ctrl_reg);
+
+	return init_clock(&rkcs);
+}
+
+static __maybe_unused struct of_device_id rktimer_dt_ids[] = {
+	{
+		.compatible = "rockchip,rk3288-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d rktimer_driver = {
+	.name = "rockchip-timer",
+	.probe = rockchip_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(rktimer_dt_ids),
+};
+
+static int rktimer_init(void)
+{
+	return platform_driver_register(&rktimer_driver);
+}
+core_initcall(rktimer_init);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
