Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHiF-0003Wt-PB
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:06:26 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:26 +0200
Message-Id: <20170720200526.19523-6-sam@ravnborg.org>
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
Subject: [PATCH 6/6] atmel_lcdfb: add DT support
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Some boards use "have_intensity_bit". To support this the
syntax for lcd_wiring_mode was extended to include this info.
This is an extension compared to the documented bindings,
and an extension the kernel does not support (yet).

The binding documents that there can be more than one gpio to
power on/off the display but current implmentation supports only
one gpio. There are no users that requires more than one gpio
so this is good enough.

The clk name used for hclk differs from device trees and
platform data. We could rename the clocl used in platform data
but the name "hclk" is not unique.

Configure clockname based on configuration method.
Devicetree => hclk
Platform data => hck1

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb.c      |  12 ++++
 drivers/video/atmel_lcdfb_core.c | 130 +++++++++++++++++++++++++++++++++++++--
 2 files changed, 138 insertions(+), 4 deletions(-)

diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 770cf0497..7c05e857b 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -243,8 +243,20 @@ static int atmel_lcdc_probe(struct device_d *dev)
 	return atmel_lcdc_register(dev, &atmel_lcdfb_data);
 }
 
+static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
+	{ .compatible = "atmel,at91sam9261-lcdc", },
+	{ .compatible = "atmel,at91sam9263-lcdc", },
+	{ .compatible = "atmel,at91sam9g10-lcdc", },
+	{ .compatible = "atmel,at91sam9g45-lcdc", },
+	{ .compatible = "atmel,at91sam9g45es-lcdc", },
+	{ .compatible = "atmel,at91sam9rl-lcdc", },
+	{ .compatible = "atmel,at32ap-lcdc", },
+	{ /* sentinel */ }
+};
+
 static struct driver_d atmel_lcdc_driver = {
 	.name	= "atmel_lcdfb",
 	.probe	= atmel_lcdc_probe,
+	.of_compatible = DRV_OF_COMPAT(atmel_lcdfb_compatible),
 };
 device_platform_driver(atmel_lcdc_driver);
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 87bddade4..45b0c63d0 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -19,6 +19,7 @@
  */
 
 #include <common.h>
+#include <of_gpio.h>
 #include <gpio.h>
 #include <dma.h>
 #include <io.h>
@@ -278,6 +279,118 @@ static int power_control_init(struct device_d *dev,
 	return ret;
 }
 
+/*
+ * Syntax: atmel,lcd-wiring-mode: lcd wiring mode "RGB", "BRG", "IRGB", "IBRG"
+ * The optional "I" indicates that green has an intensity bit as used by some
+ * older displays
+ */
+static int of_get_wiring_mode(struct device_node *np,
+			      struct atmel_lcdfb_info *sinfo)
+{
+	const char *mode;
+	int ret;
+
+	ret = of_property_read_string(np, "atmel,lcd-wiring-mode", &mode);
+	if (ret < 0) {
+		/* Not present, use defaults */
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
+		sinfo->have_intensity_bit = false;
+		return 0;
+	}
+
+	if (!strcasecmp(mode, "BGR")) {
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
+		sinfo->have_intensity_bit = false;
+	} else if (!strcasecmp(mode, "RGB")) {
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
+		sinfo->have_intensity_bit = false;
+	} else if (!strcasecmp(mode, "IBGR")) {
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
+		sinfo->have_intensity_bit = true;
+	} else if (!strcasecmp(mode, "IRGB")) {
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
+		sinfo->have_intensity_bit = true;
+	} else {
+		return -ENODEV;
+	}
+	return 0;
+}
+
+static int of_get_power_control(struct device_d *dev,
+				struct device_node *np,
+				struct atmel_lcdfb_info *sinfo)
+{
+	enum of_gpio_flags flags;
+	bool active_low;
+	int gpio;
+
+	gpio = of_get_named_gpio_flags(np, "atmel,power-control-gpio", 0, &flags);
+	if (!gpio_is_valid(gpio)) {
+		/* No power control - ignore */
+		return 0;
+	}
+	active_low = (flags & OF_GPIO_ACTIVE_LOW ? true : false);
+	return power_control_init(dev, sinfo, gpio, active_low);
+}
+
+static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
+{
+	struct fb_info *info = &sinfo->info;
+	struct display_timings *modes;
+	struct device_node *display;
+	int ret;
+
+	/* Required properties */
+	display = of_parse_phandle(dev->device_node, "display", 0);
+	if (!display) {
+		dev_err(dev, "no display phandle\n");
+		return -ENOENT;
+	}
+	ret = of_property_read_u32(display, "atmel,guard-time", &sinfo->guard_time);
+	if (ret < 0) {
+		dev_err(dev, "failed to get atmel,guard-time property\n");
+		goto err;
+	}
+	ret = of_property_read_u32(display, "atmel,lcdcon2", &sinfo->lcdcon2);
+	if (ret < 0) {
+		dev_err(dev, "failed to get atmel,lcdcon2 property\n");
+		goto err;
+	}
+	ret = of_property_read_u32(display, "atmel,dmacon", &sinfo->dmacon);
+	if (ret < 0) {
+		dev_err(dev, "failed to get atmel,dmacon property\n");
+		goto err;
+	}
+	ret = of_property_read_u32(display, "bits-per-pixel", &info->bits_per_pixel);
+	if (ret < 0) {
+		dev_err(dev, "failed to get bits-per-pixel property\n");
+		goto err;
+	}
+	modes = of_get_display_timings(display);
+	if (IS_ERR(modes)) {
+		dev_err(dev, "unable to parse display timings\n");
+		ret = PTR_ERR(modes);
+		goto err;
+	}
+	info->modes.modes = modes->modes;
+	info->modes.num_modes = modes->num_modes;
+
+	/* Optional properties */
+	ret = of_get_wiring_mode(display, sinfo);
+	if (ret < 0) {
+		dev_err(dev, "failed to get atmel,lcd-wiring-mode property\n");
+		goto err;
+	}
+	ret = of_get_power_control(dev, display, sinfo);
+	if (ret < 0) {
+		dev_err(dev, "failed to get power control gpio\n");
+		goto err;
+	}
+	return 0;
+err:
+	return ret;
+}
+
 static int lcdfb_pdata_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
 {
 	struct atmel_lcdfb_platform_data *pdata;
@@ -318,8 +431,9 @@ err:
 
 int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 {
-	struct resource *iores;
 	struct atmel_lcdfb_info *sinfo;
+	const char *bus_clk_name;
+	struct resource *iores;
 	struct fb_info *info;
 	int ret = 0;
 
@@ -341,13 +455,21 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 			dev_err(dev, "failed to init lcdfb from pdata\n");
 			goto err;
 		}
+		bus_clk_name = "hck1";
 	} else {
-		dev_err(dev, "missing platform_data\n");
-		return -EINVAL;
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+			return -EINVAL;
+
+		ret = lcdfb_of_init(dev, sinfo);
+		if (ret) {
+			dev_err(dev, "failed to init lcdfb from DT\n");
+			goto err;
+		}
+		bus_clk_name = "hclk";
 	}
 
 	/* Enable LCDC Clocks */
-	sinfo->bus_clk = clk_get(dev, "hck1");
+	sinfo->bus_clk = clk_get(dev, bus_clk_name);
 	if (IS_ERR(sinfo->bus_clk)) {
 		ret = PTR_ERR(sinfo->bus_clk);
 		goto err;
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
