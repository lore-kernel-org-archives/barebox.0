Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJp2p-0007LX-0z
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:17:08 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0B462104FE92
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 19:23:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 19:14:38 +0200
Message-Id: <1349370878-8047-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349370878-8047-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121004171151.GO26553@game.jcrosoft.org>
 <1349370878-8047-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] arm: move nomadik timer to drivers/clocksource
To: barebox@lists.infradead.org

as this timer is shared with multiple arch

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                           |    1 +
 arch/arm/mach-nomadik/8815.c               |    5 +
 arch/arm/mach-nomadik/include/mach/mtu.h   |   46 ---------
 arch/arm/mach-nomadik/include/mach/timex.h |    6 --
 arch/arm/mach-nomadik/timer.c              |  114 +++++++--------------
 drivers/clocksource/Kconfig                |    4 +
 drivers/clocksource/Makefile               |    1 +
 drivers/clocksource/nomadik.c              |  147 ++++++++++++++++++++++++++++
 8 files changed, 191 insertions(+), 133 deletions(-)
 delete mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 delete mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 rewrite arch/arm/mach-nomadik/timer.c (60%)
 create mode 100644 drivers/clocksource/nomadik.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8278c82..d766201 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -54,6 +54,7 @@ config ARCH_NETX
 config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
 	select CPU_ARM926T
+	select CLOCKSOURCE_NOMADIK
 	help
 	 Support for the Nomadik platform by ST-Ericsson
 
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 81c5ce1..c5cac58 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -29,6 +29,10 @@ static struct clk st8815_clk_48 = {
        .rate = 48 * 1000 * 1000,
 };
 
+static struct clk st8815_clk_2_4 = {
+       .rate = 2400000,
+};
+
 static struct clk st8815_dummy;
 
 void st8815_add_device_sdram(u32 size)
@@ -38,6 +42,7 @@ void st8815_add_device_sdram(u32 size)
 
 static struct clk_lookup clocks_lookups[] = {
 	CLKDEV_CON_ID("apb_pclk", &st8815_dummy),
+	CLKDEV_CON_ID("nomadik_mtu", &st8815_clk_2_4),
 	CLKDEV_DEV_ID("uart-pl0110", &st8815_clk_48),
 	CLKDEV_DEV_ID("uart-pl0111", &st8815_clk_48),
 };
