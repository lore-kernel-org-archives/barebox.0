Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpl4-0005uj-GC
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:03 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id A142FFFA81F
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:52 +0200
Message-Id: <1311955207-22372-15-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 08/23] fb: switch to "struct resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/fb.c  |   16 ++++++++++------
 drivers/video/s3c.c |   16 +++++++++-------
 drivers/video/stm.c |    2 +-
 3 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 85db904..0be465f 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -84,9 +84,9 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	ret = info->fbops->fb_activate_var(info);
 
 	if (!ret) {
-		dev->map_base = (unsigned long)info->screen_base;
+		dev->resource[0].start = (resource_size_t)info->screen_base;
 		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-		dev->size = info->cdev.size;
+		dev->resource[0].size = info->cdev.size;
 		dev_param_set_generic(dev, param, val);
 	} else
 		info->cdev.size = 0;
@@ -107,15 +107,19 @@ int register_framebuffer(struct fb_info *info)
 	int id = get_free_deviceid("fb");
 	struct device_d *dev;
 
+	dev = &info->dev;
+
 	info->cdev.ops = &fb_ops;
 	info->cdev.name = asprintf("fb%d", id);
 	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-	info->cdev.dev = &info->dev;
+	info->cdev.dev = dev;
 	info->cdev.priv = info;
-	info->cdev.dev->map_base = (unsigned long)info->screen_base;
-	info->cdev.dev->size = info->cdev.size;
+	dev->resource = xzalloc(sizeof(struct resource));
+	dev->resource[0].start = (resource_size_t)info->screen_base;
+	dev->resource[0].size = info->cdev.size;
+	dev->resource[0].flags = IORESOURCE_MEM;
+	dev->num_resources = 1;
 
-	dev = &info->dev;
 	dev->priv = info;
 	dev->id = id;
 
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
index 3715499..d079fde 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c.c
@@ -331,11 +331,12 @@ static int s3cfb_activate_var(struct fb_info *fb_info)
 static void s3cfb_info(struct device_d *hw_dev)
 {
 	uint32_t con1, addr1, addr2, addr3;
+	struct s3cfb_info *fbi = hw_dev->priv;
 
-	con1 = readl(hw_dev->map_base + LCDCON1);
-	addr1 = readl(hw_dev->map_base + LCDSADDR1);
-	addr2 = readl(hw_dev->map_base + LCDSADDR2);
-	addr3 = readl(hw_dev->map_base + LCDSADDR3);
+	con1 = readl(fbi->base + LCDCON1);
+	addr1 = readl(fbi->base + LCDSADDR1);
+	addr2 = readl(fbi->base + LCDSADDR2);
+	addr3 = readl(fbi->base + LCDSADDR3);
 
 	printf(" Video hardware info:\n");
 	printf("  Video clock is running at %u Hz\n", s3c24xx_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
@@ -371,15 +372,16 @@ static int s3cfb_probe(struct device_d *hw_dev)
 	if (! pdata)
 		return -ENODEV;
 
-	writel(0, hw_dev->map_base + LCDCON1);
-	writel(0, hw_dev->map_base + LCDCON5); /* FIXME not 0 for some displays */
+	fbi.base = dev_request_mem_region(hw_dev, 0);
+	writel(0, fbi.base + LCDCON1);
+	writel(0, fbi.base + LCDCON5); /* FIXME not 0 for some displays */
 
 	/* just init */
 	fbi.info.priv = &fbi;
 
 	/* add runtime hardware info */
 	fbi.hw_dev = hw_dev;
-	fbi.base = (void*)hw_dev->map_base;
+	hw_dev->priv = &fbi;
 
 	/* add runtime video info */
 	fbi.info.mode_list = pdata->mode_list;
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index ee2f026..78acad7 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -488,7 +488,7 @@ static int stmfb_probe(struct device_d *hw_dev)
 
 	/* add runtime hardware info */
 	fbi.hw_dev = hw_dev;
-	fbi.base = (void *)hw_dev->map_base;
+	fbi.base = dev_request_mem_region(hw_dev, 0);
 	fbi.pdata = pdata;
 
 	/* add runtime video info */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
