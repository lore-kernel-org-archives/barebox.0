Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgLea-00020g-Py
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 17:51:53 +0000
Received: from alto.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:9d4])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mgr@pengutronix.de>) id 1OgLeZ-0002tP-Fb
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 19:51:51 +0200
Received: from mgr by alto.hi.pengutronix.de with local (Exim 4.72)
	(envelope-from <mgr@pengutronix.de>) id 1OgLeZ-00043w-EU
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 19:51:51 +0200
Date: Tue, 3 Aug 2010 19:51:51 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20100803175151.GA15605@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] omap clock: bugfix remove silicon offset sil_index
To: barebox@lists.infradead.org

In omap3_clock_core.S we have just clock values for the ES2
revision, so we should not set any silicon index.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-omap/omap3_clock.c |   10 +---------
 1 files changed, 1 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index f1b3b07..13e8729 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -148,7 +148,7 @@ void prcm_init(void)
 {
 	int xip_safe;
 	u32 osc_clk = 0, sys_clkin_sel = 0;
-	u32 clk_index, sil_index;
+	u32 clk_index, sil_index = 0;
 	struct dpll_param *dpll_param_p;
 #ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
 	int p0, p1, p2, p3;
@@ -176,14 +176,6 @@ void prcm_init(void)
 		clk_index = sys_clkin_sel;
 	}
 
-	/* The DPLL tables are defined according to sysclk value and
-	 * silicon revision. The clk_index value will be used to get
-	 * the values for that input sysclk from the DPLL param table
-	 * and sil_index will get the values for that SysClk for the
-	 * appropriate silicon rev.
-	 */
-	if (get_cpu_rev() >= CPU_ES2)
-		sil_index = 1;
 	/* Unlock MPU DPLL (slows things down, and needed later) */
 	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOW_POWER_BYPASS);
 	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_MPU), LDELAY);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
