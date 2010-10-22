Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT5-0006Hv-1U
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:27 +0200
Message-Id: <1287753331-7696-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] fb: i.MX IPU: fold mx3fb_set_par into its only user
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c |   27 +++++----------------------
 1 files changed, 5 insertions(+), 22 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 08036aa..c38082d 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -722,31 +722,11 @@ static void sdc_enable_channel(struct ipu_fb_info *fbi, void *fbmem)
 	mdelay(2);
 }
 
-/*
- * mx3fb_set_par() - set framebuffer parameters and change the operating mode.
- * @return:	0 on success or negative error code on failure.
- */
-static int mx3fb_set_par(struct fb_info *info)
-{
-	struct ipu_fb_info *fbi = info->priv;
-	struct fb_videomode *mode = info->mode;
-	int ret;
-
-	ret = sdc_init_panel(info, IPU_PIX_FMT_RGB666);
-	if (ret < 0)
-		return ret;
-
-	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
-			SDC_BG_POS);
-
-	return 0;
-}
-
 /* References in this function refer to respective Linux kernel sources */
 static void ipu_fb_enable(struct fb_info *info)
 {
 	struct ipu_fb_info *fbi = info->priv;
-
+	struct fb_videomode *mode = info->mode;
 	u32 reg;
 
 	/* pcm037.c::mxc_board_init() */
@@ -799,7 +779,10 @@ static void ipu_fb_enable(struct fb_info *info)
 		~(SDC_COM_GWSEL | SDC_COM_KEY_COLOR_G);
 	reg_write(fbi, reg, SDC_COM_CONF);
 
-	mx3fb_set_par(info);
+	sdc_init_panel(info, IPU_PIX_FMT_RGB666);
+
+	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
+			SDC_BG_POS);
 
 	sdc_enable_channel(fbi, info->screen_base);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
