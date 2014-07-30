Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCc7V-0002mQ-Ee
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 22:13:14 +0000
Received: by mail-lb0-f177.google.com with SMTP id s7so1382920lbd.36
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 15:12:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 31 Jul 2014 02:12:41 +0400
Message-Id: <1406758361-17993-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] watchdog: add minimal jz4740 driver
To: barebox@lists.infradead.org

Also move reset_cpu() for jz4755 SoC from platform code
into the new driver code.

At the moment mach-xburst lacks clk support so jz4740 watchdog
driver looks like a template. We can improve jz4740 watchdog
driver in the future after adding clk support

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4755.dtsi                         |  5 ++
 arch/mips/mach-xburst/Kconfig                     |  2 +
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h | 22 -----
 arch/mips/mach-xburst/reset-jz4750.c              | 18 -----
 drivers/watchdog/Kconfig                          |  7 ++
 drivers/watchdog/Makefile                         |  1 +
 drivers/watchdog/jz4740.c                         | 98 +++++++++++++++++++++++
 7 files changed, 113 insertions(+), 40 deletions(-)

diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
index 0e655b6..7184635 100644
--- a/arch/mips/dts/jz4755.dtsi
+++ b/arch/mips/dts/jz4755.dtsi
@@ -8,6 +8,11 @@
 		#size-cells = <1>;
 		ranges;
 
