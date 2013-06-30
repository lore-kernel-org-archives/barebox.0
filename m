Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOqd-0002Z5-HI
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:07:52 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id A724418B4265
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:52 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:44 +0200
Message-Id: <1372626529-23443-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
References: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 2/7] tegra: change clocksource driver to be more lowlevel
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
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
