Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAhkw-0007kn-BG
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 11:31:56 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Oct 2010 13:31:37 +0200
Message-Id: <1288092708-5187-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/12] Separate framebuffer platformdata and the videomode
To: barebox@lists.infradead.org

This patch separates the imx platformdata and its videomode in two structures,
in order to support more than one defined videomode in the boardfile. This
is intended to support runtime videomode selection later on. It also uses
now the same videomode setup style than the imx-fpu based systems (like the
i.MX35).

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   28 +++++++++--------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   28 +++++++++--------
 arch/arm/boards/guf-neso/board.c                  |   28 +++++++++--------
 arch/arm/boards/imx21ads/imx21ads.c               |   34 +++++++++++----------
 arch/arm/boards/pcm038/pcm038.c                   |   28 +++++++++--------
 arch/arm/mach-imx/include/mach/imxfb.h            |    2 +-
 drivers/video/imx.c                               |    6 ++--
 7 files changed, 82 insertions(+), 72 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 805ffe2..032897a 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -120,20 +120,22 @@ static struct device_d nand_dev = {
 	.platform_data	= &nand_info,
 };
 
+static struct fb_videomode cmo_display = {
+	.name		= "CMO-QVGA",
+	.refresh	= 60,
+	.xres		= 320,
+	.yres		= 240,
+	.pixclock	= KHZ2PICOS(6500),
+	.hsync_len	= 30,
+	.left_margin	= 38,
+	.right_margin	= 20,
+	.vsync_len	= 3,
+	.upper_margin	= 15,
+	.lower_margin	= 4,
+};
+
 static struct imx_fb_videomode imxfb_mode = {
-	.mode = {
-		.name		= "CMO-QVGA",
-		.refresh	= 60,
-		.xres		= 320,
-		.yres		= 240,
-		.pixclock	= KHZ2PICOS(6500),
-		.hsync_len	= 30,
-		.left_margin	= 38,
-		.right_margin	= 20,
-		.vsync_len	= 3,
-		.upper_margin	= 15,
-		.lower_margin	= 4,
-	},
+	.mode		= &cmo_display,
 	.pcr		= 0xCAD08B80,
 	.bpp		= 16,
 };
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 62fc14e..3ea2466 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -186,20 +186,22 @@ static void eukrea_cpuimx27_mmu_init(void)
 #endif
 
 #ifdef CONFIG_DRIVER_VIDEO_IMX
