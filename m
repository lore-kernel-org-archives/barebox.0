Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOHBk-0003VZ-Qn
 for barebox@lists.infradead.org; Sat, 16 Jul 2016 04:26:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 16 Jul 2016 07:26:20 +0300
Message-Id: <1468643181-10784-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1468643181-10784-1-git-send-email-shc_work@mail.ru>
References: <1468643181-10784-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: clps711x: Sync CLK susbsystem with kernel
To: barebox@lists.infradead.org

Refactoring of CLPS711X CLK driver code to be compatible with
the current kernel. This change a bit makes easy of initializing
devices using CLKs.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/clock.c   | 70 ++++++++++++++--------------------------
 arch/arm/mach-clps711x/devices.c |  4 ---
 2 files changed, 24 insertions(+), 50 deletions(-)

diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 6f447f7..4d6403b 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ * Copyright (C) 2012-2016 Alexander Shiyan <shc_work@mail.ru>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -9,42 +9,27 @@
 
 #include <common.h>
 #include <init.h>
-#include <linux/sizes.h>
 #include <asm/io.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
+#include <linux/sizes.h>
+#include <dt-bindings/clock/clps711x-clock.h>
 
 #include <mach/clps711x.h>
 
 #define CLPS711X_OSC_FREQ	3686400
 #define CLPS711X_EXT_FREQ	13000000
 
-enum clps711x_clks {
-	dummy, cpu, bus, uart, timer_hf, timer_lf, tc1, tc2, clk_max
-};
+static struct clk *clks[CLPS711X_CLK_MAX];
 
-static struct {
-	const char	*name;
-	struct clk	*clk;
-} clks[clk_max] = {
-	{ "dummy", },
-	{ "cpu", },
-	{ "bus", },
-	{ "uart", },
-	{ "timer_hf", },
-	{ "timer_lf", },
-	{ "tc1", },
-	{ "tc2", },
-};
-
-static const char *tc_sel_clks[] = {
-	"timer_lf",
-	"timer_hf",
+static struct clk_div_table tdiv_tbl[] = {
+	{ .val = 0, .div = 256, },
+	{ .val = 1, .div = 1, },
 };
 
 static __init int clps711x_clk_init(void)
 {
-	unsigned int f_cpu, f_bus, f_uart, f_timer_hf, f_timer_lf, pll;
+	unsigned int f_cpu, f_bus, f_uart, f_timer_ref, pll;
 	u32 tmp;
 
 	tmp = readl(PLLR) >> 24;
@@ -70,45 +55,38 @@ static __init int clps711x_clk_init(void)
 	if (tmp & SYSFLG2_CKMODE) {
 		tmp = readw(SYSCON2);
 		if (tmp & SYSCON2_OSTB)
-			f_timer_hf = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 26);
+			f_timer_ref = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 26);
 		else
-			f_timer_hf = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 24);
+			f_timer_ref = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 24);
 	} else
-		f_timer_hf = DIV_ROUND_CLOSEST(f_cpu, 144);
-
-	f_timer_lf = DIV_ROUND_CLOSEST(f_timer_hf, 256);
+		f_timer_ref = DIV_ROUND_CLOSEST(f_cpu, 144);
 
 	/* Turn timers in free running mode */
 	tmp = readl(SYSCON1);
 	tmp &= ~(SYSCON1_TC1M | SYSCON1_TC2M);
 	writel(tmp, SYSCON1);
 
-	clks[dummy].clk = clk_fixed(clks[dummy].name, 0);
-	clks[cpu].clk = clk_fixed(clks[cpu].name, f_cpu);
-	clks[bus].clk = clk_fixed(clks[bus].name, f_bus);
-	clks[uart].clk = clk_fixed(clks[uart].name, f_uart);
-	clks[timer_hf].clk = clk_fixed(clks[timer_hf].name, f_timer_hf);
-	clks[timer_lf].clk = clk_fixed(clks[timer_lf].name, f_timer_lf);
-	clks[tc1].clk = clk_mux(clks[tc1].name, IOMEM(SYSCON1), 5, 1,
-				tc_sel_clks, ARRAY_SIZE(tc_sel_clks), 0);
-	clks[tc2].clk = clk_mux(clks[tc2].name, IOMEM(SYSCON1), 7, 1,
-				tc_sel_clks, ARRAY_SIZE(tc_sel_clks), 0);
+	clks[CLPS711X_CLK_DUMMY] = clk_fixed("dummy", 0);
+	clks[CLPS711X_CLK_CPU] = clk_fixed("cpu", f_cpu);
+	clks[CLPS711X_CLK_BUS] = clk_fixed("bus", f_bus);
+	clks[CLPS711X_CLK_UART] = clk_fixed("uart", f_uart);
+	clks[CLPS711X_CLK_TIMERREF] = clk_fixed("timer_ref", f_timer_ref);
+	clks[CLPS711X_CLK_TIMER1] = clk_divider_table("timer1", "timer_ref",
+		IOMEM(SYSCON1), 5, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
+	clks[CLPS711X_CLK_TIMER2] = clk_divider_table("timer2", "timer_ref",
+		IOMEM(SYSCON1), 7, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
 
-	for (tmp = 0; tmp < clk_max; tmp++)
-		clk_register_clkdev(clks[tmp].clk, clks[tmp].name, NULL);
+	clkdev_add_physbase(clks[CLPS711X_CLK_UART], UARTDR1, NULL);
+	clkdev_add_physbase(clks[CLPS711X_CLK_UART], UARTDR2, NULL);
+	clkdev_add_physbase(clks[CLPS711X_CLK_TIMER2], TC2D, NULL);
 
 	return 0;
 }
 postcore_initcall(clps711x_clk_init);
 
-static const char *clps711x_clocksrc_name = "clps711x-cs";
-
 static __init int clps711x_core_init(void)
 {
-	/* Using TC2 in low frequency mode as clocksource */
-	clk_set_parent(clks[tc2].clk, clks[timer_lf].clk);
-	clk_add_alias(NULL, clps711x_clocksrc_name, "tc2", NULL);
-	add_generic_device(clps711x_clocksrc_name, DEVICE_ID_SINGLE, NULL,
+	add_generic_device("clps711x-cs", DEVICE_ID_SINGLE, NULL,
 			   TC2D, SZ_2, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index b6647de..6957431 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -14,8 +14,6 @@
 #include <asm/io.h>
 #include <asm/memory.h>
 
-#include <linux/clk.h>
-
 #include <mach/clps711x.h>
 
 static int clps711x_mem_init(void)
@@ -62,12 +60,10 @@ void clps711x_add_uart(unsigned int id)
 {
 	switch (id) {
 	case 0:
-		clk_add_alias(NULL, "clps711x-uart0", "uart", NULL);
 		add_generic_device_res("clps711x-uart", 0, uart0_resources,
 				       ARRAY_SIZE(uart0_resources), NULL);
 		break;
 	case 1:
-		clk_add_alias(NULL, "clps711x-uart1", "uart", NULL);
 		add_generic_device_res("clps711x-uart", 1, uart1_resources,
 				       ARRAY_SIZE(uart1_resources), NULL);
 		break;
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
