Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQR4-0001dv-P7
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:31 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:51:01 +0100
Message-Id: <1290171063-28870-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
References: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/11] Provide more driver specific data in a videomode
To: barebox@lists.infradead.org

In order to support more than one videomode in a binary barebox, some drivers
need more specific data to setup the requested video mode in a correct manner.
This patch adds the 'priv' field to the generic videomode description to give
any platform a chance to forward some video hardware specific information on
a per videomode base.

This is currently i.MX21/i.MX25/i.MX27 specific.

BTW: At least the 'pcr' value could be generated at runtime from the 'sync'
field in 'struct fb_videomode'.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   21 +++++-----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   21 +++++-----
 arch/arm/boards/guf-neso/board.c                  |   45 +++++++++++----------
 arch/arm/boards/imx21ads/imx21ads.c               |   24 ++++++------
 arch/arm/boards/pcm038/pcm038.c                   |   40 +++++++++---------
 arch/arm/mach-imx/include/mach/imxfb.h            |   20 +++++----
 drivers/video/imx.c                               |   19 +++++----
 include/fb.h                                      |    2 +
 8 files changed, 99 insertions(+), 93 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 2b53766..a2bbaa3 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -107,7 +107,14 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc	= 1,
 };
 
-static struct fb_videomode cmo_display = {
+static const struct imx_fb_driver_data driver_data = {
+	.pwmr		= 0x00A903FF,
+	.lscr1		= 0x00120300,
+	.dmacr		= 0x80040060,
+	.pcr		= 0xCAD08B80,
+};
+
+static const struct fb_videomode cmo_display = {
 	.name		= "CMO-QVGA",
 	.refresh	= 60,
 	.xres		= 320,
@@ -121,17 +128,9 @@ static struct fb_videomode cmo_display = {
 	.lower_margin	= 4,
 };
 
-static struct imx_fb_videomode imxfb_mode = {
-	.mode		= &cmo_display,
-	.pcr		= 0xCAD08B80,
-	.bpp		= 16,
-};
-
 static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
-	.mode		= &imxfb_mode,
-	.pwmr		= 0x00A903FF,
-	.lscr1		= 0x00120300,
-	.dmacr		= 0x80040060,
+	.mode		= &cmo_display,
+	.mode_cnt	= 1,
 };
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 3ee1057..b162611 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -167,7 +167,14 @@ static void eukrea_cpuimx27_mmu_init(void)
 #endif
 
 #ifdef CONFIG_DRIVER_VIDEO_IMX
-static struct fb_videomode cmo_display = {
+static const struct imx_fb_driver_data driver_data = {
+	.pwmr	= 0x00A903FF,
+	.lscr1	= 0x00120300,
+	.dmacr	= 0x00020010,
+	.pcr	= 0xFAD08B80,
+};
+
+static const struct fb_videomode cmo_display = {
 	.name		= "CMO-QVGA",
 	.refresh	= 60,
 	.xres		= 320,
@@ -179,18 +186,12 @@ static struct fb_videomode cmo_display = {
 	.vsync_len	= 3,
 	.upper_margin	= 15,
 	.lower_margin	= 4,
+	.priv		= &driver_data,
 };
 
-static struct imx_fb_videomode imxfb_mode = {
-	.mode		= &cmo_display,
-	.pcr		= 0xFAD08B80,
-	.bpp		= 16,};
-
 static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
-	.mode	= &imxfb_mode,
-	.pwmr	= 0x00A903FF,
-	.lscr1	= 0x00120300,
-	.dmacr	= 0x00020010,
+	.mode	= &cmo_display,
+	.mode_cnt = 1,
 };
 
 static struct device_d imxfb_dev = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index fba43bb..0c7a9fa 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -78,22 +78,11 @@ static struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct fb_videomode cpt_display = {
-	.name		= "CPT CLAA070LC0JCT",
-	.refresh	= 60,
-	.xres		= 800,
-	.yres		= 480,
-	.pixclock	= KHZ2PICOS(27000),
-	.hsync_len	= 1,	/* DE only sync */
-	.left_margin	= 50,
-	.right_margin	= 50,
-	.vsync_len	= 1,	/* DE only sync */
-	.upper_margin	= 10,
-	.lower_margin	= 10,
-};
-
-static struct imx_fb_videomode imxfb_mode = {
-	.mode = &cpt_display,
+static const struct imx_fb_driver_data driver_data = {
+	.pwmr	= 0x00000000,	/* doesn't matter */
+	.lscr1	= 0x00120300,	/* doesn't matter */
+	/* dynamic mode -> using the reset values (as recommended in the datasheet) */
+	.dmacr	= (0 << 31) | (4 << 16) | 96,
 	/*
 	 * - TFT style panel
 	 * - clk enabled while idle
@@ -109,7 +98,21 @@ static struct imx_fb_videomode imxfb_mode = {
 		PCR_SCLK_SEL |
 		PCR_LPPOL |
 		PCR_FLMPOL,
-	.bpp = 16,	/* TODO 32 bit does not work: The 'green' component is lacking in this mode */
+};
+
+static struct fb_videomode cpt_display = {
+	.name		= "CPT CLAA070LC0JCT",
+	.refresh	= 60,
+	.xres		= 800,
+	.yres		= 480,
+	.pixclock	= KHZ2PICOS(27000),
+	.hsync_len	= 1,	/* DE only sync */
+	.left_margin	= 50,
+	.right_margin	= 50,
+	.vsync_len	= 1,	/* DE only sync */
+	.upper_margin	= 10,
+	.lower_margin	= 10,
+	.priv		= &driver_data,
 };
 
 static void neso_fb_enable(int enable)
@@ -119,12 +122,10 @@ static void neso_fb_enable(int enable)
 }
 
 static struct imx_fb_platform_data neso_fb_data = {
-	.mode	= &imxfb_mode,
-	.pwmr	= 0x00000000,	/* doesn't matter */
-	.lscr1	= 0x00120300,	/* doesn't matter */
-	/* dynamic mode -> using the reset values (as recommended in the datasheet) */
-	.dmacr	= (0 << 31) | (4 << 16) | 96,
+	.mode	= &cpt_display,
+	.mode_cnt = 1,
 	.enable	= neso_fb_enable,
+	.bpp = 16,	/* TODO 32 bit does not work: The 'green' component is lacking in this mode */
 	.framebuffer_ovl = (void *)0xa7f00000,
 };
 
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 8e145c7..299a3cd 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -73,7 +73,14 @@ static struct device_d cs8900_dev = {
 	// IRQ is connected to UART3_RTS
 };
 
-static struct fb_videomode sharp_display = {
+static const struct imx_fb_driver_data driver_data = {
+	.pwmr           = 0x00a903ff,
+	.lscr1          = 0x00120300,
+	.dmacr          = 0x00020008,
+        .pcr            = 0xfb108bc7,
+};
+
+static const struct fb_videomode sharp_display = {
 	.name           = "Sharp-LQ035Q7",
 	.refresh        = 60,
 	.xres           = 240,
@@ -88,23 +95,16 @@ static struct fb_videomode sharp_display = {
 	.sync           = 0,
 	.vmode          = FB_VMODE_NONINTERLACED,
 	.flag           = 0,
-};
-
-/* Sharp LQ035Q7DB02 QVGA display */
-static struct imx_fb_videomode imx_fb_modedata = {
-        .mode           = &sharp_display,
-        .pcr            = 0xfb108bc7,
-        .bpp            = 16,
+	.priv		= &driver_data,
 };
 
 static struct imx_fb_platform_data imx_fb_data = {
-	.mode           = &imx_fb_modedata,
+/* Sharp LQ035Q7DB02 QVGA display */
+	.mode           = &sharp_display,
+	.mode_cnt	= 1,
 	.cmap_greyscale = 0,
 	.cmap_inverse   = 0,
 	.cmap_static    = 0,
-	.pwmr           = 0x00a903ff,
-	.lscr1          = 0x00120300,
-	.dmacr          = 0x00020008,
 };
 
 static int imx21ads_timing_init(void)
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 8cbb551..d5269f1 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -107,7 +107,23 @@ static struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct fb_videomode sharp_display = {
+static const struct imx_fb_driver_data driver_data = {
+	/*
+	 * - HSYNC active high
+	 * - VSYNC active high
+	 * - clk notenabled while idle
+	 * - clock not inverted
+	 * - data not inverted
+	 * - data enable low active
+	 * - enable sharp mode
+	 */
+	.pwmr	= 0x00A903FF,
+	.lscr1	= 0x00120300,
+	.dmacr	= 0x00020010,
+	.pcr	= 0xF00080C0,
+};
+
+static const struct fb_videomode sharp_display = {
 	.name		= "Sharp-LQ035Q7",
 	.refresh	= 60,
 	.xres		= 240,
@@ -119,28 +135,12 @@ static struct fb_videomode sharp_display = {
 	.vsync_len	= 1,
 	.upper_margin	= 7,
 	.lower_margin	= 9,
-};
-
-static struct imx_fb_videomode imxfb_mode = {
-	.mode		= &sharp_display,
-	/*
-	 * - HSYNC active high
-	 * - VSYNC active high
-	 * - clk notenabled while idle
-	 * - clock not inverted
-	 * - data not inverted
-	 * - data enable low active
-	 * - enable sharp mode
-	 */
-	.pcr		= 0xF00080C0,
-	.bpp		= 16,
+	.priv		= &driver_data,
 };
 
 static struct imx_fb_platform_data pcm038_fb_data = {
-	.mode	= &imxfb_mode,
-	.pwmr	= 0x00A903FF,
-	.lscr1	= 0x00120300,
-	.dmacr	= 0x00020010,
+	.mode	= &sharp_display,
+	.mode_cnt = 1,
 };
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index 4a890a7..f2083c4 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -52,28 +52,30 @@
 #define DMACR_HM(x)	(((x) & 0xf) << 16)
 #define DMACR_TM(x)	((x) & 0xf)
 
-struct imx_fb_videomode {
-	struct fb_videomode *mode;
-	u32 pcr;
-	unsigned char	bpp;
+/**
+ * Videomode dependent, but driver specific data
+ */
+struct imx_fb_driver_data {
+	uint32_t	pwmr;	/**< refer datasheet: LPCCR register */
+	uint32_t	lscr1;	/**< refer datasheet: LSCR register */
+	uint32_t	dmacr;	/**< refer datasheet: LDCR register */
+	uint32_t	pcr;	/**< refer datasheet: LPCR register */
 };
 
 /**
  * Define relevant framebuffer information
  */
 struct imx_fb_platform_data {
-	struct imx_fb_videomode *mode;
+	const struct fb_videomode *mode;
 	unsigned mode_cnt;	/**< number of entries in 'mode' */
 
+	unsigned char	bpp;	/**< preferred colour depth for this device */
+
 	u_int		cmap_greyscale:1,
 			cmap_inverse:1,
 			cmap_static:1,
 			unused:29;
 
-	u_int		pwmr;
-	u_int		lscr1;
-	u_int		dmacr;
-
 	/** force a memory area to be used, else NULL for dynamic allocation */
 	void		*framebuffer;
 	/** force a memory area to be used, else NULL for dynamic allocation */
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index b13f39d..69ba3e7 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -332,6 +332,7 @@ static int imxfb_initialize_mode(struct fb_info *info,
 	unsigned long lcd_clk;
 	unsigned long long tmp;
 	struct imxfb_info *fbi = fb_info_to_imxfb_info(info);
+	const struct imx_fb_driver_data *drv_data = mode->priv;
 	u32 pcr;
 	unsigned size;
 
@@ -342,6 +343,11 @@ static int imxfb_initialize_mode(struct fb_info *info,
 
 	imxfb_memory_mmgt(info, size, MAIN_FBUFFER);
 
+	fbi->pcr = drv_data->pcr;
+	fbi->pwmr = drv_data->pwmr;
+	fbi->lscr1 = drv_data->lscr1;
+	fbi->dmacr = drv_data->dmacr;
+
 	/* physical screen start address	    */
 	writel(VPW_VPW(mode->xres * info->bits_per_pixel / 8 / 4),
 		fbi->regs + LCDC_VPW);
@@ -541,7 +547,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi,
 	overlay->fb_setcolreg = imxfb_overlay_setcolreg;
 
 	/* add runtime video info */
-	overlay->mode = pdata->mode->mode;
+	overlay->mode = pdata->mode;
 	overlay->mode_cnt = 1;	/* no choice */
 
 	overlay_dev = register_framebuffer(overlay);
@@ -591,17 +597,12 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->fb_host.fb_setcolreg = imxfb_setcolreg;
 
 	fbi->regs = (void*)dev->map_base;
-	fbi->pcr = pdata->mode->pcr;
-	fbi->pwmr = pdata->pwmr;
-	fbi->lscr1 = pdata->lscr1;
-	fbi->dmacr = pdata->dmacr;
 	fbi->enable = pdata->enable;
 
 	/* add runtime video info */
-	fbi->fb_host.mode = pdata->mode->mode;
-	/* to be backward compatible */
-	fbi->fb_host.mode_cnt = pdata->mode_cnt == 0 ? 1 : pdata->mode_cnt;
-	fbi->fb_host.bits_per_pixel = 16;	/* RGB565, the default */
+	fbi->fb_host.mode = pdata->mode;
+	fbi->fb_host.mode_cnt = pdata->mode_cnt;
+	fbi->fb_host.bits_per_pixel = pdata->bpp;
 
 	fb_dev = register_framebuffer(&fbi->fb_host);
 	if (dev == NULL) {
diff --git a/include/fb.h b/include/fb.h
index 7e01e87..a9ad447 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -69,6 +69,8 @@ struct fb_videomode {
 	unsigned sync;		/**< sync information, refer FB_SYNC_* macros */
 	unsigned vmode;		/**< video mode information, refer FB_VMODE_* macros */
 	unsigned flag;
+
+	const void *priv;	/**< video driver related information */
 };
 
 /* Interpretation of offset for color fields: All offsets are from the right,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
