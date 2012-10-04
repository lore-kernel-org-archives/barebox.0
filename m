Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfTU-0002K0-Ss
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:04:01 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6E1A5FF8AAA
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 09:13:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 09:01:33 +0200
Message-Id: <1349334093-9769-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: add generic smp twd timer
To: barebox@lists.infradead.org

on Cortex A9 and Cortex A5 we have a generic timer which we can use as
clocksource

Limit the timer frequency to < 25Mhz

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/Kconfig           |    3 ++
 arch/arm/cpu/Makefile          |    1 +
 arch/arm/cpu/smp_twd.c         |   93 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/smp_twd.h |   23 ++++++++++
 4 files changed, 120 insertions(+)
 create mode 100644 arch/arm/cpu/smp_twd.c
 create mode 100644 arch/arm/include/asm/smp_twd.h

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f55e862..a7a1cdb 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -94,3 +94,6 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
+config ARM_SMP_TWD
+	bool
+	depends on CPU_V7
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f7ab276..c5cbdfb 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -18,5 +18,6 @@ pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
+obj-$(CONFIG_ARM_SMP_TWD) += smp_twd.o
 
 pbl-y += start-pbl.o
diff --git a/arch/arm/cpu/smp_twd.c b/arch/arm/cpu/smp_twd.c
new file mode 100644
index 0000000..3825e6b
--- /dev/null
+++ b/arch/arm/cpu/smp_twd.c
@@ -0,0 +1,93 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPL v2
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <driver.h>
+#include <errno.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <asm/smp_twd.h>
+
+static __iomem void *twd_base;
+static struct clk *twd_clk;
+
+static uint64_t smp_twd_read(void)
+{
+	return ~readl(twd_base + TWD_TIMER_COUNTER);
+}
+
+static struct clocksource smp_twd_clksrc = {
+	.read	= smp_twd_read,
+	.shift	= 20,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+#define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
+
+void __clocksource_updatefreq_scale(struct clocksource *cs, u32 scale, u32 freq);
+
+static int smp_twd_probe(struct device_d *dev)
+{
+	u32 tick_rate;
+	u32 val;
+	int ret;
+	u32 presc = 0;
+
+	twd_clk = clk_get_sys("smp_twd", NULL);
+	if (IS_ERR(twd_clk)) {
+		ret = PTR_ERR(twd_clk);
+		pr_err("smp_twd: clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(twd_clk);
+	if (ret < 0) {
+		pr_err("smp_twd: clock failed to enable: %d\n", ret);
+		clk_put(twd_clk);
+		return ret;
+	}
+
+	twd_base = dev_request_mem_region(dev, 0);
+
+	tick_rate = clk_get_rate(twd_clk);
+	if (tick_rate > SMP_TWD_MAX_FREQ) {
+		presc = tick_rate / SMP_TWD_MAX_FREQ;
+		if (presc)
+			presc--;
+		presc = min((u32)0xff, presc);
+		tick_rate /= presc + 1;
+	}
+
+	val = TWD_TIMER_CONTROL_PRESC(presc) |
+	      TWD_TIMER_CONTROL_PERIODIC;
+	writel(val, twd_base + TWD_TIMER_CONTROL);
+
+	writel(0xffffffff, twd_base + TWD_TIMER_LOAD);
+
+	val = readl(twd_base + TWD_TIMER_CONTROL);
+	val |= TWD_TIMER_CONTROL_ENABLE;
+	writel(val, twd_base + TWD_TIMER_CONTROL);
+
+	smp_twd_clksrc.mult = clocksource_hz2mult(tick_rate, smp_twd_clksrc.shift);
+
+	init_clock(&smp_twd_clksrc);
+
+	return 0;
+}
+
+static struct driver_d smp_twd_driver = {
+	.name = "smp-twd",
+	.probe = smp_twd_probe,
+};
+
+static int smp_twd_init(void)
+{
+	return platform_driver_register(&smp_twd_driver);
+}
+coredevice_initcall(smp_twd_init);
diff --git a/arch/arm/include/asm/smp_twd.h b/arch/arm/include/asm/smp_twd.h
new file mode 100644
index 0000000..d461d0b
--- /dev/null
+++ b/arch/arm/include/asm/smp_twd.h
@@ -0,0 +1,23 @@
+#ifndef __ASMARM_SMP_TWD_H
+#define __ASMARM_SMP_TWD_H
+
+#define TWD_TIMER_LOAD			0x00
+#define TWD_TIMER_COUNTER		0x04
+#define TWD_TIMER_CONTROL		0x08
+#define TWD_TIMER_INTSTAT		0x0C
+
+#define TWD_WDOG_LOAD			0x20
+#define TWD_WDOG_COUNTER		0x24
+#define TWD_WDOG_CONTROL		0x28
+#define TWD_WDOG_INTSTAT		0x2C
+#define TWD_WDOG_RESETSTAT		0x30
+#define TWD_WDOG_DISABLE		0x34
+
+#define TWD_TIMER_CONTROL_ENABLE	(1 << 0)
+#define TWD_TIMER_CONTROL_ONESHOT	(0 << 1)
+#define TWD_TIMER_CONTROL_PERIODIC	(1 << 1)
+#define TWD_TIMER_CONTROL_IT_ENABLE	(1 << 2)
+
+#define TWD_TIMER_CONTROL_PRESC(x)	(((x) & 0xff) << 8)
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
