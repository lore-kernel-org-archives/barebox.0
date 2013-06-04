Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ujlgl-0004V9-DB
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 07:29:55 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id B610F7D4421
 for <barebox@lists.infradead.org>; Tue,  4 Jun 2013 09:29:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  4 Jun 2013 09:29:18 +0200
Message-Id: <1370330963-3610-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/6] tegra: change clocksource driver to be more lowlevel
To: barebox@lists.infradead.org

In order to properly bring up the system PLLs we need a reliable
clocksource. To break the circular dependency between the clocksource
and the CAR driver, get the OSC frequency with a lowlevel function.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 23 +++++++++++++++++++++++
 arch/arm/mach-tegra/tegra20-timer.c         | 16 +++-------------
 2 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index b7c01c0..071416f 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -142,5 +142,28 @@ static inline long tegra20_get_debuguart_base(void)
 	return uart_id_to_base[id];
 }
 
+#define CRC_OSC_CTRL			0x050
+#define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
+#define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
+
+static inline unsigned int tegra_get_osc_clock(void)
+{
+	u32 osc_ctrl = readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL);
+
+	switch ((osc_ctrl & CRC_OSC_CTRL_OSC_FREQ_MASK) >>
+		CRC_OSC_CTRL_OSC_FREQ_SHIFT) {
+	case 0:
+		return 13000000;
+	case 1:
+		return 19200000;
+	case 2:
+		return 12000000;
+	case 3:
+		return 26000000;
+	default:
+		return 0;
+	}
+}
+
 /* reset vector for the main CPU complex */
 void tegra_maincomplex_entry(void);
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index aafbfd4..2b32647 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <mach/lowlevel.h>
 
 /* register definitions */
 #define TIMERUS_CNTR_1US	0x10
@@ -43,8 +44,6 @@ static struct clocksource cs = {
 
 static int tegra20_timer_probe(struct device_d *dev)
 {
-	struct clk *timer_clk;
-	unsigned long rate;
 	u32 reg;
 
 	/* use only one timer */
@@ -57,22 +56,13 @@ static int tegra20_timer_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	timer_clk = clk_get(dev, NULL);
-	if (!timer_clk) {
-		dev_err(dev, "could not get clock\n");
-		return -ENODEV;
-	}
-
-	clk_enable(timer_clk);
-
 	/*
 	 * calibrate timer to run at 1MHz
 	 * TIMERUS_USEC_CFG selects the scale down factor with bits [0:7]
 	 * representing the divisor and bits [8:15] representing the dividend
 	 * each in n+1 form.
 	 */
-	rate = clk_get_rate(timer_clk);
-	switch (rate) {
+	switch (tegra_get_osc_clock()) {
 	case 12000000:
 		reg = 0x000b;
 		break;
@@ -116,4 +106,4 @@ static int tegra20_timer_init(void)
 {
 	return platform_driver_register(&tegra20_timer_driver);
 }
-coredevice_initcall(tegra20_timer_init);
+core_initcall(tegra20_timer_init);
-- 
1.8.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
