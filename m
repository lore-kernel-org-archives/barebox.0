Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RI-Os
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:38 +0100
Message-Id: <1387381362-7780-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] video: ipufb: Allow to disable fractional pixelclock
 divider
To: barebox@lists.infradead.org

The IPU has a fractional pixelclock divider. When used, this produces
clock jitter which especially LVDS transceivers can't handle. Allow
to disable it via platform_data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h |  5 +++++
 drivers/video/imx-ipu-fb.c                  | 11 +++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index 43b3bda..ee1a9b5 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -47,6 +47,11 @@ struct imx_ipu_fb_platform_data {
 	void __iomem		*framebuffer_ovl;
 	/** hook to enable backlight and stuff */
 	void			(*enable)(int enable);
+	/*
+	 * Fractional pixelclock divider causes jitter which some displays
+	 * or LVDS transceivers can't handle. Disable it if necessary.
+	 */
+	int			disable_fractional_divider;
 };
 
 #endif /* __MACH_IMX_IPU_FB_H__ */
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 8b43515..2e65fde 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -43,6 +43,7 @@ struct ipu_fb_info {
 	struct device_d		*dev;
 
 	unsigned int		alpha;
+	int			disable_fractional_divider;
 };
 
 /* IPU DMA Controller channel definitions. */
@@ -409,7 +410,7 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	struct fb_videomode *mode = info->mode;
 	u32 reg, old_conf, div;
 	enum ipu_panel panel = IPU_PANEL_TFT;
-	unsigned long pixel_clk;
+	unsigned long pixel_clk, rate;
 
 	/* Init panel size and blanking periods */
 	reg = ((mode->hsync_len - 1) << 26) |
@@ -466,7 +467,12 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	 * i.MX31 it (HSP_CLK) is <= 178MHz. Currently 128.267MHz
 	 */
 	pixel_clk = PICOS2KHZ(mode->pixclock) * 1000UL;
-	div = clk_get_rate(fbi->clk) * 16 / pixel_clk;
+	rate = clk_get_rate(fbi->clk);
+
+	if (fbi->disable_fractional_divider)
+		div = DIV_ROUND_CLOSEST(rate, pixel_clk) * 16;
+	else
+		div = rate * 16 / pixel_clk;
 
 	if (div < 0x40) {	/* Divider less than 4 */
 		dev_dbg(&info->dev,
@@ -1000,6 +1006,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->dev = dev;
 	fbi->enable = pdata->enable;
 	fbi->disp_data_fmt = pdata->disp_data_fmt;
+	fbi->disable_fractional_divider = pdata->disable_fractional_divider;
 	info->priv = fbi;
 	info->fbops = &imxfb_ops;
 	info->num_modes = pdata->num_modes;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
