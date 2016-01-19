Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLRhk-0007px-Ab
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 08:31:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D16E3A0030E
 for <barebox@lists.infradead.org>; Tue, 19 Jan 2016 09:31:41 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 19 Jan 2016 09:30:53 +0100
Message-Id: <1453192254-8266-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] arm: am33xx: Move function to read from Master OSC
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Move the function to read the Master OSC speed from
the SYSBOOT Configuration Pin for reuse.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/am33xx_clock.c              | 24 ++++++++++++++++++++++++
 arch/arm/mach-omap/dmtimer.c                   | 19 ++-----------------
 arch/arm/mach-omap/include/mach/am33xx-clock.h |  1 +
 3 files changed, 27 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 6d8adde..19aeb59 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -318,3 +318,27 @@ void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
 	/* Enable the required peripherals */
 	am33xx_enable_per_clocks();
 }
+
+u64 am33xx_get_osc_clock(void)
+{
+	u64 osc;
+	u32 sysboot;
+
+	sysboot = (readl(AM33XX_CTRL_STATUS) >> 22) & 3;
+	switch (sysboot) {
+	case 0:
+		osc = 19200000;
+		break;
+	case 1:
+		osc = 24000000;
+		break;
+	case 2:
+		osc = 25000000;
+		break;
+	case 3:
+		osc = 26000000;
+		break;
+	}
+
+	return osc;
+}
diff --git a/arch/arm/mach-omap/dmtimer.c b/arch/arm/mach-omap/dmtimer.c
index 56adda0..7fd4f4d 100644
--- a/arch/arm/mach-omap/dmtimer.c
+++ b/arch/arm/mach-omap/dmtimer.c
@@ -31,6 +31,7 @@
 #include <init.h>
 #include <io.h>
 #include <mach/am33xx-silicon.h>
+#include <mach/am33xx-clock.h>
 
 #include <stdio.h>
 
@@ -82,24 +83,8 @@ static struct clocksource dmtimer_cs = {
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
 	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
 
 	/* Enable counter */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 2d6a727..a458ccd 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -185,5 +185,6 @@
 
 void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M);
 void am33xx_enable_ddr_clocks(void);
+u64 am33xx_get_osc_clock(void);
 
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
