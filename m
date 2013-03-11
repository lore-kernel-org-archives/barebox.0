Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0Q-0005kF-Sd
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:26:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:35 +0400
Message-Id: <1362994003-22653-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 05/13] ARM: clps711x: Using COMMON_CLK
To: barebox@lists.infradead.org

This patch adds support for COMMON_CLK API for CLPS711X targets.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig                 |    1 +
 arch/arm/mach-clps711x/clock.c   |  109 ++++++++++++++++++++++----------------
 arch/arm/mach-clps711x/devices.c |    4 ++
 3 files changed, 68 insertions(+), 46 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c608454..6463746 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -40,6 +40,7 @@ config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
 	select CLKDEV_LOOKUP
 	select CLOCKSOURCE_CLPS711X
+	select COMMON_CLK
 	select CPU_32v4T
 
 config ARCH_EP93XX
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index e957662..7658c9a 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -11,6 +11,7 @@
 #include <init.h>
 #include <sizes.h>
 #include <asm/io.h>
+#include <linux/clk.h>
 #include <linux/clkdev.h>
 
 #include <mach/clps711x.h>
@@ -18,32 +19,37 @@
 #define CLPS711X_OSC_FREQ	3686400
 #define CLPS711X_EXT_FREQ	13000000
 
-static struct clk {
-	unsigned long	rate;
-} uart_clk, bus_clk, timer_clk;
+enum clps711x_clks {
+	dummy, cpu, bus, uart, timer_hf, timer_lf, tc1, tc2, clk_max
+};
 
-unsigned long clk_get_rate(struct clk *clk)
-{
-	return clk->rate;
-}
-EXPORT_SYMBOL(clk_get_rate);
+static struct {
+	const char	*name;
+	struct clk	*clk;
+} clks[clk_max] = {
+	{ "dummy", },
+	{ "cpu", },
+	{ "bus", },
+	{ "uart", },
+	{ "timer_hf", },
+	{ "timer_lf", },
+	{ "tc1", },
+	{ "tc2", },
+};
 
-int clk_enable(struct clk *clk)
-{
-	/* Do nothing */
-	return 0;
-}
-EXPORT_SYMBOL(clk_enable);
+static const char *tc_sel_clks[] = {
+	"timer_lf",
+	"timer_hf",
+};
 
-void clk_disable(struct clk *clk)
+static __init void clps711x_clk_register(enum clps711x_clks id)
 {
-	/* Do nothing */
+	clk_register_clkdev(clks[id].clk, clks[id].name, NULL);
 }
-EXPORT_SYMBOL(clk_disable);
 
-static int clocks_init(void)
+static __init int clps711x_clk_init(void)
 {
-	int pll, cpu;
+	unsigned int f_cpu, f_bus, f_uart, f_timer_hf, f_timer_lf, pll;
 	u32 tmp;
 
 	tmp = readl(PLLR) >> 24;
@@ -54,57 +60,68 @@ static int clocks_init(void)
 
 	tmp = readl(SYSFLG2);
 	if (tmp & SYSFLG2_CKMODE) {
-		cpu = CLPS711X_EXT_FREQ;
-		bus_clk.rate = CLPS711X_EXT_FREQ;
+		f_cpu = CLPS711X_EXT_FREQ;
+		f_bus = CLPS711X_EXT_FREQ;
 	} else {
-		cpu = pll;
-		if (cpu >= 36864000)
-			bus_clk.rate = cpu / 2;
+		f_cpu = pll;
+		if (f_cpu >= 36864000)
+			f_bus = f_cpu / 2;
 		else
-			bus_clk.rate = 36864000 / 2;
+			f_bus = 36864000 / 2;
 	}
 
-	uart_clk.rate = DIV_ROUND_CLOSEST(bus_clk.rate, 10);
+	f_uart = f_bus / 10;
 
 	if (tmp & SYSFLG2_CKMODE) {
 		tmp = readw(SYSCON2);
 		if (tmp & SYSCON2_OSTB)
-			timer_clk.rate = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 26);
+			f_timer_hf = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 26);
 		else
