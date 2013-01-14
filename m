Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eta-ori.net ([2001:41d0:8:140a::5] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TuZFz-0005Be-Qx
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 01:54:38 +0000
Received: from localhost.localdomain (p5B06EB72.dip.t-dialin.net
 [91.6.235.114])
 by orion.eta-ori.net (Postfix) with ESMTPSA id 038B260062
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 02:54:31 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Mon, 14 Jan 2013 02:54:13 +0100
Message-Id: <f410328fab36f0eedcca0f2fa2b24dd243b8ef95.1358127379.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358127379.git.d.mierswa@phytec.de>
References: <cover.1358127379.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358127379.git.d.mierswa@phytec.de>
References: <cover.1358127379.git.d.mierswa@phytec.de>
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
Subject: [PATCH 1/4] i.MX21: Add periph. clock register name macros
To: barebox@lists.infradead.org

Also put those names solely in the .c file as it's done with
the i.MX27 code.

Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
---
 arch/arm/mach-imx/clk-imx21.c               | 56 +++++++++++++++++++++++++----
 arch/arm/mach-imx/include/mach/imx21-regs.h |  6 ----
 2 files changed, 50 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 9e7af81..784951d 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -45,6 +45,48 @@
 #define CCM_PMCOUNT		0x30
 #define CCM_WKGDCTL		0x34
 
+#define PCCR0_UART1_EN		(1 << 0)
+#define PCCR0_UART2_EN		(1 << 1)
+#define PCCR0_UART3_EN		(1 << 2)
+#define PCCR0_UART4_EN		(1 << 3)
+#define PCCR0_CSPI1_EN		(1 << 4)
+#define PCCR0_CSPI2_EN		(1 << 5)
+#define PCCR0_SSI1_EN		(1 << 6)
+#define PCCR0_SSI2_EN		(1 << 7)
+#define PCCR0_FIRI_EN		(1 << 8)
+#define PCCR0_SDHC1_EN		(1 << 9)
+#define PCCR0_SDHC2_EN		(1 << 10)
+#define PCCR0_GPIO_EN		(1 << 11)
+#define PCCR0_I2C_EN		(1 << 12)
+#define PCCR0_DMA_EN		(1 << 13)
+#define PCCR0_USBOTG_EN		(1 << 14)
+#define PCCR0_EMMA_EN		(1 << 15)
+#define PCCR0_SSI2_BAUD_EN	(1 << 16)
+#define PCCR0_SSI1_BAUD_EN	(1 << 17)
+#define PCCR0_PERCLK3_EN	(1 << 18)
+#define PCCR0_NFC_EN		(1 << 19)
+#define PCCR0_FRI_BAUD_EN	(1 << 20)
+#define PCCR0_SLDC_EN		(1 << 21)
+#define PCCR0_PERCLK4_EN	(1 << 22)
+#define PCCR0_HCLK_BMI_EN	(1 << 23)
+#define PCCR0_HCLK_USBOTG_EN	(1 << 24)
+#define PCCR0_HCLK_SLCDC_EN	(1 << 25)
+#define PCCR0_HCLK_LCDC_EN	(1 << 26)
+#define PCCR0_HCLK_EMMA_EN	(1 << 27)
+#define PCCR0_HCLK_BROM_EN	(1 << 28)
+#define PCCR0_HCLK_DMA_EN	(1 << 30)
+#define PCCR0_HCLK_CSI_EN	(1 << 31)
+
+#define PCCR1_CSPI3_EN	(1 << 23)
+#define PCCR1_WDT_EN	(1 << 24)
+#define PCCR1_GPT1_EN	(1 << 25)
+#define PCCR1_GPT2_EN	(1 << 26)
+#define PCCR1_GPT3_EN	(1 << 27)
+#define PCCR1_PWM_EN	(1 << 28)
+#define PCCR1_RTC_EN	(1 << 29)
+#define PCCR1_KPP_EN	(1 << 30)
+#define PCCR1_OWIRE_EN	(1 << 31)
+
 enum imx21_clks {
 	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
 	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, clk_max
@@ -70,14 +112,16 @@ static int imx21_ccm_probe(struct device_d *dev)
 
 	base = dev_request_mem_region(dev, 0);
 
-	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) |
-			(1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) |
-			(1 << 13) | (1 << 14) | (1 << 19) | (1 << 22) |
-			(1 << 24) | (1 << 26) |	(1 << 30),
+	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
+			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
+			PCCR0_SDHC2_EN | PCCR0_GPIO_EN | PCCR0_I2C_EN | PCCR0_DMA_EN |
+			PCCR0_USBOTG_EN | PCCR0_NFC_EN | PCCR0_PERCLK4_EN |
+			PCCR0_HCLK_USBOTG_EN | PCCR0_HCLK_LCDC_EN | PCCR0_HCLK_DMA_EN,
 			base + CCM_PCCR0);
 
-	writel((1 << 23) | (1 << 24) | (1 << 25) | (1 << 26) | (1 << 27) |
-			(1 << 28) | (1 << 29) | (1 << 30) | (1 << 31),
+	writel(PCCR1_CSPI3_EN | PCCR1_WDT_EN | PCCR1_GPT1_EN | PCCR1_GPT2_EN |
+			PCCR1_GPT3_EN | PCCR1_PWM_EN | PCCR1_RTC_EN | PCCR1_KPP_EN |
+			PCCR1_OWIRE_EN,
 			base + CCM_PCCR1);
 
 	clks[ckil] = clk_fixed("ckil", lref);
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 1c4b550..87bd99c 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -129,12 +129,6 @@
 #define MX21_MPCTL1_BRMO	(1 << 6)
 #define MX21_MPCTL1_LF		(1 << 15)
 
-#define MX21_PCCR0_PERCLK3_EN	(1 << 18)
-#define MX21_PCCR0_NFC_EN	(1 << 19)
-#define MX21_PCCR0_HCLK_LCDC_EN	(1 << 26)
-
-#define MX21_PCCR1_GPT1_EN	(1 << 25)
-
 #define MX21_CCSR_32K_SR	(1 << 15)
 
 #endif /* _IMX21_REGS_H */
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
