Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1BB8-0007Gw-Sx
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 07:04:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3B938BF0E8
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 09:04:34 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 14 Aug 2012 09:04:32 +0200
Message-Id: <1344927873-19506-3-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
References: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
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
index 3f6865a..617d786 100644
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
@@ -272,8 +276,7 @@ static void reset_phy(unsigned int base)
 void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 		const struct dpll_param *core)
 {
-	unsigned int rev;
-	rev = omap4_revision();
+	unsigned int rev = omap4_revision();
 
 	if (rev == OMAP4430_ES2_0) {
 		writel(0x9e9e9e9e, 0x4A100638);
@@ -296,6 +299,13 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	writel(0x00000000, OMAP44XX_DMM_BASE + DMM_LISA_MAP_2);
 	writel(0xFF020100, OMAP44XX_DMM_BASE + DMM_LISA_MAP_3);
 
+	if (rev >= OMAP4460_ES1_0) {
+		writel(0x80640300, OMAP44XX_MA_BASE + DMM_LISA_MAP_0);
+
+		writel(0x00000000, OMAP44XX_MA_BASE + DMM_LISA_MAP_2);
+		writel(0xFF020100, OMAP44XX_MA_BASE + DMM_LISA_MAP_3);
+	}
+
 	/* DDR needs to be initialised @ 19.2 MHz
 	 * So put core DPLL in bypass mode
 	 * Configure the Core DPLL but don't lock it
@@ -338,6 +348,13 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	writel(0x80000000, OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL);
 	writel(0x80000000, OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL);
 
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