-			timer_clk.rate = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 24);
+			f_timer_hf = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 24);
 	} else
-		timer_clk.rate = DIV_ROUND_CLOSEST(cpu, 144);
+		f_timer_hf = DIV_ROUND_CLOSEST(f_cpu, 144);
 
+	f_timer_lf = DIV_ROUND_CLOSEST(f_timer_hf, 256);
+
+	/* Turn timers in free running mode */
 	tmp = readl(SYSCON1);
-	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
-	tmp |= SYSCON1_TC2S;	/* High frequency source */
+	tmp &= ~(SYSCON1_TC1M | SYSCON1_TC2M);
 	writel(tmp, SYSCON1);
 
-	return 0;
-}
-core_initcall(clocks_init);
-
-static struct clk_lookup clocks_lookups[] = {
-	CLKDEV_CON_ID("bus", &bus_clk),
-	CLKDEV_DEV_ID("clps711x_serial0", &uart_clk),
-	CLKDEV_DEV_ID("clps711x_serial1", &uart_clk),
-	CLKDEV_DEV_ID("clps711x-cs", &timer_clk),
-};
-
-static int clkdev_init(void)
-{
-	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
+	clks[dummy].clk = clk_fixed(clks[dummy].name, 0);
+	clks[cpu].clk = clk_fixed(clks[cpu].name, f_cpu);
+	clks[bus].clk = clk_fixed(clks[bus].name, f_bus);
+	clks[uart].clk = clk_fixed(clks[uart].name, f_uart);
+	clks[timer_hf].clk = clk_fixed(clks[timer_hf].name, f_timer_hf);
+	clks[timer_lf].clk = clk_fixed(clks[timer_lf].name, f_timer_lf);
+	clks[tc1].clk = clk_mux(clks[tc1].name, IOMEM(SYSCON1), 5, 1,
+				tc_sel_clks, ARRAY_SIZE(tc_sel_clks));
+	clks[tc2].clk = clk_mux(clks[tc2].name, IOMEM(SYSCON1), 7, 1,
+				tc_sel_clks, ARRAY_SIZE(tc_sel_clks));
+
+	clps711x_clk_register(dummy);
+	clps711x_clk_register(cpu);
+	clps711x_clk_register(bus);
+	clps711x_clk_register(uart);
+	clps711x_clk_register(timer_hf);
+	clps711x_clk_register(timer_lf);
+	clps711x_clk_register(tc1);
+	clps711x_clk_register(tc2);
 
 	return 0;
 }
-postcore_initcall(clkdev_init);
+postcore_initcall(clps711x_clk_init);
 
 static const char *clps711x_clocksrc_name = "clps711x-cs";
 
 static __init int clps711x_core_init(void)
 {
+	/* Using TC2 in low frequency mode as clocksource */
+	clk_set_parent(clks[tc2].clk, clks[timer_lf].clk);
+	clk_add_alias(NULL, clps711x_clocksrc_name, "tc2", NULL);
 	add_generic_device(clps711x_clocksrc_name, DEVICE_ID_SINGLE, NULL,
 			   TC2D, SZ_2, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 coredevice_initcall(clps711x_core_init);
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 6c760db..6221da3 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -14,6 +14,8 @@
 #include <asm/io.h>
 #include <asm/memory.h>
 
+#include <linux/clk.h>
+
 #include <mach/clps711x.h>
 
 static int clps711x_mem_init(void)
@@ -98,10 +100,12 @@ void clps711x_add_uart(unsigned int id)
 {
 	switch (id) {
 	case 0:
+		clk_add_alias(NULL, "clps711x_serial0", "uart", NULL);
 		add_generic_device_res("clps711x_serial", 0, uart0_resources,
 				       ARRAY_SIZE(uart0_resources), NULL);
 		break;
 	case 1:
+		clk_add_alias(NULL, "clps711x_serial1", "uart", NULL);
 		add_generic_device_res("clps711x_serial", 1, uart1_resources,
 				       ARRAY_SIZE(uart1_resources), NULL);
 		break;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
