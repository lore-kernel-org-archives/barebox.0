Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lN-0002T7-Td
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:07 +0200
Message-Id: <1436178974-20064-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
References: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] video: stm: copy platform_data to driver data
To: Barebox List <barebox@lists.infradead.org>

Copy the individual fields of struct imx_fb_platformdata to the
driver data rather than keeping a pointer to platform_data. This
works better with device tree where no platform_data * is
available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 42 ++++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index abaaf5d..c58b62c 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -144,8 +144,13 @@ struct imxfb_info {
 	unsigned memory_size;
 	struct fb_info info;
 	struct device_d *hw_dev;
-	struct imx_fb_platformdata *pdata;
 	struct clk *clk;
+	void *fixed_screen;
+	unsigned fixed_screen_size;
+	unsigned flags;
+	unsigned ld_intf_width;
+	void (*enable)(int enable);
+	unsigned dotclk_delay;
 };
 
 /* the RGB565 true colour mode */
@@ -258,14 +263,14 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_CLR);
 
 	/* enable LCD using LCD_RESET signal*/
-	if (fbi->pdata->flags & USE_LCD_RESET)
+	if (fbi->flags & USE_LCD_RESET)
 		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_SET);
 
 	/* start the engine right now */
 	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + STMP_OFFSET_REG_SET);
 
-	if (fbi->pdata->enable)
-		fbi->pdata->enable(1);
+	if (fbi->enable)
+		fbi->enable(1);
 }
 
 static void stmfb_disable_controller(struct fb_info *fb_info)
@@ -276,11 +281,11 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 
 
 	/* disable LCD using LCD_RESET signal*/
-	if (fbi->pdata->flags & USE_LCD_RESET)
+	if (fbi->flags & USE_LCD_RESET)
 		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_CLR);
 
-	if (fbi->pdata->enable)
-		fbi->pdata->enable(0);
+	if (fbi->enable)
+		fbi->enable(0);
 
 	/*
 	 * Even if we disable the controller here, it will still continue
@@ -306,7 +311,6 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 static int stmfb_activate_var(struct fb_info *fb_info)
 {
 	struct imxfb_info *fbi = fb_info->priv;
-	struct imx_fb_platformdata *pdata = fbi->pdata;
 	struct fb_videomode *mode = fb_info->mode;
 	uint32_t reg;
 	unsigned size;
@@ -317,11 +321,11 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
 		mode->yres;
 
-	if (pdata && pdata->fixed_screen) {
-		if (pdata->fixed_screen_size < size)
+	if (fbi->fixed_screen) {
+		if (fbi->fixed_screen_size < size)
 			return -ENOMEM;
-		fb_info->screen_base = pdata->fixed_screen;
-		fbi->memory_size = pdata->fixed_screen_size;
+		fb_info->screen_base = fbi->fixed_screen;
+		fbi->memory_size = fbi->fixed_screen_size;
 	} else {
 		fb_info->screen_base = xrealloc(fb_info->screen_base, size);
 		fbi->memory_size = size;
@@ -349,7 +353,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	/*
 	 * Configure videomode and interface mode
 	 */
-	reg |= SET_BUS_WIDTH(pdata->ld_intf_width);
+	reg |= SET_BUS_WIDTH(fbi->ld_intf_width);
+
 	switch (fb_info->bits_per_pixel) {
 	case 8:
 		reg |= SET_WORD_LENGTH(1);
@@ -370,7 +375,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	case 32:
 		pr_debug("Setting up an RGB888/666 mode\n");
 		reg |= SET_WORD_LENGTH(3);
-		switch (pdata->ld_intf_width) {
+
+		switch (fbi->ld_intf_width) {
 		case STMLCDIF_8BIT:
 			dev_dbg(fbi->hw_dev,
 				"Unsupported LCD bus width mapping\n");
@@ -442,7 +448,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 
 	writel(
 #ifdef CONFIG_ARCH_IMX28
-		SET_DOTCLK_DLY(pdata->dotclk_delay) |
+		SET_DOTCLK_DLY(fbi->dotclk_delay) |
 #endif
 		SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
 		fbi->base + HW_LCDIF_VDCTRL4);
@@ -480,7 +486,6 @@ static int stmfb_probe(struct device_d *hw_dev)
 	/* add runtime hardware info */
 	fbi.hw_dev = hw_dev;
 	fbi.base = dev_request_mem_region(hw_dev, 0);
-	fbi.pdata = pdata;
 	fbi.clk = clk_get(hw_dev, NULL);
 	if (IS_ERR(fbi.clk))
 		return PTR_ERR(fbi.clk);
@@ -493,6 +498,11 @@ static int stmfb_probe(struct device_d *hw_dev)
 		fbi.info.modes.modes = pdata->mode_list;
 		fbi.info.modes.num_modes = pdata->mode_cnt;
 		fbi.info.mode = &fbi.info.modes.modes[0];
+		fbi.flags = pdata->flags;
+		fbi.enable = pdata->enable;
+		fbi.fixed_screen = pdata->fixed_screen;
+		fbi.fixed_screen_size = pdata->fixed_screen_size;
+		fbi.ld_intf_width = pdata->ld_intf_width;
 		if (pdata->bits_per_pixel)
 			fbi.info.bits_per_pixel = pdata->bits_per_pixel;
 	} else {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