+static struct fb_videomode cmo_display = {
+	.name		= "CMO-QVGA",
+	.refresh	= 60,
+	.xres		= 320,
+	.yres		= 240,
+	.pixclock	= 156000,
+	.hsync_len	= 30,
+	.left_margin	= 38,
+	.right_margin	= 20,
+	.vsync_len	= 3,
+	.upper_margin	= 15,
+	.lower_margin	= 4,
+};
+
 static struct imx_fb_videomode imxfb_mode = {
-	.mode = {
-		.name		= "CMO-QVGA",
-		.refresh	= 60,
-		.xres		= 320,
-		.yres		= 240,
-		.pixclock	= 156000,
-		.hsync_len	= 30,
-		.left_margin	= 38,
-		.right_margin	= 20,
-		.vsync_len	= 3,
-		.upper_margin	= 15,
-		.lower_margin	= 4,
-	},
+	.mode		= &cmo_display,
 	.pcr		= 0xFAD08B80,
 	.bpp		= 16,};
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 9c85c08..6949675 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -91,20 +91,22 @@ static struct device_d nand_dev = {
 	.platform_data	= &nand_info,
 };
 
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
+};
+
 static struct imx_fb_videomode imxfb_mode = {
-	.mode = {
-		.name		= "CPT CLAA070LC0JCT",
-		.refresh	= 60,
-		.xres		= 800,
-		.yres		= 480,
-		.pixclock	= KHZ2PICOS(27000),
-		.hsync_len	= 1,	/* DE only sync */
-		.left_margin	= 50,
-		.right_margin	= 50,
-		.vsync_len	= 1,	/* DE only sync */
-		.upper_margin	= 10,
-		.lower_margin	= 10,
-	},
+	.mode = &cpt_display,
 	/*
 	 * - TFT style panel
 	 * - clk enabled while idle
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 44d37aa..81006de 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -79,24 +79,26 @@ static struct device_d cs8900_dev = {
 	// IRQ is connected to UART3_RTS
 };
 
+static struct fb_videomode sharp_display = {
+	.name           = "Sharp-LQ035Q7",
+	.refresh        = 60,
+	.xres           = 240,
+	.yres           = 320,
+	.pixclock       = 188679,
+	.left_margin    = 6,
+	.right_margin   = 16,
+	.upper_margin   = 8,
+	.lower_margin   = 10,
+	.hsync_len      = 2,
+	.vsync_len      = 1,
+	.sync           = 0,
+	.vmode          = FB_VMODE_NONINTERLACED,
+	.flag           = 0,
+};
+
 /* Sharp LQ035Q7DB02 QVGA display */
 static struct imx_fb_videomode imx_fb_modedata = {
-        .mode = {
-		.name           = "Sharp-LQ035Q7",
-		.refresh        = 60,
-		.xres           = 240,
-		.yres           = 320,
-		.pixclock       = 188679,
-		.left_margin    = 6,
-		.right_margin   = 16,
-		.upper_margin   = 8,
-		.lower_margin   = 10,
-		.hsync_len      = 2,
-		.vsync_len      = 1,
-		.sync           = 0,
-		.vmode          = FB_VMODE_NONINTERLACED,
-		.flag           = 0,
-	},
+        .mode           = &sharp_display,
         .pcr            = 0xfb108bc7,
         .bpp            = 16,
 };
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 3a9b413..026e9c0 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -127,20 +127,22 @@ static struct device_d nand_dev = {
 	.platform_data	= &nand_info,
 };
 
+static struct fb_videomode sharp_display = {
+	.name		= "Sharp-LQ035Q7",
+	.refresh	= 60,
+	.xres		= 240,
+	.yres		= 320,
+	.pixclock	= 188679, /* in ps (5.3MHz) */
+	.hsync_len	= 7,
+	.left_margin	= 5,
+	.right_margin	= 16,
+	.vsync_len	= 1,
+	.upper_margin	= 7,
+	.lower_margin	= 9,
+};
+
 static struct imx_fb_videomode imxfb_mode = {
-	.mode = {
-		.name		= "Sharp-LQ035Q7",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 188679, /* in ps (5.3MHz) */
-		.hsync_len	= 7,
-		.left_margin	= 5,
-		.right_margin	= 16,
-		.vsync_len	= 1,
-		.upper_margin	= 7,
-		.lower_margin	= 9,
-	},
+	.mode		= &sharp_display,
 	/*
 	 * - HSYNC active high
 	 * - VSYNC active high
diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index 16b43ea..7baa244 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -50,7 +50,7 @@
 #define DMACR_TM(x)	((x) & 0xf)
 
 struct imx_fb_videomode {
-	struct fb_videomode mode;
+	struct fb_videomode *mode;
 	u32 pcr;
 	unsigned char	bpp;
 };
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index ac51858..6ccd77e 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -555,9 +555,9 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->enable = pdata->enable;
 	fbi->dev = dev;
 	info->priv = fbi;
-	info->mode = &pdata->mode->mode;
-	info->xres = pdata->mode->mode.xres;
-	info->yres = pdata->mode->mode.yres;
+	info->mode = pdata->mode->mode;
+	info->xres = pdata->mode->mode->xres;
+	info->yres = pdata->mode->mode->yres;
 	info->bits_per_pixel = pdata->mode->bpp;
 	info->fbops = &imxfb_ops;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
