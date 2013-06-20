Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlh-0004gH-J5
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:55:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:20 +0200
Message-Id: <1371711261-10039-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/17] video: stm: switch to clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 606e39a..d5212f8 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -24,8 +24,9 @@
 #include <errno.h>
 #include <xfuncs.h>
 #include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/imx-regs.h>
-#include <mach/clock.h>
 #include <mach/fb.h>
 
 #define HW_LCDIF_CTRL 0x00
@@ -144,6 +145,7 @@ struct imxfb_info {
 	struct fb_info info;
 	struct device_d *hw_dev;
 	struct imx_fb_platformdata *pdata;
+	struct clk *clk;
 };
 
 /* the RGB565 true colour mode */
@@ -327,7 +329,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 
 	/** @todo ensure HCLK is active at this point of time! */
 
-	size = imx_set_lcdifclk(PICOS2KHZ(mode->pixclock) * 1000);
+	size = clk_set_rate(fbi->clk, PICOS2KHZ(mode->pixclock) * 1000);
 	if (size == 0) {
 		dev_dbg(fbi->hw_dev, "Unable to set a valid pixel clock\n");
 		return -EINVAL;
@@ -490,6 +492,9 @@ static int stmfb_probe(struct device_d *hw_dev)
 	fbi.hw_dev = hw_dev;
 	fbi.base = dev_request_mem_region(hw_dev, 0);
 	fbi.pdata = pdata;
+	fbi.clk = clk_get(hw_dev, NULL);
+	if (IS_ERR(fbi.clk))
+		return PTR_ERR(fbi.clk);
 
 	/* add runtime video info */
 	fbi.info.mode_list = pdata->mode_list;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