diff --git a/arch/arm/mach-nomadik/include/mach/mtu.h b/arch/arm/mach-nomadik/include/mach/mtu.h
deleted file mode 100644
index 9095d86..0000000
--- a/arch/arm/mach-nomadik/include/mach/mtu.h
+++ /dev/null
@@ -1,46 +0,0 @@
-#ifndef __ASM_ARCH_MTU_H
-#define __ASM_ARCH_MTU_H
-
-/*
- * The MTU device hosts four different counters, with 4 set of
- * registers. These are register names.
- */
-
-#define MTU_IMSC	0x00	/* Interrupt mask set/clear */
-#define MTU_RIS		0x04	/* Raw interrupt status */
-#define MTU_MIS		0x08	/* Masked interrupt status */
-#define MTU_ICR		0x0C	/* Interrupt clear register */
-
-/* per-timer registers take 0..3 as argument */
-#define MTU_LR(x)	(0x10 + 0x10 * (x) + 0x00)	/* Load value */
-#define MTU_VAL(x)	(0x10 + 0x10 * (x) + 0x04)	/* Current value */
-
-#define MTU_CR(x)	(0x10 + 0x10 * (x) + 0x08)	/* Control reg */
-#define MTU_BGLR(x)	(0x10 + 0x10 * (x) + 0x0c)	/* At next overflow */
-
-
-/* bits for the control register */
-#define MTU_CRn_ENA		0x80
-#define MTU_CRn_PERIODIC	0x40	/* if 0 = free-running */
-#define MTU_CRn_PRESCALE_MASK	0x0c
-#define MTU_CRn_PRESCALE_1	0x00
-#define MTU_CRn_PRESCALE_16	0x04
-#define MTU_CRn_PRESCALE_256	0x08
-#define MTU_CRn_32BITS		0x02
-#define MTU_CRn_ONESHOT		0x01	/* if 0 = wraps reloading from BGLR*/
-
-/* Other registers are usual amba/primecell registers, currently not used */
-#define MTU_ITCR	0xff0
-#define MTU_ITOP	0xff4
-
-#define MTU_PERIPH_ID0	0xfe0
-#define MTU_PERIPH_ID1	0xfe4
-#define MTU_PERIPH_ID2	0xfe8
-#define MTU_PERIPH_ID3	0xfeC
-
-#define MTU_PCELL0	0xff0
-#define MTU_PCELL1	0xff4
-#define MTU_PCELL2	0xff8
-#define MTU_PCELL3	0xffC
-
-#endif /* __ASM_ARCH_MTU_H */
diff --git a/arch/arm/mach-nomadik/include/mach/timex.h b/arch/arm/mach-nomadik/include/mach/timex.h
deleted file mode 100644
index b2b41fa..0000000
--- a/arch/arm/mach-nomadik/include/mach/timex.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_ARCH_TIMEX_H
-#define __ASM_ARCH_TIMEX_H
-
-#define CLOCK_TICK_RATE	2400000
-
-#endif
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
dissimilarity index 60%
index becd363..0b8dc86 100644
--- a/arch/arm/mach-nomadik/timer.c
+++ b/arch/arm/mach-nomadik/timer.c
@@ -1,81 +1,33 @@
-/*
- * linux/arch/arm/mach-nomadik/timer.c
- *
- * Copyright (C) 2008 STMicroelectronics
- * Copyright (C) 2009 Alessandro Rubini, somewhat based on at91sam926x
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2, as
- * published by the Free Software Foundation.
- */
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <io.h>
-#include <mach/hardware.h>
-#include <mach/mtu.h>
-#include <mach/timex.h>
-
-/* Initial value for SRC control register: all timers use MXTAL/8 source */
-#define SRC_CR_INIT_MASK	0x00007fff
-#define SRC_CR_INIT_VAL		0x2aaa8000
-
-static u32	nmdk_cycle;		/* write-once */
-static __iomem void *mtu_base;
-
-/*
- * clocksource: the MTU device is a decrementing counters, so we negate
- * the value being read.
- */
-static uint64_t nmdk_read_timer(void)
-{
-	return nmdk_cycle - readl(mtu_base + MTU_VAL(0));
-}
-
-static struct clocksource nmdk_clksrc = {
-	.read	= nmdk_read_timer,
-	.shift	= 20,
-	.mask	= CLOCKSOURCE_MASK(32),
-};
-
-static void nmdk_timer_reset(void)
-{
-	u32 cr;
-
-	writel(0, mtu_base + MTU_CR(0)); /* off */
-
-	/* configure load and background-load, and fire it up */
-	writel(nmdk_cycle, mtu_base + MTU_LR(0));
-	writel(nmdk_cycle, mtu_base + MTU_BGLR(0));
-	cr = MTU_CRn_PRESCALE_1 | MTU_CRn_32BITS;
-	writel(cr, mtu_base + MTU_CR(0));
-	writel(cr | MTU_CRn_ENA, mtu_base + MTU_CR(0));
-}
-
-static int nmdk_timer_init(void)
-{
-	u32 src_cr;
-	unsigned long rate;
-
-	rate = CLOCK_TICK_RATE; /* 2.4MHz */
-	nmdk_cycle = (rate + 1000 / 2) / 1000;
-
-	/* Configure timer sources in "system reset controller" ctrl reg */
-	src_cr = readl(NOMADIK_SRC_BASE);
-	src_cr &= SRC_CR_INIT_MASK;
-	src_cr |= SRC_CR_INIT_VAL;
-	writel(src_cr, NOMADIK_SRC_BASE);
-
-	/* Save global pointer to mtu, used by functions above */
-	mtu_base = (void *)NOMADIK_MTU0_BASE;
-
-	/* Init the timer and register clocksource */
-	nmdk_timer_reset();
-
-	nmdk_clksrc.mult = clocksource_hz2mult(rate, nmdk_clksrc.shift);
-
-	init_clock(&nmdk_clksrc);
-
-	return 0;
-}
-core_initcall(nmdk_timer_init);
+/*
+ * linux/arch/arm/mach-nomadik/timer.c
+ *
+ * Copyright (C) 2008 STMicroelectronics
+ * Copyright (C) 2009 Alessandro Rubini, somewhat based on at91sam926x
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2, as
+ * published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/hardware.h>
+
+/* Initial value for SRC control register: all timers use MXTAL/8 source */
+#define SRC_CR_INIT_MASK	0x00007fff
+#define SRC_CR_INIT_VAL		0x2aaa8000
+
+static int st8815_timer_init(void)
+{
+	u32 src_cr;
+
+	/* Configure timer sources in "system reset controller" ctrl reg */
+	src_cr = readl(NOMADIK_SRC_BASE);
+	src_cr &= SRC_CR_INIT_MASK;
+	src_cr |= SRC_CR_INIT_VAL;
+	writel(src_cr, NOMADIK_SRC_BASE);
+
+	add_generic_device("nomadik_mtu", DEVICE_ID_SINGLE, NULL, NOMADIK_MTU0_BASE, 0x1000, IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(st8815_timer_init);
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 05c1f0a..9d6d293 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -1,3 +1,7 @@
 config ARM_SMP_TWD
 	bool
 	depends on ARM && CPU_V7
+
+config CLOCKSOURCE_NOMADIK
+	bool
+	depends on ARM
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 9186a5c..bef465c 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
+obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
new file mode 100644
index 0000000..8a3e6d9
--- /dev/null
+++ b/drivers/clocksource/nomadik.c
@@ -0,0 +1,147 @@
+/*
+ * linux/arch/arm/mach-nomadik/timer.c
+ *
+ * Copyright (C) 2008 STMicroelectronics
+ * Copyright (C) 2009 Alessandro Rubini, somewhat based on at91sam926x
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2, as
+ * published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <clock.h>
+#include <io.h>
+#include <init.h>
+#include <driver.h>
+#include <errno.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+/*
+ * The MTU device hosts four different counters, with 4 set of
+ * registers. These are register names.
+ */
+
+#define MTU_IMSC	0x00	/* Interrupt mask set/clear */
+#define MTU_RIS		0x04	/* Raw interrupt status */
+#define MTU_MIS		0x08	/* Masked interrupt status */
+#define MTU_ICR		0x0C	/* Interrupt clear register */
+
+/* per-timer registers take 0..3 as argument */
+#define MTU_LR(x)	(0x10 + 0x10 * (x) + 0x00)	/* Load value */
+#define MTU_VAL(x)	(0x10 + 0x10 * (x) + 0x04)	/* Current value */
+#define MTU_CR(x)	(0x10 + 0x10 * (x) + 0x08)	/* Control reg */
+#define MTU_BGLR(x)	(0x10 + 0x10 * (x) + 0x0c)	/* At next overflow */
+
+/* bits for the control register */
+#define MTU_CRn_ENA		0x80
+#define MTU_CRn_PERIODIC	0x40	/* if 0 = free-running */
+#define MTU_CRn_PRESCALE_MASK	0x0c
+#define MTU_CRn_PRESCALE_1		0x00
+#define MTU_CRn_PRESCALE_16		0x04
+#define MTU_CRn_PRESCALE_256		0x08
+#define MTU_CRn_32BITS		0x02
+#define MTU_CRn_ONESHOT		0x01	/* if 0 = wraps reloading from BGLR*/
+
+/* Other registers are usual amba/primecell registers, currently not used */
+#define MTU_ITCR	0xff0
+#define MTU_ITOP	0xff4
+
+#define MTU_PERIPH_ID0	0xfe0
+#define MTU_PERIPH_ID1	0xfe4
+#define MTU_PERIPH_ID2	0xfe8
+#define MTU_PERIPH_ID3	0xfeC
+
+#define MTU_PCELL0	0xff0
+#define MTU_PCELL1	0xff4
+#define MTU_PCELL2	0xff8
+#define MTU_PCELL3	0xffC
+
+static __iomem void *mtu_base;
+static u32 clk_prescale;
+static u32 nmdk_cycle;		/* write-once */
+
+/*
+ * clocksource: the MTU device is a decrementing counters, so we negate
+ * the value being read.
+ */
+static uint64_t nmdk_read_timer(void)
+{
+	return nmdk_cycle - readl(mtu_base + MTU_VAL(0));
+}
+
+static struct clocksource nmdk_clksrc = {
+	.read	= nmdk_read_timer,
+	.shift	= 20,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+static void nmdk_timer_reset(void)
+{
+	u32 cr;
+
+	/* Disable */
+	writel(0, mtu_base + MTU_CR(0)); /* off */
+
+	/* configure load and background-load, and fire it up */
+	writel(nmdk_cycle, mtu_base + MTU_LR(0));
+	writel(nmdk_cycle, mtu_base + MTU_BGLR(0));
+
+	cr = clk_prescale | MTU_CRn_32BITS;
+	writel(cr, mtu_base + MTU_CR(0));
+	writel(cr | MTU_CRn_ENA, mtu_base + MTU_CR(0));
+}
+
+static int nmdk_mtu_probe(struct device_d *dev)
+{
+	static struct clk *mtu_clk;
+	u32 rate;
+	int ret;
+
+	mtu_clk = clk_get(dev, NULL);
+	if (IS_ERR(mtu_clk)) {
+		ret = PTR_ERR(mtu_clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(mtu_clk);
+	if (ret < 0) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(mtu_clk);
+		return ret;
+	}
+
+	rate = clk_get_rate(mtu_clk);
+	if (rate > 32000000) {
+		rate /= 16;
+		clk_prescale = MTU_CRn_PRESCALE_16;
+	} else {
+		clk_prescale = MTU_CRn_PRESCALE_1;
+	}
+
+	nmdk_cycle = (rate + 1000 / 2) / 1000;
+
+	/* Save global pointer to mtu, used by functions above */
+	mtu_base = dev_request_mem_region(dev, 0);
+
+	/* Init the timer and register clocksource */
+	nmdk_timer_reset();
+
+	nmdk_clksrc.mult = clocksource_hz2mult(rate, nmdk_clksrc.shift);
+
+	init_clock(&nmdk_clksrc);
+
+	return 0;
+}
+
+static struct driver_d nmdk_mtu_driver = {
+	.name = "nomadik_mtu",
+	.probe = nmdk_mtu_probe,
+};
+
+static int nmdk_mtu_init(void)
+{
+	return platform_driver_register(&nmdk_mtu_driver);
+}
+coredevice_initcall(nmdk_mtu_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
