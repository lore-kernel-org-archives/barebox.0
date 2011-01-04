Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa7zB-0006KT-3q
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:35:42 +0000
Message-ID: <4D23302F.5070109@free-electrons.com>
Date: Tue, 04 Jan 2011 15:35:27 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] ARM STM/i.MX: Add possibility to choose the bit per pixel
	for STM video driver
To: barebox <barebox@lists.infradead.org>

When describing an new video interface, it is now possible to select
the bit per pixel. If nothing is chosen 16bpp is selected by default.

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 arch/arm/mach-stm/include/mach/fb.h |    1 +
 drivers/video/stm.c                 |    5 ++++-
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index 65e3be2..da71f10 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -37,6 +37,7 @@ struct imx_fb_videomode {
 
 	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
 	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
+	u32 bits_per_pixel;
 };
 
 #endif /* __MACH_FB_H */
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 8a9acff..5035cd0 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -496,7 +496,10 @@ static int stmfb_probe(struct device_d *hw_dev)
 	fbi.info.mode = &fbi.info.mode_list[0];
 	fbi.info.xres = fbi.info.mode->xres;
 	fbi.info.yres = fbi.info.mode->yres;
-	fbi.info.bits_per_pixel = 16;
+	if (pdata->bits_per_pixel)
+		fbi.info.bits_per_pixel = pdata->bits_per_pixel;
+	else
+		fbi.info.bits_per_pixel = 16;
 
 	size = calc_line_length(fbi.info.mode->xres, fbi.info.bits_per_pixel) *
 		fbi.info.mode->yres;
-- 
1.7.0.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
