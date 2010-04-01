Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NxMsf-0004cJ-1F
	for barebox@lists.infradead.org; Thu, 01 Apr 2010 16:04:30 +0000
Received: by wyb40 with SMTP id 40so611796wyb.36
	for <barebox@lists.infradead.org>; Thu, 01 Apr 2010 09:04:26 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 1 Apr 2010 18:04:26 +0200
Message-ID: <j2tba216b431004010904if877c3a5wa79f4a3190e33a50@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: [PATCH] i.MX21: support framebuffer
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

This patch allows using the i.MX (LCDC) framebuffer driver on boards
using an i.MX21 SoC.

Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
---
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h
b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 08520e9..3d21749 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -107,11 +107,42 @@
 #define MPCTL1_BRMO		(1 << 6)
 #define MPCTL1_LF		(1 << 15)

-#define PCCR0_NFC_EN   (1 << 19)
-#define PCCR1_GPT1_EN	(1 << 25)
+#define PCCR0_PERCLK3_EN	(1 << 18)
+#define PCCR0_NFC_EN		(1 << 19)
+#define PCCR0_HCLK_LCDC_EN	(1 << 26)
+
+#define PCCR1_GPT1_EN		(1 << 25)

 #define CCSR_32K_SR		(1 << 15)

+#define PA5_PF_LSCLK            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 5)
+#define PA6_PF_LD0              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 6)
+#define PA7_PF_LD1              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 7)
+#define PA8_PF_LD2              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 8)
+#define PA9_PF_LD3              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 9)
+#define PA10_PF_LD4             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 10)
+#define PA11_PF_LD5             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 11)
+#define PA12_PF_LD6             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 12)
+#define PA13_PF_LD7             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 13)
+#define PA14_PF_LD8             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 14)
+#define PA15_PF_LD9             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 15)
+#define PA16_PF_LD10            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 16)
+#define PA17_PF_LD11            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 17)
+#define PA18_PF_LD12            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 18)
+#define PA19_PF_LD13            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 19)
+#define PA20_PF_LD14            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 20)
+#define PA21_PF_LD15            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 21)
+#define PA22_PF_LD16            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 22)
+#define PA23_PF_LD17            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 23)
+#define PA24_PF_REV             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 24)
+#define PA25_PF_CLS             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 25)
+#define PA26_PF_PS              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 26)
+#define PA27_PF_SPL_SPR         (GPIO_PORTA | GPIO_PF | GPIO_OUT | 27)
+#define PA28_PF_HSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 28)
+#define PA29_PF_VSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 29)
+#define PA30_PF_CONTRAST        (GPIO_PORTA | GPIO_PF | GPIO_OUT | 30)
+#define PA31_PF_OE_ACD          (GPIO_PORTA | GPIO_PF | GPIO_OUT | 31)
+
 #define PE12_PF_UART1_TXD	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 12)
 #define PE13_PF_UART1_RXD	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 13)
 #define PE14_PF_UART1_CTS	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 14)
diff --git a/arch/arm/mach-imx/speed-imx21.c b/arch/arm/mach-imx/speed-imx21.c
index c68a367..9ae8026 100644
--- a/arch/arm/mach-imx/speed-imx21.c
+++ b/arch/arm/mach-imx/speed-imx21.c
@@ -135,6 +135,11 @@ ulong imx_get_gptclk(void)
 	return imx_decode_perclk((PCDR1 & 0x3f) + 1);
 }

+ulong imx_get_lcdclk(void)
+{
+        return imx_get_perclk3();
+}
+
 void imx_dump_clocks(void)
 {
 	uint32_t	cid = CID;
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 9a30ca4..87c08d3 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -251,6 +251,9 @@ static void imxfb_enable_controller(struct fb_info *info)
 	struct imxfb_info *fbi = info->priv;

 	writel(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);
+#ifdef CONFIG_ARCH_IMX21
+	PCCR0 |= PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN;
+#endif
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_LCDC_EN;
 	PCCR1 |= PCCR1_HCLK_LCDC;
@@ -263,6 +266,9 @@ static void imxfb_disable_controller(struct fb_info *info)
 	struct imxfb_info *fbi = info->priv;

 	writel(0, fbi->regs + LCDC_RMCR);
+#ifdef CONFIG_ARCH_IMX21
+	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
+#endif
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 &= ~PCCR0_LCDC_EN;
 	PCCR1 &= ~PCCR1_HCLK_LCDC;
@@ -505,6 +511,9 @@ static int imxfb_probe(struct device_d *dev)
 	if (!pdata)
 		return -ENODEV;

+#ifdef CONFIG_ARCH_IMX21
+	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
+#endif
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 &= ~PCCR0_LCDC_EN;
 	PCCR1 &= ~PCCR1_HCLK_LCDC;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