+		wdt: wdt@b0002000 {
+			compatible = "ingenic,jz4740-wdt";
+			reg = <0xb0002000 0x10>;
+		};
+
 		serial0: serial@b0030000 {
 			compatible = "ingenic,jz4740-uart";
 			reg = <0xb0030000 0x20>;
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 706d592..f7b8470 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -6,6 +6,8 @@ config ARCH_TEXT_BASE
 
 config CPU_JZ4755
 	bool
+	select WATCHDOG
+	select WATCHDOG_JZ4740
 
 choice
 	prompt "Board type"
diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
index 7a3daad..396c823 100644
--- a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
+++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
@@ -59,28 +59,6 @@
 #define TCU_OSTCSR_PCK_EN		(1 << 0) /* select pclk as the timer clock input */
 
 /*************************************************************************
- * WDT (WatchDog Timer)
- *************************************************************************/
-#define WDT_TDR		(WDT_BASE + 0x00)
-#define WDT_TCER	(WDT_BASE + 0x04)
-#define WDT_TCNT	(WDT_BASE + 0x08)
-#define WDT_TCSR	(WDT_BASE + 0x0c)
-
-#define WDT_TCSR_PRESCALE_BIT	3
-#define WDT_TCSR_PRESCALE_MASK	(0x7 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE1	(0x0 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE4	(0x1 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE16	(0x2 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE64	(0x3 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE256	(0x4 << WDT_TCSR_PRESCALE_BIT)
- #define WDT_TCSR_PRESCALE1024	(0x5 << WDT_TCSR_PRESCALE_BIT)
-#define WDT_TCSR_EXT_EN		(1 << 2)
-#define WDT_TCSR_RTC_EN		(1 << 1)
-#define WDT_TCSR_PCK_EN		(1 << 0)
-
-#define WDT_TCER_TCEN		(1 << 0)
-
-/*************************************************************************
  * RTC
  *************************************************************************/
 #define RTC_RCR		(RTC_BASE + 0x00) /* RTC Control Register */
diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
index 8f33672..25830f1 100644
--- a/arch/mips/mach-xburst/reset-jz4750.c
+++ b/arch/mips/mach-xburst/reset-jz4750.c
@@ -24,8 +24,6 @@
 #include <io.h>
 #include <mach/jz4750d_regs.h>
 
-#define JZ_EXTAL 24000000
-
 static void __noreturn jz4750d_halt(void)
 {
 	while (1) {
@@ -39,22 +37,6 @@ static void __noreturn jz4750d_halt(void)
 	unreachable();
 }
 
-void __noreturn reset_cpu(ulong addr)
-{
-	__raw_writew(WDT_TCSR_PRESCALE4 | WDT_TCSR_EXT_EN, (u16 *)WDT_TCSR);
-	__raw_writew(0, (u16 *)WDT_TCNT);
-
-	/* reset after 4ms */
-	__raw_writew(JZ_EXTAL / 1000, (u16 *)WDT_TDR);
-	/* enable wdt clock */
-	__raw_writel(TCU_TSCR_WDTSC, (u32 *)TCU_TSCR);
-	/* start wdt */
-	__raw_writeb(WDT_TCER_TCEN, (u8 *)WDT_TCER);
-
-	unreachable();
-}
-EXPORT_SYMBOL(reset_cpu);
-
 void __noreturn poweroff()
 {
 	u32 ctrl;
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 2e2900c..7f7b02e 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -21,4 +21,11 @@ config WATCHDOG_IMX
 	depends on ARCH_IMX
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
+
+config WATCHDOG_JZ4740
+	bool "Ingenic jz4740 SoC hardware watchdog"
+	depends on MACH_MIPS_XBURST
+	help
+	  Hardware driver for the built-in watchdog timer on Ingenic jz4740 SoCs.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index f522b88..865fc47 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
+obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
new file mode 100644
index 0000000..ac1ff42
--- /dev/null
+++ b/drivers/watchdog/jz4740.c
@@ -0,0 +1,98 @@
+/*
+ *  JZ4740 Watchdog driver
+ *
+ *  Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ *  Based on jz4740_wdt.c from linux-3.15.
+ *
+ *  Copyright (C) 2010, Paul Cercueil <paul@crapouillou.net>
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under  the terms of the GNU General  Public License as published by the
+ *  Free Software Foundation;  either version 2 of the License, or (at your
+ *  option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#define JZ_REG_WDT_TIMER_DATA     0x0
+#define JZ_REG_WDT_COUNTER_ENABLE 0x4
+#define JZ_REG_WDT_TIMER_COUNTER  0x8
+#define JZ_REG_WDT_TIMER_CONTROL  0xC
+
+#define JZ_WDT_CLOCK_PCLK 0x1
+#define JZ_WDT_CLOCK_RTC  0x2
+#define JZ_WDT_CLOCK_EXT  0x4
+
+#define JZ_WDT_CLOCK_DIV_SHIFT   3
+
+#define JZ_WDT_CLOCK_DIV_1    (0 << JZ_WDT_CLOCK_DIV_SHIFT)
+#define JZ_WDT_CLOCK_DIV_4    (1 << JZ_WDT_CLOCK_DIV_SHIFT)
+#define JZ_WDT_CLOCK_DIV_16   (2 << JZ_WDT_CLOCK_DIV_SHIFT)
+#define JZ_WDT_CLOCK_DIV_64   (3 << JZ_WDT_CLOCK_DIV_SHIFT)
+#define JZ_WDT_CLOCK_DIV_256  (4 << JZ_WDT_CLOCK_DIV_SHIFT)
+#define JZ_WDT_CLOCK_DIV_1024 (5 << JZ_WDT_CLOCK_DIV_SHIFT)
+
+#define JZ_EXTAL 24000000
+
+struct jz4740_wdt_drvdata {
+	void __iomem *base;
+};
+
+static struct jz4740_wdt_drvdata *reset_wd;
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	if (reset_wd) {
+		void __iomem *base = reset_wd->base;
+
+		writew(JZ_WDT_CLOCK_DIV_4 | JZ_WDT_CLOCK_EXT,
+				base + JZ_REG_WDT_TIMER_CONTROL);
+		writew(0, base + JZ_REG_WDT_TIMER_COUNTER);
+
+		/* reset after 4ms */
+		writew(JZ_EXTAL / 1000, base + JZ_REG_WDT_TIMER_DATA);
+
+		/* start wdt */
+		writeb(0x1, base + JZ_REG_WDT_COUNTER_ENABLE);
+
+		mdelay(1000);
+	} else
+		pr_err("%s: can't reset cpu\n", __func__);
+
+	hang();
+}
+EXPORT_SYMBOL(reset_cpu);
+
+static int jz4740_wdt_probe(struct device_d *dev)
+{
+	struct jz4740_wdt_drvdata *priv;
+
+	priv = xzalloc(sizeof(struct jz4740_wdt_drvdata));
+	priv->base = dev_request_mem_region(dev, 0);
+
+	if (!reset_wd)
+		reset_wd = priv;
+
+	dev->priv = priv;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id jz4740_wdt_dt_ids[] = {
+	{
+		.compatible = "ingenic,jz4740-wdt",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d jz4740_wdt_driver = {
+	.name   = "jz4740-wdt",
+	.probe  = jz4740_wdt_probe,
+	.of_compatible = DRV_OF_COMPAT(jz4740_wdt_dt_ids),
+};
+device_platform_driver(jz4740_wdt_driver);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
