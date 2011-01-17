Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PemEb-0004JI-IZ
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:22:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:22:44 +0100
Message-Id: <1295259766-19301-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295259766-19301-1-git-send-email-s.hauer@pengutronix.de>
References: <1295259766-19301-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] video stm/mx2x: allow to pass in fb memory from platform
	data
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/fb.h |    3 +++
 drivers/video/stm.c                 |   17 ++++++++++++-----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index 65e3be2..2eade76 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -37,6 +37,9 @@ struct imx_fb_videomode {
 
 	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
 	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
+
+	void *fixed_screen;	/**< if != NULL use this as framebuffer memory */
+	unsigned fixed_screen_size; /**< framebuffer memory size for fixed_screen */
 };
 
 #endif /* __MACH_FB_H */
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index ecf450c..a665850 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -298,11 +298,18 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
 		mode->yres;
 
-	fb_info->screen_base = realloc(fb_info->screen_base, size);
-	if (!fb_info->screen_base)
-		return -ENOMEM;
-	memset(fb_info->screen_base, 0, size);
-	fbi->memory_size = size;
+	if (pdata->fixed_screen) {
+		if (pdata->fixed_screen_size < size)
+			return -ENOMEM;
+		fb_info->screen_base = pdata->fixed_screen;
+		fbi->memory_size = pdata->fixed_screen_size;
+	} else {
+		fb_info->screen_base = realloc(fb_info->screen_base, size);
+		if (!fb_info->screen_base)
+			return -ENOMEM;
+		memset(fb_info->screen_base, 0, size);
+		fbi->memory_size = size;
+	}
 
 	/** @todo ensure HCLK is active at this point of time! */
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
