Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MM-6T
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:48 +0200
Message-Id: <1365343255-26497-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/21] fb: imx-ipu-fb: Use dev_add_param_int for alpha
 parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index db8b832..b2ed723 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -39,6 +39,8 @@ struct ipu_fb_info {
 	struct fb_info		info;
 	struct fb_info		overlay;
 	struct device_d		*dev;
+
+	unsigned int		alpha;
 };
 
 /* IPU DMA Controller channel definitions. */
@@ -914,27 +916,17 @@ static struct fb_ops ipu_fb_overlay_ops = {
 	.fb_disable	= ipu_fb_overlay_disable_controller,
 };
 
-static int sdc_alpha_set(struct device_d *dev, struct param_d *param,
-			const char *val)
+static int sdc_alpha_set(struct param_d *param, void *priv)
 {
-	struct fb_info *info = dev->priv;
+	struct fb_info *info = priv;
 	struct ipu_fb_info *fbi = info->priv;
-	int alpha;
-	char alphastr[16];
 	unsigned int tmp;
 
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	alpha = simple_strtoul(val, NULL, 0);
-	alpha &= 0xff;
+	if (fbi->alpha > 0xff)
+		fbi->alpha = 0xff;
 
 	tmp = reg_read(fbi, SDC_GW_CTRL) & 0x00FFFFFFL;
-	reg_write(fbi, tmp | ((u32) alpha << 24), SDC_GW_CTRL);
-
-	sprintf(alphastr, "%d", alpha);
-
-	dev_param_set_generic(dev, param, alphastr);
+	reg_write(fbi, tmp | ((u32) fbi->alpha << 24), SDC_GW_CTRL);
 
 	return 0;
 }
@@ -968,8 +960,9 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
 		return ret;
 	}
 
-	dev_add_param(&overlay->dev, "alpha", sdc_alpha_set, NULL, 0);
-	dev_set_param(&overlay->dev, "alpha", "0");
+	dev_add_param_int(&overlay->dev, "alpha", sdc_alpha_set,
+			NULL, &fbi->alpha, "%u", overlay);
+
 	return 0;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
