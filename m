Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHhs-0003UE-DL
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:05:58 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:23 +0200
Message-Id: <20170720200526.19523-3-sam@ravnborg.org>
In-Reply-To: <20170720200103.GA16205@ravnborg.org>
References: <20170720200103.GA16205@ravnborg.org>
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
Subject: [PATCH 3/6] atmel_lcdfb: move lcd_wiring_mode,
 have_intensity_bit to local data
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Copy lcd_wiring_mode and have_intensity_bit to
atmel_lcdfb_info to minimize dependency on the
atmel_lcdfb_platform_data.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb.h      | 2 ++
 drivers/video/atmel_lcdfb_core.c | 9 +++++----
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index 1be9cccd9..90992df02 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -23,6 +23,8 @@ struct atmel_lcdfb_info {
 	unsigned int		smem_len;
 	unsigned int		lcdcon2;
 	unsigned int		dmacon;
+	unsigned int		lcd_wiring_mode;
+	bool			have_intensity_bit;
 	struct clk		*bus_clk;
 	struct clk		*lcdc_clk;
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index a79c31ae4..cdeb927ad 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -69,7 +69,6 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 {
 	struct device_d *dev = &info->dev;
 	struct atmel_lcdfb_info *sinfo = info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
 	struct fb_videomode *mode = info->mode;
 	unsigned long clk_value_khz;
 
@@ -126,11 +125,11 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 		break;
 	case 16:
 		/* Older SOCs use IBGR:555 rather than BGR:565. */
-		if (pdata->have_intensity_bit)
+		if (sinfo->have_intensity_bit)
 			info->green.length = 5;
 		else
 			info->green.length = 6;
-		if (pdata->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
+		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
 			/* RGB:5X5 mode */
 			info->red.offset = info->green.length + 5;
 			info->blue.offset = 0;
@@ -147,7 +146,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 		info->transp.length = 8;
 		/* fall through */
 	case 24:
-		if (pdata->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
+		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
 			/* RGB:888 mode */
 			info->red.offset = 16;
 			info->blue.offset = 0;
@@ -261,6 +260,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	sinfo->guard_time = pdata->guard_time;
 	sinfo->lcdcon2 = pdata->default_lcdcon2;
 	sinfo->dmacon = pdata->default_dmacon;
+	sinfo->lcd_wiring_mode = pdata->lcd_wiring_mode;
+	sinfo->have_intensity_bit = pdata->have_intensity_bit;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
