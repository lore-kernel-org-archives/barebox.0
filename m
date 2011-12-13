Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaNXo-00009z-Lr
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 08:17:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 33D84BF08D
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2011 09:22:17 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 13 Dec 2011 09:16:46 +0100
Message-Id: <1323764207-12082-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/2] imxfb: Add support for multiple video modes
To: barebox@lists.infradead.org

Add all available video modes to the framebuffer. devinfo fb0
shows the available modes. We can select a mode now.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/mach-imx/include/mach/imxfb.h |    1 +
 drivers/video/imx.c                    |   17 ++++++++++++++++-
 2 files changed, 17 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index b71b7f4..ea39e31 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -63,6 +63,7 @@ struct imx_fb_videomode {
  */
 struct imx_fb_platform_data {
 	struct imx_fb_videomode *mode;
+	u_int			num_modes;
 
 	u_int		cmap_greyscale:1,
 			cmap_inverse:1,
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 7ffbcb5..78179af 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -303,6 +303,14 @@ static int imxfb_activate_var(struct fb_info *info)
 	unsigned long long tmp;
 	struct imxfb_info *fbi = info->priv;
 	u32 pcr;
+	int i;
+
+	for (i = 0; i < info->num_modes; i++) {
+		if (!strcmp(fbi->mode[i].mode.name, mode->name)) {
+			fbi->pcr = fbi->mode[i].pcr;
+			break;
+		}
+	}
 
 	/* physical screen start address	    */
 	writel(VPW_VPW(mode->xres * info->bits_per_pixel / 8 / 4),
@@ -390,6 +398,7 @@ static struct fb_ops imxfb_ops = {
 	.fb_setcolreg	= imxfb_setcolreg,
 	.fb_enable	= imxfb_enable_controller,
 	.fb_disable	= imxfb_disable_controller,
+	.fb_activate_var = imxfb_activate_var,
 };
 
 #ifdef CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY
@@ -524,7 +533,8 @@ static int imxfb_probe(struct device_d *dev)
 	struct imxfb_info *fbi;
 	struct fb_info *info;
 	struct imx_fb_platform_data *pdata = dev->platform_data;
-	int ret;
+	struct fb_videomode *mode_list;
+	int ret, i;
 
 	if (!pdata)
 		return -ENODEV;
@@ -542,6 +552,9 @@ static int imxfb_probe(struct device_d *dev)
 	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
 		IMX_CCM_BASE + CCM_CGCR1);
 #endif
+	mode_list = xzalloc(sizeof(*mode_list) * pdata->num_modes);
+	for (i = 0; i < pdata->num_modes; i++)
+		mode_list[i] = pdata->mode[i].mode;
 
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
@@ -555,6 +568,8 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->enable = pdata->enable;
 	fbi->dev = dev;
 	info->priv = fbi;
+	info->mode_list = mode_list;
+	info->num_modes = pdata->num_modes;
 	info->mode = &pdata->mode->mode;
 	info->xres = pdata->mode->mode.xres;
 	info->yres = pdata->mode->mode.yres;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
