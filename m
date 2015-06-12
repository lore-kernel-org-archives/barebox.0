Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3Lf4-0004a8-3x
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:36 +0200
Message-Id: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] video: stmfb: Add device tree support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 52 ++++++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 42 insertions(+), 10 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 3c90c0d..bf913f1 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -317,7 +317,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
 		mode->yres;
 
-	if (pdata->fixed_screen) {
+	if (pdata && pdata->fixed_screen) {
 		if (pdata->fixed_screen_size < size)
 			return -ENOMEM;
 		fb_info->screen_base = pdata->fixed_screen;
@@ -497,16 +497,37 @@ static int stmfb_probe(struct device_d *hw_dev)
 		return PTR_ERR(fbi.clk);
 	clk_enable(fbi.clk);
 
+	fbi.info.bits_per_pixel = 16;
+
 	/* add runtime video info */
-	fbi.info.modes.modes = pdata->mode_list;
-	fbi.info.modes.num_modes = pdata->mode_cnt;
-	fbi.info.mode = &fbi.info.modes.modes[0];
-	fbi.info.xres = fbi.info.mode->xres;
-	fbi.info.yres = fbi.info.mode->yres;
-	if (pdata->bits_per_pixel)
-		fbi.info.bits_per_pixel = pdata->bits_per_pixel;
-	else
-		fbi.info.bits_per_pixel = 16;
+	if (pdata) {
+		fbi.info.modes.modes = pdata->mode_list;
+		fbi.info.modes.num_modes = pdata->mode_cnt;
+		fbi.info.mode = &fbi.info.modes.modes[0];
+		if (pdata->bits_per_pixel)
+			fbi.info.bits_per_pixel = pdata->bits_per_pixel;
+	} else {
+		struct display_timings *modes;
+		struct device_node *display;
+
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !hw_dev->device_node)
+			return -EINVAL;
+
+		display = of_parse_phandle(hw_dev->device_node, "display", 0);
+		if (!display) {
+			dev_err(hw_dev, "no display phandle\n");
+			return -EINVAL;
+		}
+
+		modes = of_get_display_timings(display);
+		if (IS_ERR(modes)) {
+			dev_err(hw_dev, "unable to parse display timings\n");
+			return PTR_ERR(modes);
+		}
+
+		fbi.info.modes.modes = modes->modes;
+		fbi.info.modes.num_modes = modes->num_modes;
+	}
 
 	hw_dev->info = stmfb_info;
 
@@ -519,9 +540,20 @@ static int stmfb_probe(struct device_d *hw_dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id stmfb_compatible[] = {
+	{
+		.compatible = "fsl,imx23-lcdif",
+	}, {
+		.compatible = "fsl,imx28-lcdif",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d stmfb_driver = {
 	.name	= "stmfb",
 	.probe	= stmfb_probe,
+	.of_compatible = DRV_OF_COMPAT(stmfb_compatible),
 };
 device_platform_driver(stmfb_driver);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
