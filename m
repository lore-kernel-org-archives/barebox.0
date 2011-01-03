Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLd-0003WQ-Vl
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:23 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EPI77012751
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:20 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:55 +0530
Message-Id: <1294064695-10865-9-git-send-email-premi@ti.com>
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
Subject: [PATCH 8/8] omap3: Define GFX_DIV values for OMAP34xx and OMAP36xx
To: barebox@lists.infradead.org

This patch updates the clock dividers for the graphics
processor.

It is based on commit:
    c4e1d9b718b65436e30422506f43fa4eb21069d3
    at http://arago-project.org/git/projects/?p=u-boot-omap3.git

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h |    3 ++-
 arch/arm/mach-omap/omap3_clock.c              |    2 +-
 arch/arm/mach-omap/omap3_clock_core.S         |    2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index cccb0da..10566e1 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -108,7 +108,8 @@
 #define CORE_FUSB_DIV		2        /* 41.5MHz: */
 #define CORE_L4_DIV		2        /*  83MHz : L4 */
 #define CORE_L3_DIV		2        /* 166MHz : L3 {DDR} */
-#define GFX_DIV			2        /*  83MHz : CM_CLKSEL_GFX */
+#define GFX_DIV_34X		3        /*  96MHz : CM_CLKSEL_GFX (OMAP34XX) */
+#define GFX_DIV_36X		5        /* 200MHz : CM_CLKSEL_GFX (OMAP36XX) */
 #define WKUP_RSM		2        /* 41.5MHz: CM_CLKSEL_WKUP */
 
 /* PER DPLL */
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 16cbae9..3a0ab24 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -192,7 +192,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 		sr32(CM_REG(CLKSEL_CORE), 4, 2, CORE_FUSB_DIV);
 		sr32(CM_REG(CLKSEL_CORE), 2, 2, CORE_L4_DIV);
 		sr32(CM_REG(CLKSEL_CORE), 0, 2, CORE_L3_DIV);
-		sr32(CM_REG(CLKSEL_GFX), 0, 3, GFX_DIV);
+		sr32(CM_REG(CLKSEL_GFX), 0, 3, GFX_DIV_34X);
 		sr32(CM_REG(CLKSEL_WKUP), 1, 2, WKUP_RSM);
 
 		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index eb13c2f..c8d04bb 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -194,7 +194,7 @@ pll_div_val3:
 pll_div_add4:
     .word CM_CLKSEL_GFX
 pll_div_val4:
-    .word (GFX_DIV << 0)
+    .word GFX_DIV_34X
 pll_div_add5:
     .word CM_CLKSEL1_EMU
 pll_div_val5:
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
