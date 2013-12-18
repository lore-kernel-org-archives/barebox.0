Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RK-Om
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:41 +0100
Message-Id: <1387381362-7780-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] video: imx-ipu-fb: Allow to specify framebuffer memory
 size via platform_data
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h | 2 ++
 drivers/video/imx-ipu-fb.c                  | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index ee1a9b5..73028d2 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -44,7 +44,9 @@ struct imx_ipu_fb_platform_data {
 	u_int			num_modes;
 	enum disp_data_mapping	disp_data_fmt;
 	void __iomem		*framebuffer;
+	unsigned long		framebuffer_size;
 	void __iomem		*framebuffer_ovl;
+	unsigned long		framebuffer_ovl_size;
 	/** hook to enable backlight and stuff */
 	void			(*enable)(int enable);
 	/*
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 4b9aae7..b73d8d2 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -964,6 +964,8 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
 	if (!overlay->screen_base)
 		return -ENOMEM;
 
+	overlay->screen_size = pdata->framebuffer_ovl_size;
+
 	sdc_enable_channel(fbi, overlay->screen_base, IDMAC_SDC_1);
 
 	ret = register_framebuffer(&fbi->overlay);
@@ -1021,6 +1023,7 @@ static int imxfb_probe(struct device_d *dev)
 					       (info->bits_per_pixel >> 3));
 		if (!fbi->info.screen_base)
 			return -ENOMEM;
+		fbi->info.screen_size = pdata->framebuffer_size;
 	}
 
 	sdc_enable_channel(fbi, info->screen_base, IDMAC_SDC_0);
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
