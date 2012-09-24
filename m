Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TF-0003oN-Ra
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:50 +0200
Message-Id: <1348484692-24993-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/23] video i.MX: Switch to clock support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx.c |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 452e558..810d8e3 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -22,6 +22,8 @@
 #include <malloc.h>
 #include <errno.h>
 #include <init.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/imx-regs.h>
 #include <asm-generic/div64.h>
 #include <mach/clock.h>
@@ -138,6 +140,7 @@ struct imxfb_rgb {
 
 struct imxfb_info {
 	void __iomem		*regs;
+	struct clk		*clk;
 
 	u_int			pcr;
 	u_int			pwmr;
@@ -341,7 +344,7 @@ static int imxfb_activate_var(struct fb_info *info)
 	writel(readl(fbi->regs + LCDC_CPOS) & ~(CPOS_CC0 | CPOS_CC1),
 		fbi->regs + LCDC_CPOS);
 
-	lcd_clk = imx_get_lcdclk();
+	lcd_clk = clk_get_rate(fbi->clk);
 
 	tmp = mode->pixclock * (unsigned long long)lcd_clk;
 
@@ -564,6 +567,10 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
+	fbi->clk = clk_get(dev, NULL);
+	if (IS_ERR(fbi->clk))
+		return PTR_ERR(fbi->clk);
+
 	fbi->mode = pdata->mode;
 	fbi->regs = dev_request_mem_region(dev, 0);
 	fbi->pcr = pdata->mode->pcr;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
