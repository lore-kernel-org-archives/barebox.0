Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNbq5-0001rt-Kn
 for barebox@lists.infradead.org; Mon, 25 Jan 2016 07:45:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BF98EA00358
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 08:45:17 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 25 Jan 2016 08:44:13 +0100
Message-Id: <1453707854-34145-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 1/2] arm: am33xx: Move function to read from Master OSC
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Move the function to read the Master OSC speed from
the SYSBOOT Configuration Pin for reuse.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
- Return kHz instead of Hz to be able to use a 32bit type

 arch/arm/mach-omap/am33xx_clock.c              | 27 ++++++++++++++++++++++++++
 arch/arm/mach-omap/dmtimer.c                   | 20 +++----------------
 arch/arm/mach-omap/include/mach/am33xx-clock.h |  1 +
 3 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 6d8adde..3ed1d52 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -318,3 +318,30 @@ void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
 	/* Enable the required peripherals */
 	am33xx_enable_per_clocks();
 }
+
+/*
+ * Return the OSC clock value from SYSBOOT pins in kHz.
+ */
+int am33xx_get_osc_clock(void)
+{
+	int osc;
+	u32 sysboot;
+
+	sysboot = (readl(AM33XX_CTRL_STATUS) >> 22) & 3;
+	switch (sysboot) {
+	case 0:
+		osc = 19200;
+		break;
+	case 1:
+		osc = 24000;
+		break;
+	case 2:
+		osc = 25000;
+		break;
+	case 3:
+		osc = 26000;
+		break;
+	}
+
+	return osc;
+}
diff --git a/arch/arm/mach-omap/dmtimer.c b/arch/arm/mach-omap/dmtimer.c
index 56adda0..e223b8c 100644
--- a/arch/arm/mach-omap/dmtimer.c
+++ b/arch/arm/mach-omap/dmtimer.c
@@ -31,6 +31,7 @@
 #include <init.h>
 #include <io.h>
 #include <mach/am33xx-silicon.h>
+#include <mach/am33xx-clock.h>
 
 #include <stdio.h>
 
@@ -82,24 +83,9 @@ static struct clocksource dmtimer_cs = {
 static int dmtimer_init(void)
 {
 	u64 clk_speed;
-	int sysboot;
-
-	sysboot = (readl(AM33XX_CTRL_STATUS) >> 22) & 3;
-	switch (sysboot) {
-	case 0:
-		clk_speed = 19200000;
-		break;
-	case 1:
-		clk_speed = 24000000;
-		break;
-	case 2:
-		clk_speed = 25000000;
-		break;
-	case 3:
-		clk_speed = 26000000;
-		break;
-	}
 
+	clk_speed = am33xx_get_osc_clock();
+	clk_speed *= 1000;
 	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
 
 	/* Enable counter */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 2d6a727..b9dcebd 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -185,5 +185,6 @@
 
 void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M);
 void am33xx_enable_ddr_clocks(void);
+int am33xx_get_osc_clock(void);
 
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
