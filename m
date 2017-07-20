Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHhs-0003UI-DN
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:05:58 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:25 +0200
Message-Id: <20170720200526.19523-5-sam@ravnborg.org>
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
Subject: [PATCH 5/6] atmel_lcdfb: move pdata init to a separate function
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Keep atmel_lcdc_register() readable by separating out
pdata handling in a helper function

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb_core.c | 65 +++++++++++++++++++++++++---------------
 1 file changed, 41 insertions(+), 24 deletions(-)

diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index cc065397d..87bddade4 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -278,31 +278,23 @@ static int power_control_init(struct device_d *dev,
 	return ret;
 }
 
-int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
+static int lcdfb_pdata_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
 {
-	struct resource *iores;
-	struct atmel_lcdfb_info *sinfo;
-	struct atmel_lcdfb_platform_data *pdata = dev->platform_data;
-	int ret = 0;
-	int gpio;
+	struct atmel_lcdfb_platform_data *pdata;
 	struct fb_info *info;
+	bool active_low;
+	int gpio;
+	int ret;
 
-	if (!pdata) {
-		dev_err(dev, "missing platform_data\n");
-		return -EINVAL;
-	}
-
-	sinfo = xzalloc(sizeof(*sinfo));
+	pdata = dev->platform_data;
 
 	/* If gpio == 0 (default in pdata) then we assume no power control */
 	gpio = pdata->gpio_power_control;
 	if (gpio == 0)
 		gpio = -1;
 
-	ret = power_control_init(dev,
-				 sinfo,
-				 gpio,
-				 pdata->gpio_power_control_active_low);
+	active_low = pdata->gpio_power_control_active_low;
+	ret = power_control_init(dev, sinfo, gpio, active_low);
 	if (ret)
 		goto err;
 
@@ -311,23 +303,48 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	sinfo->dmacon = pdata->default_dmacon;
 	sinfo->lcd_wiring_mode = pdata->lcd_wiring_mode;
 	sinfo->have_intensity_bit = pdata->have_intensity_bit;
+
+	info = &sinfo->info;
+	info->modes.modes = pdata->mode_list;
+	info->modes.num_modes = pdata->num_modes;
+	info->mode = &info->modes.modes[0];
+	info->xres = info->mode->xres;
+	info->yres = info->mode->yres;
+	info->bits_per_pixel = pdata->default_bpp;
+
+err:
+	return ret;
+}
+
+int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
+{
+	struct resource *iores;
+	struct atmel_lcdfb_info *sinfo;
+	struct fb_info *info;
+	int ret = 0;
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	sinfo->mmio = IOMEM(iores->start);
 
+	sinfo = xzalloc(sizeof(*sinfo));
 	sinfo->dev_data = data;
+	sinfo->mmio = IOMEM(iores->start);
 
-	/* just init */
 	info = &sinfo->info;
 	info->priv = sinfo;
 	info->fbops = &atmel_lcdc_ops;
-	info->modes.modes = pdata->mode_list;
-	info->modes.num_modes = pdata->num_modes;
-	info->mode = &info->modes.modes[0];
-	info->xres = info->mode->xres;
-	info->yres = info->mode->yres;
-	info->bits_per_pixel = pdata->default_bpp;
+
+	if (dev->platform_data) {
+		ret = lcdfb_pdata_init(dev, sinfo);
+		if (ret) {
+			dev_err(dev, "failed to init lcdfb from pdata\n");
+			goto err;
+		}
+	} else {
+		dev_err(dev, "missing platform_data\n");
+		return -EINVAL;
+	}
 
 	/* Enable LCDC Clocks */
 	sinfo->bus_clk = clk_get(dev, "hck1");
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
