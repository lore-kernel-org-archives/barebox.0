Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxn-0008QD-3O
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:39 +0200
Message-Id: <1349939621-17793-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] ARM i.MX27: move PCCR gate registers to its only user
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx27.c               |   63 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h |   63 ---------------------------
 2 files changed, 63 insertions(+), 63 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index cb42585..222d2a6 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -27,6 +27,69 @@
 #define CCM_PMCOUNT		0x30
 #define CCM_WKGDCTL		0x34
 
+#define PCCR0_SSI2_EN	(1 << 0)
+#define PCCR0_SSI1_EN	(1 << 1)
+#define PCCR0_SLCDC_EN	(1 << 2)
+#define PCCR0_SDHC3_EN	(1 << 3)
+#define PCCR0_SDHC2_EN	(1 << 4)
+#define PCCR0_SDHC1_EN	(1 << 5)
+#define PCCR0_SDC_EN	(1 << 6)
+#define PCCR0_SAHARA_EN	(1 << 7)
+#define PCCR0_RTIC_EN	(1 << 8)
+#define PCCR0_RTC_EN	(1 << 9)
+#define PCCR0_PWM_EN	(1 << 11)
+#define PCCR0_OWIRE_EN	(1 << 12)
+#define PCCR0_MSHC_EN	(1 << 13)
+#define PCCR0_LCDC_EN	(1 << 14)
+#define PCCR0_KPP_EN	(1 << 15)
+#define PCCR0_IIM_EN	(1 << 16)
+#define PCCR0_I2C2_EN	(1 << 17)
+#define PCCR0_I2C1_EN	(1 << 18)
+#define PCCR0_GPT6_EN	(1 << 19)
+#define PCCR0_GPT5_EN	(1 << 20)
+#define PCCR0_GPT4_EN	(1 << 21)
+#define PCCR0_GPT3_EN	(1 << 22)
+#define PCCR0_GPT2_EN	(1 << 23)
+#define PCCR0_GPT1_EN	(1 << 24)
+#define PCCR0_GPIO_EN	(1 << 25)
+#define PCCR0_FEC_EN	(1 << 26)
+#define PCCR0_EMMA_EN	(1 << 27)
+#define PCCR0_DMA_EN	(1 << 28)
+#define PCCR0_CSPI3_EN	(1 << 29)
+#define PCCR0_CSPI2_EN	(1 << 30)
+#define PCCR0_CSPI1_EN	(1 << 31)
+
+#define PCCR1_MSHC_BAUDEN	(1 << 2)
+#define PCCR1_NFC_BAUDEN	(1 << 3)
+#define PCCR1_SSI2_BAUDEN	(1 << 4)
+#define PCCR1_SSI1_BAUDEN	(1 << 5)
+#define PCCR1_H264_BAUDEN	(1 << 6)
+#define PCCR1_PERCLK4_EN	(1 << 7)
+#define PCCR1_PERCLK3_EN	(1 << 8)
+#define PCCR1_PERCLK2_EN	(1 << 9)
+#define PCCR1_PERCLK1_EN	(1 << 10)
+#define PCCR1_HCLK_USB		(1 << 11)
+#define PCCR1_HCLK_SLCDC	(1 << 12)
+#define PCCR1_HCLK_SAHARA	(1 << 13)
+#define PCCR1_HCLK_RTIC		(1 << 14)
+#define PCCR1_HCLK_LCDC		(1 << 15)
+#define PCCR1_HCLK_H264		(1 << 16)
+#define PCCR1_HCLK_FEC		(1 << 17)
+#define PCCR1_HCLK_EMMA		(1 << 18)
+#define PCCR1_HCLK_EMI		(1 << 19)
+#define PCCR1_HCLK_DMA		(1 << 20)
+#define PCCR1_HCLK_CSI		(1 << 21)
+#define PCCR1_HCLK_BROM		(1 << 22)
+#define PCCR1_HCLK_ATA		(1 << 23)
+#define PCCR1_WDT_EN		(1 << 24)
+#define PCCR1_USB_EN		(1 << 25)
+#define PCCR1_UART6_EN		(1 << 26)
+#define PCCR1_UART5_EN		(1 << 27)
+#define PCCR1_UART4_EN		(1 << 28)
+#define PCCR1_UART3_EN		(1 << 29)
+#define PCCR1_UART2_EN		(1 << 30)
+#define PCCR1_UART1_EN		(1 << 31)
+
 enum mx27_clks {
 	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
 	per2_div, per3_div, per4_div, usb_div, cpu_sel,	clko_sel, cpu_div, clko_div,
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index ff8d509..1f4a743 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -162,69 +162,6 @@
 #define MX27_MPCTL1_BRMO	(1 << 6)
 #define MX27_MPCTL1_LF		(1 << 15)
 
-#define PCCR0_SSI2_EN	(1 << 0)
-#define PCCR0_SSI1_EN	(1 << 1)
-#define PCCR0_SLCDC_EN	(1 << 2)
-#define PCCR0_SDHC3_EN	(1 << 3)
-#define PCCR0_SDHC2_EN	(1 << 4)
-#define PCCR0_SDHC1_EN	(1 << 5)
-#define PCCR0_SDC_EN	(1 << 6)
-#define PCCR0_SAHARA_EN	(1 << 7)
-#define PCCR0_RTIC_EN	(1 << 8)
-#define PCCR0_RTC_EN	(1 << 9)
-#define PCCR0_PWM_EN	(1 << 11)
-#define PCCR0_OWIRE_EN	(1 << 12)
-#define PCCR0_MSHC_EN	(1 << 13)
-#define PCCR0_LCDC_EN	(1 << 14)
-#define PCCR0_KPP_EN	(1 << 15)
-#define PCCR0_IIM_EN	(1 << 16)
-#define PCCR0_I2C2_EN	(1 << 17)
-#define PCCR0_I2C1_EN	(1 << 18)
-#define PCCR0_GPT6_EN	(1 << 19)
-#define PCCR0_GPT5_EN	(1 << 20)
-#define PCCR0_GPT4_EN	(1 << 21)
-#define PCCR0_GPT3_EN	(1 << 22)
-#define PCCR0_GPT2_EN	(1 << 23)
-#define PCCR0_GPT1_EN	(1 << 24)
-#define PCCR0_GPIO_EN	(1 << 25)
-#define PCCR0_FEC_EN	(1 << 26)
-#define PCCR0_EMMA_EN	(1 << 27)
-#define PCCR0_DMA_EN	(1 << 28)
-#define PCCR0_CSPI3_EN	(1 << 29)
-#define PCCR0_CSPI2_EN	(1 << 30)
-#define PCCR0_CSPI1_EN	(1 << 31)
-
-#define PCCR1_MSHC_BAUDEN	(1 << 2)
-#define PCCR1_NFC_BAUDEN	(1 << 3)
-#define PCCR1_SSI2_BAUDEN	(1 << 4)
-#define PCCR1_SSI1_BAUDEN	(1 << 5)
-#define PCCR1_H264_BAUDEN	(1 << 6)
-#define PCCR1_PERCLK4_EN	(1 << 7)
-#define PCCR1_PERCLK3_EN	(1 << 8)
-#define PCCR1_PERCLK2_EN	(1 << 9)
-#define PCCR1_PERCLK1_EN	(1 << 10)
-#define PCCR1_HCLK_USB		(1 << 11)
-#define PCCR1_HCLK_SLCDC	(1 << 12)
-#define PCCR1_HCLK_SAHARA	(1 << 13)
-#define PCCR1_HCLK_RTIC		(1 << 14)
-#define PCCR1_HCLK_LCDC		(1 << 15)
-#define PCCR1_HCLK_H264		(1 << 16)
-#define PCCR1_HCLK_FEC		(1 << 17)
-#define PCCR1_HCLK_EMMA		(1 << 18)
-#define PCCR1_HCLK_EMI		(1 << 19)
-#define PCCR1_HCLK_DMA		(1 << 20)
-#define PCCR1_HCLK_CSI		(1 << 21)
-#define PCCR1_HCLK_BROM		(1 << 22)
-#define PCCR1_HCLK_ATA		(1 << 23)
-#define PCCR1_WDT_EN		(1 << 24)
-#define PCCR1_USB_EN		(1 << 25)
-#define PCCR1_UART6_EN		(1 << 26)
-#define PCCR1_UART5_EN		(1 << 27)
-#define PCCR1_UART4_EN		(1 << 28)
-#define PCCR1_UART3_EN		(1 << 29)
-#define PCCR1_UART2_EN		(1 << 30)
-#define PCCR1_UART1_EN		(1 << 31)
-
 /* SDRAM Controller registers bitfields */
 #define ESDCTL_PRCT(x)		(((x) & 3f) << 0)
 #define ESDCTL_BL		(1 << 7)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
