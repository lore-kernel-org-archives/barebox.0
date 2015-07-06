Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lN-0002T8-Ti
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:08 +0200
Message-Id: <1436178974-20064-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] video: stm: code buswidth in platform data as decimal
To: Barebox List <barebox@lists.infradead.org>

Instead of putting hardware specific bit masks in platform_data just
use the decimal interface width and encode this in the driver. This
makes it easier to create the platform_data and helps device tree
based implementations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |  2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |  2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c          |  2 +-
 arch/arm/mach-mxs/include/mach/fb.h            |  7 +-----
 drivers/video/stm.c                            | 32 +++++++++++++++++++++-----
 5 files changed, 30 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 5e569bc..c866043 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -83,7 +83,7 @@ static struct imx_fb_platformdata fb_mode = {
 	.mode_list = &falconwing_vmode,
 	.mode_cnt = 1,
 	/* the NMA35 is a 24 bit display, but only 18 bits are connected */
-	.ld_intf_width = STMLCDIF_18BIT,
+	.ld_intf_width = 18,
 	.enable = chumby_fb_enable,
 	.fixed_screen = (void *)(0x40000000 + SZ_64M - MAX_FB_SIZE),
 	.fixed_screen_size = MAX_FB_SIZE,
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index d77a6c7..fc12375 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -226,7 +226,7 @@ static struct imx_fb_platformdata mx28_evk_fb_pdata = {
 	.mode_list = mx28_evk_vmodes,
 	.mode_cnt = ARRAY_SIZE(mx28_evk_vmodes),
 	.dotclk_delay = 0,			/* no adaption required */
-	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+	.ld_intf_width = 24,
 	.bits_per_pixel = 32,
 	.fixed_screen = NULL,
 	.enable = mx28_evk_fb_enable,
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 9b86d1c..d67607b 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -195,7 +195,7 @@ static struct imx_fb_platformdata tx28_fb_pdata = {
 	.mode_list = tx28evk_vmodes,
 	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
 	.dotclk_delay = 0,	/* no adaption required */
-	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+	.ld_intf_width = 24,
 	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
 	.fixed_screen_size = MAX_FB_SIZE,
 	.enable = tx28_fb_enable,
diff --git a/arch/arm/mach-mxs/include/mach/fb.h b/arch/arm/mach-mxs/include/mach/fb.h
index 2b6825f..ad28f79 100644
--- a/arch/arm/mach-mxs/include/mach/fb.h
+++ b/arch/arm/mach-mxs/include/mach/fb.h
@@ -15,11 +15,6 @@
 
 #include <fb.h>
 
-#define STMLCDIF_8BIT 1	/** pixel data bus to the display is of 8 bit width */
-#define STMLCDIF_16BIT 0 /** pixel data bus to the display is of 16 bit width */
-#define STMLCDIF_18BIT 2 /** pixel data bus to the display is of 18 bit width */
-#define STMLCDIF_24BIT 3 /** pixel data bus to the display is of 24 bit width */
-
 /** LC display uses active high data enable signal */
 #define FB_SYNC_DE_HIGH_ACT	(1 << 27)
 /** LC display will latch its data at clock's rising edge */
@@ -38,7 +33,7 @@ struct imx_fb_platformdata {
 	unsigned mode_cnt;
 
 	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
-	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
+	unsigned ld_intf_width;	/* interface width in bits */
 	unsigned bits_per_pixel;
 
 	void *fixed_screen;	/**< if != NULL use this as framebuffer memory */
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index c58b62c..92bff9c 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -36,7 +36,10 @@
 # define CTRL_VSYNC_MODE (1 << 18)
 # define CTRL_DOTCLK_MODE (1 << 17)
 # define CTRL_DATA_SELECT (1 << 16)
-# define SET_BUS_WIDTH(x) (((x) & 0x3) << 10)
+# define CTRL_BUS_WIDTH_8 (1 << 10)
+# define CTRL_BUS_WIDTH_16 (0 << 10)
+# define CTRL_BUS_WIDTH_18 (2 << 10)
+# define CTRL_BUS_WIDTH_24 (3 << 10)
 # define SET_WORD_LENGTH(x) (((x) & 0x3) << 8)
 # define GET_WORD_LENGTH(x) (((x) >> 8) & 0x3)
 # define CTRL_MASTER (1 << 5)
@@ -353,7 +356,24 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	/*
 	 * Configure videomode and interface mode
 	 */
-	reg |= SET_BUS_WIDTH(fbi->ld_intf_width);
+	switch (fbi->ld_intf_width) {
+	case 8:
+		reg |= CTRL_BUS_WIDTH_8;
+		break;
+	case 16:
+		reg |= CTRL_BUS_WIDTH_16;
+		break;
+	case 18:
+		reg |= CTRL_BUS_WIDTH_18;
+		break;
+	case 24:
+		reg |= CTRL_BUS_WIDTH_24;
+		break;
+	default:
+		dev_err(fbi->hw_dev, "Unsupported interface width %d\n",
+				fbi->ld_intf_width);
+		return -EINVAL;
+	}
 
 	switch (fb_info->bits_per_pixel) {
 	case 8:
@@ -377,12 +397,12 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		reg |= SET_WORD_LENGTH(3);
 
 		switch (fbi->ld_intf_width) {
-		case STMLCDIF_8BIT:
+		case 8:
 			dev_dbg(fbi->hw_dev,
 				"Unsupported LCD bus width mapping\n");
 			break;
-		case STMLCDIF_16BIT:
-		case STMLCDIF_18BIT:
+		case 16:
+		case 18:
 			/* 24 bit to 18 bit mapping
 			 * which means: ignore the upper 2 bits in
 			 * each colour component
@@ -393,7 +413,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 			fb_info->blue = def_rgb666[BLUE];
 			fb_info->transp =  def_rgb666[TRANSP];
 			break;
-		case STMLCDIF_24BIT:
+		case 24:
 			/* real 24 bit */
 			fb_info->red = def_rgb888[RED];
 			fb_info->green = def_rgb888[GREEN];
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
