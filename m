Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHhs-0003UC-DK
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:06:00 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:22 +0200
Message-Id: <20170720200526.19523-2-sam@ravnborg.org>
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
Subject: [PATCH 2/6] atmel_lcdfb: move dmacon, lcdcon2 to local data
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Copy dmacon + lcdcon2 to atmel_lcdfb_info to minimize
dependency on the atmel_lcdfb_platform_data.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_hlcdfb.c     | 5 ++---
 drivers/video/atmel_lcdfb.c      | 7 ++-----
 drivers/video/atmel_lcdfb.h      | 2 ++
 drivers/video/atmel_lcdfb_core.c | 2 ++
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index f7aab7f45..5d130f598 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -178,7 +178,6 @@ static u32 atmel_hlcdfb_get_rgbmode(struct fb_info *info)
 static void atmel_hlcdfb_setup_core_base(struct fb_info *info)
 {
 	struct atmel_lcdfb_info *sinfo = info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
 	struct fb_videomode *mode = info->mode;
 	unsigned long value;
 	unsigned long clk_value_khz;
@@ -205,8 +204,8 @@ static void atmel_hlcdfb_setup_core_base(struct fb_info *info)
 	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG0, value);
 
 	/* Initialize control register 5 */
-	/* In 9x5, the default_lcdcon2 will use for LCDCFG5 */
-	value = pdata->default_lcdcon2;
+	/* In 9x5, the lcdcon2 will use for LCDCFG5 */
+	value = sinfo->lcdcon2;
 	value |= (sinfo->guard_time << LCDC_LCDCFG5_GUARDTIME_OFFSET)
 		| LCDC_LCDCFG5_DISPDLY
 		| LCDC_LCDCFG5_VSPDLYS;
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index a0e41d10c..770cf0497 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -81,9 +81,7 @@ static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo, u32 flags)
 
 static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
 {
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
-
-	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, pdata->default_dmacon);
+	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, sinfo->dmacon);
 	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
 		(sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
 		| ATMEL_LCDC_PWR);
@@ -123,7 +121,6 @@ static void atmel_lcdfb_limit_screeninfo(struct fb_videomode *mode)
 static void atmel_lcdfb_setup_core(struct fb_info *info)
 {
 	struct atmel_lcdfb_info *sinfo = info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
 	struct fb_videomode *mode = info->mode;
 	unsigned long clk_value_khz;
 	unsigned long pix_factor = 2;
@@ -159,7 +156,7 @@ static void atmel_lcdfb_setup_core(struct fb_info *info)
 	}
 
 	/* Initialize control register 2 */
-	value = pdata->default_lcdcon2;
+	value = sinfo->lcdcon2;
 
 	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
 		value |= ATMEL_LCDC_INVLINE_INVERTED;
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index ea4c7e647..1be9cccd9 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -21,6 +21,8 @@ struct atmel_lcdfb_info {
 
 	unsigned int		guard_time;
 	unsigned int		smem_len;
+	unsigned int		lcdcon2;
+	unsigned int		dmacon;
 	struct clk		*bus_clk;
 	struct clk		*lcdc_clk;
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index f6c5d7c05..a79c31ae4 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -259,6 +259,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	sinfo = xzalloc(sizeof(*sinfo));
 	sinfo->pdata = pdata;
 	sinfo->guard_time = pdata->guard_time;
+	sinfo->lcdcon2 = pdata->default_lcdcon2;
+	sinfo->dmacon = pdata->default_dmacon;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
