Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cX4mW-0002UX-Cv
 for barebox@lists.infradead.org; Fri, 27 Jan 2017 11:33:30 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri, 27 Jan 2017 12:33:04 +0100
Message-Id: <1485516784-25401-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH v2] ARM: i.MX7: add AIPS base address defines
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Import the ARM IP bus base addresses from IMX7DRM 05/2016 AIPS Memory Map

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/element14-warp7/lowlevel.c |   2 +-
 arch/arm/mach-imx/imx7.c                   |   2 +-
 arch/arm/mach-imx/include/mach/imx7-regs.h | 125 +++++++++++++++++++++++++----
 3 files changed, 112 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index 98d8b64..38b7745 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -12,7 +12,7 @@ extern char __dtb_imx7s_warp_start[];
 
 static noinline void warp7_start(void)
 {
-	void __iomem *iomuxbase = IOMEM(MX7_IOMUX_BASE_ADDR);
+	void __iomem *iomuxbase = IOMEM(MX7_IOMUXC_BASE_ADDR);
 	void __iomem *uart = IOMEM(MX7_UART1_BASE_ADDR);
 	void __iomem *ccmbase = IOMEM(MX7_CCM_BASE_ADDR);
 	void *fdt;
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index ca094fe..65e02d6 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -62,7 +62,7 @@ void imx7_init_lowlevel(void)
 
 static int imx7_timer_init(void)
 {
-	void __iomem *sctr = IOMEM(MX7_SCTR_BASE_ADDR);
+	void __iomem *sctr = IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR);
 	unsigned long val, freq;
 
 	freq = 8000000;
diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index a96341d..8774c32 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -1,24 +1,119 @@
 #ifndef __MACH_IMX7_REGS_H
 #define __MACH_IMX7_REGS_H
 
+/* Defines for Blocks connected via AIPS */
 #define MX7_AIPS1_BASE_ADDR		0x30000000
 #define MX7_AIPS2_BASE_ADDR		0x30400000
 #define MX7_AIPS3_BASE_ADDR		0x30800000
 
-#define MX7_AIPS1_CONFIG_BASE_ADDR	0x301f0000
-#define MX7_IOMUX_BASE_ADDR		0x30330000
-#define MX7_OCOTP_BASE_ADDR		0x30350000
-#define MX7_ANATOP_BASE_ADDR		0x30360000
-#define MX7_CCM_BASE_ADDR               0x30380000
-#define MX7_SRC_BASE_ADDR		0x30390000
-#define MX7_SCTR_BASE_ADDR		0x306c0000
-#define MX7_UART1_BASE_ADDR		0x30860000
-#define MX7_UART2_BASE_ADDR		0x30870000
-#define MX7_UART3_BASE_ADDR		0x30880000
-#define MX7_UART4_BASE_ADDR		0x30a60000
-#define MX7_UART5_BASE_ADDR		0x30a70000
-#define MX7_UART6_BASE_ADDR		0x30a80000
-#define MX7_UART7_BASE_ADDR		0x30a90000
-#define MX7_AIPS2_CONFIG_BASE_ADDR	0x305f0000
+/* ATZ#1- On Platform */
+#define MX7_DAP_BASE_ADDR		(MX7_AIPS1_BASE_ADDR)
+#define MX7_AIPS1_CONFIG_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x1F0000)
+
+/* ATZ#1- Off Platform */
+#define MX7_GPIO1_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x200000)
+#define MX7_GPIO2_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x210000)
+#define MX7_GPIO3_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x220000)
+#define MX7_GPIO4_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x230000)
+#define MX7_GPIO5_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x240000)
+#define MX7_GPIO6_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x250000)
+#define MX7_GPIO7_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x260000)
+#define MX7_IOMUXC_LPSR_GPR_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x270000)
+#define MX7_WDOG1_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x280000)
+#define MX7_WDOG2_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x290000)
+#define MX7_WDOG3_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x2A0000)
+#define MX7_WDOG4_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x2B0000)
+#define MX7_IOMUXC_LPSR_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x2C0000)
+#define MX7_GPT1_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x2D0000)
+#define MX7_GPT2_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x2E0000)
+#define MX7_GPT3_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x2F0000)
+#define MX7_GPT4_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x300000)
+#define MX7_ROMCP_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x310000)
+#define MX7_KPP_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x320000)
+#define MX7_IOMUXC_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x330000)
+#define MX7_IOMUXC_GPR_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x340000)
+#define MX7_OCOTP_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x350000)
+#define MX7_ANATOP_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x360000)
+#define MX7_SNVS_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x370000)
+#define MX7_CCM_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x380000)
+#define MX7_SRC_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x390000)
+#define MX7_GPC_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x3A0000)
+#define MX7_SEMAPHORE1_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x3B0000)
+#define MX7_SEMAPHORE2_BASE_ADDR	(MX7_AIPS1_BASE_ADDR + 0x3C0000)
+#define MX7_RDC_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x3D0000)
+#define MX7_CSU_BASE_ADDR		(MX7_AIPS1_BASE_ADDR + 0x3E0000)
+
+/* ATZ#2- On Platform */
+#define MX7_AIPS2_CONFIG_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x1F0000)
+
+/* ATZ#2- Off Platform */
+#define MX7_ADC1_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x230000)
+#define MX7_ADC2_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x230000)
+#define MX7_ECSPI4_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x230000)
+#define MX7_FTM1_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x240000)
+#define MX7_FTM2_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x250000)
+#define MX7_PWM1_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x260000)
+#define MX7_PWM2_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x270000)
+#define MX7_PWM3_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x280000)
+#define MX7_PWM4_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x290000)
+#define MX7_SYSCNT_RD_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x2A0000)
+#define MX7_SYSCNT_CMP_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x2B0000)
+#define MX7_SYSCNT_CTRL_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x2C0000)
+#define MX7_PCIE_PHY_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x2D0000)
+#define MX7_EPDC_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x2F0000)
+#define MX7_PXP_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x300000)
+#define MX7_CSI_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x310000)
+#define MX7_LCDIF_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x330000)
+#define MX7_MIPI_CSI_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x350000)
+#define MX7_MIPI_DSI_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x360000)
+#define MX7_TZASC_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x380000)
+#define MX7_DDRPHY_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x390000)
+#define MX7_DDRC_BASE_ADDR		(MX7_AIPS2_BASE_ADDR + 0x3A0000)
+#define MX7_IP2APB_PERFMON1_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x3C0000)
+#define MX7_IP2APB_PERFMON2_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x3D0000)
+#define MX7_AXI_DEBUG_MON_BASE_ADDR	(MX7_AIPS2_BASE_ADDR + 0x3E0000)
+
+/* ATZ#3- On Platform */
+#define MX7_ECSPI1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x20000)
+#define MX7_ECSPI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x30000)
+#define MX7_ECSPI3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x40000)
+#define MX7_UART1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x60000)
+#define MX7_UART2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x70000)
+#define MX7_UART3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x80000)
+#define MX7_SAI1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xA0000)
+#define MX7_SAI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xB0000)
+#define MX7_SAI3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xC0000)
+#define MX7_SPBA_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x90000)
+#define MX7_CAAM_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x100000)
+#define MX7_AIPS3_CONFIG_BASE_ADDR	(MX7_AIPS3_BASE_ADDR + 0x1F0000)
+
+/* ATZ#3- Off Platform */
+#define MX7_CAN1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x200000)
+#define MX7_CAN2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x210000)
+#define MX7_I2C1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x220000)
+#define MX7_I2C2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x230000)
+#define MX7_I2C3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x240000)
+#define MX7_I2C4_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x250000)
+#define MX7_UART4_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x260000)
+#define MX7_UART5_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x270000)
+#define MX7_UART6_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x280000)
+#define MX7_UART7_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x290000)
+#define MX7_MU_A_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x2A0000)
+#define MX7_MU_B_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x2B0000)
+#define MX7_SEM_HS_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x2C0000)
+#define MX7_USBOH2_PL301_BASE_ADDR	(MX7_AIPS3_BASE_ADDR + 0x2D0000)
+#define MX7_OTG1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x310000)
+#define MX7_OTG2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x320000)
+#define MX7_USBOH3_USB_BASE_ADDR	(MX7_AIPS3_BASE_ADDR + 0x330000)
+#define MX7_USDHC1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x340000)
+#define MX7_USDHC2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x350000)
+#define MX7_USDHC3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x360000)
+#define MX7_SIM1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x390000)
+#define MX7_SIM2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3A0000)
+#define MX7_QSPI_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3B0000)
+#define MX7_WEIM_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3C0000)
+#define MX7_SDMA_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3D0000)
+#define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
+#define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
 
 #endif /* __MACH_IMX7_REGS_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
