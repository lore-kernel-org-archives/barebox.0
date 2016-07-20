Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPsKg-0006Vf-6P
 for barebox@lists.infradead.org; Wed, 20 Jul 2016 14:18:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6E4E1A00324
 for <barebox@lists.infradead.org>; Wed, 20 Jul 2016 16:19:34 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 20 Jul 2016 16:17:39 +0200
Message-Id: <1469024265-20098-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/8] ARM: rockchip: Add timer driver
To: barebox@lists.infradead.org

This driver comes from the u-boot (v2016.01).

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-rockchip/Kconfig              |  5 +++
 arch/arm/mach-rockchip/Makefile             |  1 +
 arch/arm/mach-rockchip/include/mach/timer.h | 19 ++++++++++++
 arch/arm/mach-rockchip/rk_timer.c           | 48 +++++++++++++++++++++++++++++
 4 files changed, 73 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/include/mach/timer.h
 create mode 100644 arch/arm/mach-rockchip/rk_timer.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index e027fae..fa0e8fc 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -7,6 +7,11 @@ config ARCH_TEXT_BASE
 	default 0x68000000 if ARCH_RK3188
 	default 0x0 if ARCH_RK3288
 
+config TIMER_BASE
+	hex
+	default 0x2000E020 if ARCH_RK3188
+	default 0xff810020 if ARCH_RK3288
+
 choice
 	prompt "Select Rockchip SoC"
 
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 4ca7f17..1211208 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
+obj-y += rk_timer.o
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
diff --git a/arch/arm/mach-rockchip/rk_timer.c b/arch/arm/mach-rockchip/rk_timer.c
new file mode 100644
index 0000000..2bb6a0b
--- /dev/null
+++ b/arch/arm/mach-rockchip/rk_timer.c
@@ -0,0 +1,48 @@
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
+struct rk_timer * const timer_ptr = (void *)CONFIG_TIMER_BASE;
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
+static int rockchip_timer_init(void)
+{
+	rkcs.mult = clocksource_hz2mult(OSC_HZ, rkcs.shift);
+
+	writel(0xffffffff, &timer_ptr->timer_load_count0);
+	writel(0xffffffff, &timer_ptr->timer_load_count1);
+	writel(1, &timer_ptr->timer_ctrl_reg);
+
+	return init_clock(&rkcs);
+}
+
+core_initcall(rockchip_timer_init);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
