Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sukm0-00069g-W9
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 13:40:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2AA6ABF0E9
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 15:40:05 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 27 Jul 2012 15:40:03 +0200
Message-Id: <1343396404-10288-3-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1343396404-10288-1-git-send-email-j.weitzel@phytec.de>
References: <1343396404-10288-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 2/3] OMAP4460: ram init changes
To: barebox@lists.infradead.org

configure  Memory Adapter for 4460

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    4 ++++
 arch/arm/mach-omap/omap4_generic.c              |   21 +++++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index d5517c5..4082bac 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -101,6 +101,10 @@
 #define DMM_LISA_MAP_SYS_SIZE_MASK	(7 << 20)
 #define DMM_LISA_MAP_SYS_SIZE_SHIFT	20
 #define DMM_LISA_MAP_SYS_ADDR_MASK	(0xFF << 24)
+
+/* Memory Adapter (4460 onwards) */
+#define OMAP44XX_MA_BASE		0x482AF000
+
 /*
  * Hardware Register Details
  */
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 07aa2b4..a368759 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -29,6 +29,10 @@
 #define OMAP4460_CONTROL_ID_CODE_ES1_0  0x0B94E02F
 #define OMAP4460_CONTROL_ID_CODE_ES1_1  0x2B94E02F
 
+/* EMIF_L3_CONFIG register value */
+#define EMIF_L3_CONFIG_VAL_SYS_10_LL_0		0x0A0000FF
+#define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0	0x0A300000
+
 void __noreturn reset_cpu(unsigned long addr)
 {
 	writel(PRM_RSTCTRL_RESET, PRM_RSTCTRL);
@@ -270,8 +274,7 @@ static void reset_phy(unsigned int base)
 void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 		const struct dpll_param *core)
 {
-	unsigned int rev;
-	rev = omap4_revision();
+	unsigned int rev = omap4_revision();
 
 	if (rev == OMAP4430_ES2_0) {
 		writel(0x9e9e9e9e, 0x4A100638);
@@ -294,6 +297,13 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_2) = 0x00000000;
 	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_3) = 0xFF020100;
 
+	if (rev >= OMAP4460_ES1_0) {
+		writel(0x80640300, OMAP44XX_MA_BASE + DMM_LISA_MAP_0);
+
+		*(volatile int*)(OMAP44XX_MA_BASE + DMM_LISA_MAP_2) = 0x00000000;
+		*(volatile int*)(OMAP44XX_MA_BASE + DMM_LISA_MAP_3) = 0xFF020100;
+	}
+
 	/* DDR needs to be initialised @ 19.2 MHz
 	 * So put core DPLL in bypass mode
 	 * Configure the Core DPLL but don't lock it
@@ -336,6 +346,13 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
 	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
 
+	if (rev >= OMAP4460_ES1_0) {
+		writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0,
+				OMAP44XX_EMIF1_BASE + EMIF_L3_CONFIG);
+		writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0,
+				OMAP44XX_EMIF2_BASE + EMIF_L3_CONFIG);
+	}
+
 	/*
 	 * DMM : DMM_LISA_MAP_0(Section_0)
 	 * [31:24] SYS_ADDR 		0x80
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
