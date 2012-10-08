Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFf-0005BA-Ma
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:18 +0200
Message-Id: <1349725459-20226-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] video i.MX: Use regular clk_[en|dis]able functions
To: barebox@lists.infradead.org

This controller has no enable bit. It is always on once the
pixel clock is provided. This patch switches the driver to use
regular clk functions instead of SoC specific register hacking.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx.c |   44 +++++---------------------------------------
 1 file changed, 5 insertions(+), 39 deletions(-)

diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 9406b36..ae4c671 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -252,19 +252,9 @@ static void imxfb_enable_controller(struct fb_info *info)
 	struct imxfb_info *fbi = info->priv;
 
 	writel(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);
-#ifdef CONFIG_ARCH_IMX21
-	PCCR0 |= PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	PCCR0 |= PCCR0_LCDC_EN;
-	PCCR1 |= PCCR1_HCLK_LCDC;
-#endif
-#ifdef CONFIG_ARCH_IMX25
-	writel(readl(IMX_CCM_BASE + CCM_CGCR0) | (1 << 24) | (1 << 7),
-		IMX_CCM_BASE + CCM_CGCR0);
-	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 29),
-		IMX_CCM_BASE + CCM_CGCR1);
-#endif
+
+	clk_enable(fbi->clk);
+
 	if (fbi->enable)
 		fbi->enable(1);
 }
@@ -277,19 +267,8 @@ static void imxfb_disable_controller(struct fb_info *info)
 		fbi->enable(0);
 
 	writel(0, fbi->regs + LCDC_RMCR);
-#ifdef CONFIG_ARCH_IMX21
-	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	PCCR0 &= ~PCCR0_LCDC_EN;
-	PCCR1 &= ~PCCR1_HCLK_LCDC;
-#endif
-#ifdef CONFIG_ARCH_IMX25
-	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
-		IMX_CCM_BASE + CCM_CGCR0);
-	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
-		IMX_CCM_BASE + CCM_CGCR1);
-#endif
+
+	clk_disable(fbi->clk);
 }
 
 /*
@@ -541,19 +520,6 @@ static int imxfb_probe(struct device_d *dev)
 	if (!pdata)
 		return -ENODEV;
 
-#ifdef CONFIG_ARCH_IMX21
-	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	PCCR0 &= ~PCCR0_LCDC_EN;
-	PCCR1 &= ~PCCR1_HCLK_LCDC;
-#endif
-#ifdef CONFIG_ARCH_IMX25
-	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
-		IMX_CCM_BASE + CCM_CGCR0);
-	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
-		IMX_CCM_BASE + CCM_CGCR1);
-#endif
 	if (!pdata->num_modes) {
 		dev_err(dev, "no modes. bailing out\n");
 		return -EINVAL;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
