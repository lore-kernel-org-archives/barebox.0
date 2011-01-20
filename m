Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00041l-Ca
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:59 +0100
Message-Id: <1295516821-8988-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] fb i.MX23/28: rename imx_fb_videomode to
	imx_fb_platformdata
To: barebox@lists.infradead.org

It's not a video mode, it contains video modes, so rename
the struct to what it actually is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |    2 +-
 arch/arm/mach-stm/include/mach/fb.h            |    2 +-
 drivers/video/stm.c                            |   12 ++++++------
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 0979630..d46431c 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -98,7 +98,7 @@ static struct fb_videomode falconwing_vmode = {
 	.flag = 0,
 };
 
-static struct imx_fb_videomode fb_mode = {
+static struct imx_fb_platformdata fb_mode = {
 	.mode_list = &falconwing_vmode,
 	.mode_cnt = 1,
 	/* the NMA35 is a 24 bit display, but only 18 bits are connected */
diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index 3c53f1a..5346306 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -31,7 +31,7 @@
 /** swap RGB to BGR */
 #define FB_SYNC_SWAP_RGB	(1 << 31)
 
-struct imx_fb_videomode {
+struct imx_fb_platformdata {
 	struct fb_videomode *mode_list;
 	unsigned mode_cnt;
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 8d6361e..83c39c8 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -142,7 +142,7 @@ struct imxfb_info {
 	unsigned memory_size;
 	struct fb_info info;
 	struct device_d *hw_dev;
-	struct imx_fb_videomode *pdata;
+	struct imx_fb_platformdata *pdata;
 };
 
 /* the RGB565 true colour mode */
@@ -293,7 +293,7 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 static int stmfb_activate_var(struct fb_info *fb_info)
 {
 	struct imxfb_info *fbi = fb_info->priv;
-	struct imx_fb_videomode *pdata = fbi->pdata;
+	struct imx_fb_platformdata *pdata = fbi->pdata;
 	struct fb_videomode *mode = fb_info->mode;
 	uint32_t reg;
 	unsigned size;
@@ -442,7 +442,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 
 static void stmfb_info(struct device_d *hw_dev)
 {
-	struct imx_fb_videomode *pdata = hw_dev->platform_data;
+	struct imx_fb_platformdata *pdata = hw_dev->platform_data;
 	unsigned u;
 
 	printf(" Supported video modes:\n");
@@ -469,7 +469,7 @@ static struct imxfb_info fbi = {
 
 static int stmfb_probe(struct device_d *hw_dev)
 {
-	struct imx_fb_videomode *pdata = hw_dev->platform_data;
+	struct imx_fb_platformdata *pdata = hw_dev->platform_data;
 	int ret;
 
 	/* just init */
@@ -524,8 +524,8 @@ device_initcall(stmfb_init);
  * (platform specific).
  *
  * For the developer: Don't forget to set the data bus width to the display
- * in the imx_fb_videomode structure. You will else end up with ugly colours.
+ * in the imx_fb_platformdata structure. You will else end up with ugly colours.
  * If you fight against jitter you can vary the clock delay. This is a feature
  * of the i.MX28 and you can vary it between 2 ns ... 8 ns in 2 ns steps. Give
- * the required value in the imx_fb_videomode structure.
+ * the required value in the imx_fb_platformdata structure.
  */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
