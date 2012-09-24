Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000eo-7w
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:51 +0200
Message-Id: <1348484692-24993-23-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/23] video i.MX IPU: Switch to clock support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c |   10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 80236b3..6343f12 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -27,10 +27,12 @@
 #include <errno.h>
 #include <asm-generic/div64.h>
 #include <mach/imx-ipu-fb.h>
-#include <mach/clock.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 
 struct ipu_fb_info {
 	void __iomem		*regs;
+	struct clk		*clk;
 
 	void			(*enable)(int enable);
 
@@ -480,7 +482,7 @@ static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
 	 * i.MX31 it (HSP_CLK) is <= 178MHz. Currently 128.267MHz
 	 */
 	pixel_clk = PICOS2KHZ(mode->pixclock) * 1000UL;
-	div = imx_get_lcdclk() * 16 / pixel_clk;
+	div = clk_get_rate(fbi->clk) * 16 / pixel_clk;
 
 	if (div < 0x40) {	/* Divider less than 4 */
 		dev_dbg(&info->dev,
@@ -986,6 +988,10 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
+	fbi->clk = clk_get(dev, NULL);
+	if (IS_ERR(fbi->clk))
+		return PTR_ERR(fbi->clk);
+
 	fbi->regs = dev_request_mem_region(dev, 0);
 	fbi->dev = dev;
 	fbi->enable = pdata->enable;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
