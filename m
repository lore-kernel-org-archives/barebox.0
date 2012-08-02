Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Swt4U-0003LV-Sm
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:56:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0E32DBF0E7
 for <barebox@lists.infradead.org>; Thu,  2 Aug 2012 12:56:01 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 2 Aug 2012 12:55:59 +0200
Message-Id: <1343904959-27645-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20120727151229.GE30009@pengutronix.de>
References: <20120727151229.GE30009@pengutronix.de>
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
Subject: [PATCH] OMAP4: use writel and readl
To: barebox@lists.infradead.org

replace *(volatile int*) bei writel and readl

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/omap4_generic.c |   34 ++++++++++++++++++----------------
 1 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index a368759..617d786 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -268,7 +268,9 @@ int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
 
 static void reset_phy(unsigned int base)
 {
-	*(volatile int*)(base + IODFT_TLGC) |= (1 << 10);
+	unsigned int val = readl(base + IODFT_TLGC);
+	val |= (1 << 10);
+	writel(val, base + IODFT_TLGC);
 }
 
 void omap4_ddr_init(const struct ddr_regs *ddr_regs,
@@ -294,14 +296,14 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	/* Both EMIFs 128 byte interleaved */
 	writel(0x80640300, OMAP44XX_DMM_BASE + DMM_LISA_MAP_0);
 
-	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_2) = 0x00000000;
-	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_3) = 0xFF020100;
+	writel(0x00000000, OMAP44XX_DMM_BASE + DMM_LISA_MAP_2);
+	writel(0xFF020100, OMAP44XX_DMM_BASE + DMM_LISA_MAP_3);
 
 	if (rev >= OMAP4460_ES1_0) {
 		writel(0x80640300, OMAP44XX_MA_BASE + DMM_LISA_MAP_0);
 
-		*(volatile int*)(OMAP44XX_MA_BASE + DMM_LISA_MAP_2) = 0x00000000;
-		*(volatile int*)(OMAP44XX_MA_BASE + DMM_LISA_MAP_3) = 0xFF020100;
+		writel(0x00000000, OMAP44XX_MA_BASE + DMM_LISA_MAP_2);
+		writel(0xFF020100, OMAP44XX_MA_BASE + DMM_LISA_MAP_3);
 	}
 
 	/* DDR needs to be initialised @ 19.2 MHz
@@ -312,10 +314,10 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 
 	/* No IDLE: BUG in SDC */
 	sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x2);
-	while(((*(volatile int*)CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
+	while ((readl(CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
 
-	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x0;
-	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x0;
+	writel(0x0, OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL);
+	writel(0x0, OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL);
 
 	omap4_emif_config(OMAP44XX_EMIF1_BASE, ddr_regs);
 	omap4_emif_config(OMAP44XX_EMIF2_BASE, ddr_regs);
@@ -324,13 +326,13 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	omap4_lock_core_dpll_shadow(core);
 
 	/* Set DLL_OVERRIDE = 0 */
-	*(volatile int*)CM_DLL_CTRL = 0x0;
+	writel(0x0, CM_DLL_CTRL);
 
 	delay(200);
 
 	/* Check for DDR PHY ready for EMIF1 & EMIF2 */
-	while((((*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_STATUS))&(0x04)) != 0x04) \
-	|| (((*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_STATUS))&(0x04)) != 0x04));
+	while (((readl(OMAP44XX_EMIF1_BASE + EMIF_STATUS) & 0x04) != 0x04) \
+		|| ((readl(OMAP44XX_EMIF2_BASE + EMIF_STATUS) & 0x04) != 0x04));
 
 	/* Reprogram the DDR PYHY Control register */
 	/* PHY control values */
@@ -342,9 +344,9 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 
 	/* No IDLE: BUG in SDC */
 	//sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x2);
-	//while(((*(volatile int*)CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
-	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
-	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
+	//while ((readl(CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
+	writel(0x80000000, OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL);
+	writel(0x80000000, OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL);
 
 	if (rev >= OMAP4460_ES1_0) {
 		writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0,
@@ -365,8 +367,8 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	reset_phy(OMAP44XX_EMIF1_BASE);
 	reset_phy(OMAP44XX_EMIF2_BASE);
 
-	*((volatile int *)0x80000000) = 0;
-	*((volatile int *)0x80000080) = 0;
+	writel(0, 0x80000000);
+	writel(0, 0x80000080);
 }
 
 void omap4_power_i2c_send(u32 r)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
