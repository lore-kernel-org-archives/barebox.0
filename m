Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MN-6e
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:47 +0200
Message-Id: <1365343255-26497-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/21] fb: imxfb: Use dev_add_param_int for alpha parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx.c | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 736e8d0..6e2d8d6 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -158,6 +158,8 @@ struct imxfb_info {
 
 	void			(*enable)(int enable);
 
+	unsigned int		alpha;
+
 	struct fb_info		overlay;
 };
 
@@ -421,30 +423,20 @@ static struct fb_ops imxfb_overlay_ops = {
 	.fb_disable	= imxfb_overlay_disable_controller,
 };
 
-static int imxfb_alpha_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int imxfb_alpha_set(struct param_d *param, void *priv)
 {
-	struct fb_info *overlay = dev->priv;
+	struct fb_info *overlay = priv;
 	struct imxfb_info *fbi = overlay->priv;
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
 
 	tmp = readl(fbi->regs + LCDC_LGWCR);
 	tmp &= ~LGWCR_GWAV(0xff);
-	tmp |= LGWCR_GWAV(alpha);
+	tmp |= LGWCR_GWAV(fbi->alpha);
 	writel(tmp , fbi->regs + LCDC_LGWCR);
 
-	sprintf(alphastr, "%d", alpha);
-
-	dev_param_set_generic(dev, param, alphastr);
-
 	return 0;
 }
 
@@ -508,8 +500,8 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 		return ret;
 	}
 
-	dev_add_param(&overlay->dev, "alpha", imxfb_alpha_set, NULL, 0);
-	dev_set_param(&overlay->dev, "alpha", "0");
+	dev_add_param_int(&overlay->dev, "alpha", imxfb_alpha_set,
+			NULL, &fbi->alpha, "%u", overlay);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
