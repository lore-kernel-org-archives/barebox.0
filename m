Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G6-5N
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:35 +0100
Message-Id: <1295034699-18863-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] video stm/mx2x: simplify memory allocation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c |   26 ++------------------------
 1 files changed, 2 insertions(+), 24 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index f0abe4c..d2add41 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -209,24 +209,6 @@ static inline unsigned calc_line_length(unsigned ppl, unsigned bpp)
 	return (ppl * bpp) >> 3;
 }
 
-static int stmfb_memory_mmgt(struct fb_info *fb_info, unsigned size)
-{
-	struct imxfb_info *fbi = fb_info->priv;
-
-	if (fbi->memory_size != 0) {
-		free(fb_info->screen_base);
-		fb_info->screen_base = NULL;
-		fbi->memory_size = 0;
-	}
-
-	if (fbi->memory_size == 0) {
-		fb_info->screen_base = xzalloc(size);
-		fbi->memory_size = size;
-	}
-
-	return 0;
-}
-
 static void stmfb_enable_controller(struct fb_info *fb_info)
 {
 	struct imxfb_info *fbi = fb_info->priv;
@@ -308,7 +290,6 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	struct imx_fb_videomode *pdata = fbi->pdata;
 	struct fb_videomode *mode = fb_info->mode;
 	uint32_t reg;
-	int ret;
 	unsigned size;
 
 	/*
@@ -317,11 +298,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
 		mode->yres;
 
-	ret = stmfb_memory_mmgt(fb_info, size);
-	if (ret != 0) {
-		dev_err(fbi->hw_dev, "Cannot allocate framebuffer memory\n");
-		return ret;
-	}
+	fb_info->screen_base = xrealloc(fb_info->screen_base, size);
+	fbi->memory_size = size;
 
 	/** @todo ensure HCLK is active at this point of time! */
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
