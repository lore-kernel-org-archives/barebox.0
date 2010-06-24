Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043D-Bc
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:07 +0200
Message-Id: <1277372356-32370-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] imxfb: Add board specific hook to enable display
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imxfb.h |    2 ++
 drivers/video/imx.c                    |    7 +++++++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index e31b668..16b43ea 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -74,6 +74,8 @@ struct imx_fb_platform_data {
 	void		*framebuffer;
 	/** force a memory area to be used, else NULL for dynamic allocation */
 	void		*framebuffer_ovl;
+	/** hook to enable backlight and stuff */
+	void		(*enable)(int enable);
 };
 
 void set_imx_fb_info(struct imx_fb_platform_data *);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index d9ba643..3a4f938 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -152,6 +152,7 @@ struct imxfb_info {
 	struct fb_info		info;
 	struct device_d		*dev;
 
+	void			(*enable)(int enable);
 
 	struct fb_info		overlay;
 };
@@ -262,12 +263,17 @@ static void imxfb_enable_controller(struct fb_info *info)
 	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 29),
 		IMX_CCM_BASE + CCM_CGCR1);
 #endif
+	if (fbi->enable)
+		fbi->enable(1);
 }
 
 static void imxfb_disable_controller(struct fb_info *info)
 {
 	struct imxfb_info *fbi = info->priv;
 
+	if (fbi->enable)
+		fbi->enable(0);
+
 	writel(0, fbi->regs + LCDC_RMCR);
 #ifdef CONFIG_ARCH_IMX21
 	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
@@ -546,6 +552,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->pwmr = pdata->pwmr;
 	fbi->lscr1 = pdata->lscr1;
 	fbi->dmacr = pdata->dmacr;
+	fbi->enable = pdata->enable;
 	fbi->dev = dev;
 	info->priv = fbi;
 	info->mode = &pdata->mode->mode;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
