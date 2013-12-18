Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RF-Oq
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:33 +0100
Message-Id: <1387381362-7780-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] video: ipufb: make disp_data_fmt configurable
To: barebox@lists.infradead.org

With the IPU the way the display is connected is completely independent
of the framebuffer pixel format. So instead of specifying a pixel width
in platform_data we have to specify how the display is connected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h | 15 ++++++++++
 drivers/video/imx-ipu-fb.c                  | 44 ++++++++++++-----------------
 2 files changed, 33 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index 74a1a88..43b3bda 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -22,12 +22,27 @@
 #define FB_SYNC_CLK_SEL_EN	0x02000000
 
 /*
+ * Specify the way your display is connected. The IPU can arbitrarily
+ * map the internal colors to the external data lines. We only support
+ * the following mappings at the moment.
+ */
+enum disp_data_mapping {
+	/* blue -> d[0..5], green -> d[6..11], red -> d[12..17] */
+	IPU_DISP_DATA_MAPPING_RGB666,
+	/* blue -> d[0..4], green -> d[5..10], red -> d[11..15] */
+	IPU_DISP_DATA_MAPPING_RGB565,
+	/* blue -> d[0..7], green -> d[8..15], red -> d[16..23] */
+	IPU_DISP_DATA_MAPPING_RGB888,
+};
+
+/*
  * struct mx3fb_platform_data - mx3fb platform data
  */
 struct imx_ipu_fb_platform_data {
 	struct fb_videomode	*mode;
 	unsigned char		bpp;
 	u_int			num_modes;
+	enum disp_data_mapping	disp_data_fmt;
 	void __iomem		*framebuffer;
 	void __iomem		*framebuffer_ovl;
 	/** hook to enable backlight and stuff */
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index b2ed723..8391b1d 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -36,6 +36,8 @@ struct ipu_fb_info {
 
 	void			(*enable)(int enable);
 
+	enum disp_data_mapping	disp_data_fmt;
+
 	struct fb_info		info;
 	struct fb_info		overlay;
 	struct device_d		*dev;
@@ -91,26 +93,14 @@ enum pixel_fmt {
 	IPU_PIX_FMT_RGB24,
 };
 
-struct pixel_fmt_cfg {
-	u32	b0;
-	u32	b1;
-	u32	b2;
-	u32	acc;
+struct di_mapping {
+	uint32_t b0, b1, b2;
 };
 
-static struct pixel_fmt_cfg fmt_cfg[] = {
-	[IPU_PIX_FMT_RGB24] = {
-		0x1600AAAA, 0x00E05555, 0x00070000, 3,
-	},
-	[IPU_PIX_FMT_RGB666] = {
-		0x0005000F, 0x000B000F, 0x0011000F, 1,
-	},
-	[IPU_PIX_FMT_BGR666] = {
-		0x0011000F, 0x000B000F, 0x0005000F, 1,
-	},
-	[IPU_PIX_FMT_RGB565] = {
-		0x0004003F, 0x000A000F, 0x000F003F, 1,
-	}
+static const struct di_mapping di_mappings[] = {
+	[IPU_DISP_DATA_MAPPING_RGB666] = { 0x0005000f, 0x000b000f, 0x0011000f },
+	[IPU_DISP_DATA_MAPPING_RGB565] = { 0x0004003f, 0x000a000f, 0x000f003f },
+	[IPU_DISP_DATA_MAPPING_RGB888] = { 0x00070000, 0x000f0000, 0x00170000 },
 };
 
 enum ipu_panel {
@@ -421,7 +411,7 @@ static inline void reg_write(struct ipu_fb_info *fbi, u32 value,
  * @pixel_fmt:		pixel format of buffer as FOURCC ASCII code.
  * @return:		0 on success or negative error code on failure.
  */
-static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
+static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 {
 	struct ipu_fb_info *fbi = info->priv;
 	struct fb_videomode *mode = info->mode;
@@ -502,11 +492,10 @@ static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
 	 */
 	reg_write(fbi, (((div / 8) - 1) << 22) | div, DI_DISP3_TIME_CONF);
 
-	reg_write(fbi, fmt_cfg[pixel_fmt].b0, DI_DISP3_B0_MAP);
-	reg_write(fbi, fmt_cfg[pixel_fmt].b1, DI_DISP3_B1_MAP);
-	reg_write(fbi, fmt_cfg[pixel_fmt].b2, DI_DISP3_B2_MAP);
-	reg_write(fbi, reg_read(fbi, DI_DISP_ACC_CC) |
-		  ((fmt_cfg[pixel_fmt].acc - 1) << 12), DI_DISP_ACC_CC);
+	reg_write(fbi, di_mappings[fmt].b0, DI_DISP3_B0_MAP);
+	reg_write(fbi, di_mappings[fmt].b1, DI_DISP3_B1_MAP);
+	reg_write(fbi, di_mappings[fmt].b2, DI_DISP3_B2_MAP);
+	reg_write(fbi, 0, DI_DISP_ACC_CC);
 
 	return 0;
 }
@@ -581,6 +570,8 @@ static u32 bpp_to_pixfmt(int bpp)
 	switch (bpp) {
 	case 16:
 		return IPU_PIX_FMT_RGB565;
+	case 32:
+		return IPU_PIX_FMT_RGB24;
 	default:
 		return 0;
 	}
@@ -786,7 +777,7 @@ static void ipu_fb_enable(struct fb_info *info)
 		~(SDC_COM_KEY_COLOR_G);
 	reg_write(fbi, reg, SDC_COM_CONF);
 
-	sdc_init_panel(info, IPU_PIX_FMT_RGB666);
+	sdc_init_panel(info, fbi->disp_data_fmt);
 
 	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
 			SDC_BG_POS);
@@ -876,7 +867,7 @@ static void ipu_fb_overlay_enable_controller(struct fb_info *overlay)
 	struct fb_videomode *mode = overlay->mode;
 	int reg;
 
-	sdc_init_panel(overlay, IPU_PIX_FMT_RGB666);
+	sdc_init_panel(overlay, fbi->disp_data_fmt);
 
 	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
 							SDC_FG_POS);
@@ -988,6 +979,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->regs = dev_request_mem_region(dev, 0);
 	fbi->dev = dev;
 	fbi->enable = pdata->enable;
+	fbi->disp_data_fmt = pdata->disp_data_fmt;
 	info->priv = fbi;
 	info->fbops = &imxfb_ops;
 	info->num_modes = pdata->num_modes;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
