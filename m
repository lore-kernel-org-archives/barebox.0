Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLi-0003W0-O4
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:28 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EPCGh031340
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:19 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:53 +0530
Message-Id: <1294064695-10865-7-git-send-email-premi@ti.com>
In-Reply-To: <1294064695-10865-1-git-send-email-premi@ti.com>
References: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 6/8] omap36x: Perform basic clock initialization
To: barebox@lists.infradead.org

This patch adds the basic clock initizlization for OMAP36XX.

Portion of this patch is based on commit:
    29587220909e639cda4fb5a35cb5bf33aba242b9
    at http://arago-project.org/git/projects/?p=x-load-omap3.git

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/omap3_clock.c |   32 ++++++++++++++++++++++++++------
 1 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 492e309..1668369 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -554,6 +554,7 @@ static void init_iva_dpll_36x(u32 cpu_rev, u32 clk_sel)
 void prcm_init(void)
 {
 	u32 osc_clk = 0, sys_clkin_sel = 0;
+	u32 cpu_type = get_cpu_type();
 	u32 cpu_rev = get_cpu_rev();
 	u32 clk_index;
 
@@ -565,8 +566,15 @@ void prcm_init(void)
 	/* set input crystal speed */
 	sr32(PRM_REG(CLKSEL), 0, 3, sys_clkin_sel);
 
-	/* If the input clock is greater than 19.2M always divide/2 */
-	if (sys_clkin_sel > 2) {
+	/*
+	 * OMAP3430:
+	 *	If the input clock is greater than 19.2M always divide/2
+	 * OMAP3630:
+	 *	DDR corruption was observed on exit from OFF mode, when
+	 *	sys clock is lower than 26M. As workaround, it is maintained
+	 *	at 26M.
+	 */
+	if ((cpu_type != CPU_3630) && (sys_clkin_sel > 2)) {
 		/* input clock divider */
 		sr32(PRM_REG(CLKSRC_CTRL), 6, 2, 2);
 		clk_index = sys_clkin_sel / 2;
@@ -582,10 +590,22 @@ void prcm_init(void)
 	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOW_POWER_BYPASS);
 	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_MPU), LDELAY);
 
-	init_core_dpll_34x(cpu_rev, clk_index);
-	init_per_dpll_34x(cpu_rev, clk_index);
-	init_mpu_dpll_34x(cpu_rev, clk_index);
-	init_iva_dpll_34x(cpu_rev, clk_index);
+	if (cpu_type == CPU_3430) {
+		init_core_dpll_34x(cpu_rev, clk_index);
+		init_per_dpll_34x(cpu_rev, clk_index);
+		init_mpu_dpll_34x(cpu_rev, clk_index);
+		init_iva_dpll_34x(cpu_rev, clk_index);
+	}
+	else if (cpu_type == CPU_3630) {
+		init_core_dpll_36x(cpu_rev, clk_index);
+		init_per_dpll_36x(cpu_rev, clk_index);
+		init_mpu_dpll_36x(cpu_rev, clk_index);
+		init_iva_dpll_36x(cpu_rev, clk_index);
+	}
+	else {
+		/* Unknown CPU */
+		hang();
+	}
 
 	/*
 	 * Clock configuration complete. Lock MPU PLL.
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
