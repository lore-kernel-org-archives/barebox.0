Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHhs-0003UH-DM
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:06:00 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:24 +0200
Message-Id: <20170720200526.19523-4-sam@ravnborg.org>
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
Subject: [PATCH 4/6] atmel_lcdfb: define power_control gpio in platform_data
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Simplify board specific code by specifying the power_control
gpio direct in platform data.
Move registration of the GPIO to the driver so we no longer
need to duplicate this for each board.

As an intended side-effect there is no longer
any references to platform_data outside atmel_lcdc_register()
so remove it from struct atmel_lcdfb_info

The implementation assumes that GPIO=0 is the same as no power control.
This prevents us from using any GPIO=0 for power control,
but this is not considered a problem for current users.
Future DT users will not have this limitation.

This commit include a fix so we will actually power
down if requested. Previously this was hardcoded to ON.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9261ek/init.c  | 35 ++-------------------
 arch/arm/boards/at91sam9263ek/init.c  | 26 +--------------
 arch/arm/boards/at91sam9m10ihd/init.c | 26 +--------------
 arch/arm/boards/at91sam9n12ek/init.c  | 28 ++---------------
 drivers/video/atmel_lcdfb.h           |  4 ++-
 drivers/video/atmel_lcdfb_core.c      | 59 ++++++++++++++++++++++++++++++++---
 include/video/atmel_lcdc.h            |  3 +-
 7 files changed, 65 insertions(+), 116 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 72716b818..58f253b1a 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -158,22 +158,6 @@ static void ek_add_device_udc(void) {}
  * LCD Controller
  */
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 /* TFT */
 static struct fb_videomode at91_tft_vga_modes[] = {
 	{
@@ -195,35 +179,20 @@ static struct fb_videomode at91_tft_vga_modes[] = {
 					| ATMEL_LCDC_DISTYPE_TFT    \
 					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
 
-static void at91_lcdc_tft_power_control(int on)
-{
-	if (on)
-		gpio_set_value(AT91_PIN_PA12, 0);	/* power up */
-	else
-		gpio_set_value(AT91_PIN_PA12, 1);	/* power down */
-}
-
 static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.lcdcon_is_backlight		= true,
 	.default_bpp			= 16,
 	.default_dmacon			= ATMEL_LCDC_DMAEN,
 	.default_lcdcon2		= AT91SAM9261_DEFAULT_TFT_LCDCON2,
 	.guard_time			= 1,
-	.atmel_lcdfb_power_control	= at91_lcdc_tft_power_control,
+	.gpio_power_control		= AT91_PIN_PA12,
+	.gpio_power_control_active_low	= true,
 	.mode_list			= at91_tft_vga_modes,
 	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
 };
 
-static int at91_lcdc_gpio(void)
-{
-	return ek_gpio_request_output(AT91_PIN_PA12, "lcdc_tft_power");
-}
-
 static void ek_add_device_lcdc(void)
 {
-	if (at91_lcdc_gpio())
-		return;
-
 	if (machine_is_at91sam9g10ek())
 		ek_lcdc_data.lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 682449b7b..b71cc5517 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -156,22 +156,6 @@ static void ek_add_device_udc(void) {}
  * LCD Controller
  */
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 static struct fb_videomode at91_tft_vga_modes[] = {
 	{
 		.name		= "TX09D50VM1CCA @ 60",
@@ -192,11 +176,6 @@ static struct fb_videomode at91_tft_vga_modes[] = {
 					| ATMEL_LCDC_DISTYPE_TFT \
 					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
 
-static void at91_lcdc_power_control(int on)
-{
-	gpio_set_value(AT91_PIN_PA30, on);
-}
-
 /* Driver datas */
 static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.lcdcon_is_backlight		= true,
@@ -204,16 +183,13 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.default_dmacon			= ATMEL_LCDC_DMAEN,
 	.default_lcdcon2		= AT91SAM9263_DEFAULT_LCDCON2,
 	.guard_time			= 1,
-	.atmel_lcdfb_power_control	= at91_lcdc_power_control,
+	.gpio_power_control		= AT91_PIN_PA30,
 	.mode_list			= at91_tft_vga_modes,
 	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
 };
 
 static void ek_add_device_lcdc(void)
 {
-	if (ek_gpio_request_output(AT91_PIN_PA30, "lcdc_power"))
-		return;
-
 	at91_add_device_lcdc(&ek_lcdc_data);
 }
 
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index dcd93c10b..de601d53b 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -177,22 +177,6 @@ static int at91sam9m10g45ek_mem_init(void)
 mem_initcall(at91sam9m10g45ek_mem_init);
 
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 static struct fb_videomode at91fb_default_monspecs[] = {
 	{
 		.name		= "MULTEK",
@@ -213,11 +197,6 @@ static struct fb_videomode at91fb_default_monspecs[] = {
 					| ATMEL_LCDC_DISTYPE_TFT \
 					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
 
-static void at91_lcdc_power_control(int on)
-{
-	gpio_set_value(AT91_PIN_PE6, on);
-}
-
 /* Driver datas */
 static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.lcdcon_is_backlight		= true,
@@ -226,16 +205,13 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
 	.guard_time			= 9,
 	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
-	.atmel_lcdfb_power_control	= at91_lcdc_power_control,
+	.gpio_power_control		= AT91_PIN_PE6,
 	.mode_list			= at91fb_default_monspecs,
 	.num_modes			= ARRAY_SIZE(at91fb_default_monspecs),
 };
 
 static void ek_add_device_lcd(void)
 {
-	if (ek_gpio_request_output(AT91_PIN_PE6, "lcdc_power"))
-		return;
-
 	at91_add_device_lcdc(&ek_lcdc_data);
 }
 #else
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index b9431b2ee..bc3fb8e08 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -127,23 +127,6 @@ static void __init ek_add_device_ks8851(void) {}
 #endif /* CONFIG_DRIVER_NET_KS8851_MLL */
 
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
-
 /*
  * LCD Controller
  */
@@ -166,11 +149,6 @@ static struct fb_videomode at91_tft_vga_modes[] = {
 /* Default output mode is TFT 24 bit */
 #define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
 
-static void at91_lcdc_power_control(int on)
-{
-	gpio_set_value(AT91_PIN_PC25, !on);
-}
-
 /* Driver datas */
 static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.lcdcon_is_backlight		= true,
@@ -179,16 +157,14 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
 	.guard_time			= 9,
 	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
-	.atmel_lcdfb_power_control	= at91_lcdc_power_control,
+	.gpio_power_control		= AT91_PIN_PC25,
+	.gpio_power_control_active_low	= true,
 	.mode_list			= at91_tft_vga_modes,
 	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
 };
 
 static void ek_add_device_lcdc(void)
 {
-	if (ek_gpio_request_output(AT91_PIN_PC25, "lcdc_power"))
-		return;
-
 	at91_add_device_lcdc(&ek_lcdc_data);
 }
 #else
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index 90992df02..a011d4201 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -25,10 +25,12 @@ struct atmel_lcdfb_info {
 	unsigned int		dmacon;
 	unsigned int		lcd_wiring_mode;
 	bool			have_intensity_bit;
+
+	int			gpio_power_control;
+	bool			gpio_power_control_active_low;
 	struct clk		*bus_clk;
 	struct clk		*lcdc_clk;
 
-	struct atmel_lcdfb_platform_data *pdata;
 	struct atmel_lcdfb_devdata *dev_data;
 	void			*dma_desc;
 };
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index cdeb927ad..cc065397d 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -19,6 +19,7 @@
  */
 
 #include <common.h>
+#include <gpio.h>
 #include <dma.h>
 #include <io.h>
 #include <linux/err.h>
@@ -39,13 +40,17 @@ static void atmel_lcdfb_stop_clock(struct atmel_lcdfb_info *sinfo)
 	clk_disable(sinfo->lcdc_clk);
 }
 
-static void atmel_lcdc_power_controller(struct fb_info *fb_info, int i)
+static void atmel_lcdc_power_controller(struct fb_info *fb_info, int on)
 {
 	struct atmel_lcdfb_info *sinfo = fb_info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
 
-	if (pdata->atmel_lcdfb_power_control)
-		pdata->atmel_lcdfb_power_control(1);
+	if (sinfo->gpio_power_control < 0)
+		return;
+
+	if (sinfo->gpio_power_control_active_low)
+		gpio_set_value(sinfo->gpio_power_control, !on);
+	else
+		gpio_set_value(sinfo->gpio_power_control, on);
 }
 
 /**
@@ -242,12 +247,44 @@ static struct fb_ops atmel_lcdc_ops = {
 	.fb_disable = atmel_lcdc_disable_controller,
 };
 
+static int power_control_init(struct device_d *dev,
+			      struct atmel_lcdfb_info *sinfo,
+			      int gpio,
+			      bool active_low)
+{
+	int ret;
+	const char *name = "lcdc_power";
+
+	sinfo->gpio_power_control = gpio;
+	sinfo->gpio_power_control_active_low = active_low;
+
+	/* If no GPIO specified then stop */
+	if (!gpio_is_valid(gpio))
+		return 0;
+
+	ret = gpio_request(gpio, name);
+	if (ret) {
+		dev_err(dev, "%s: can not request gpio %d (%d)\n",
+			name, gpio, ret);
+		return ret;
+	}
+	ret = gpio_direction_output(gpio, 1);
+	if (ret) {
+		dev_err(dev, "%s: can not configure gpio %d as output (%d)\n",
+			name, gpio, ret);
+		return ret;
+	}
+
+	return ret;
+}
+
 int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 {
 	struct resource *iores;
 	struct atmel_lcdfb_info *sinfo;
 	struct atmel_lcdfb_platform_data *pdata = dev->platform_data;
 	int ret = 0;
+	int gpio;
 	struct fb_info *info;
 
 	if (!pdata) {
@@ -256,7 +293,19 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	}
 
 	sinfo = xzalloc(sizeof(*sinfo));
-	sinfo->pdata = pdata;
+
+	/* If gpio == 0 (default in pdata) then we assume no power control */
+	gpio = pdata->gpio_power_control;
+	if (gpio == 0)
+		gpio = -1;
+
+	ret = power_control_init(dev,
+				 sinfo,
+				 gpio,
+				 pdata->gpio_power_control_active_low);
+	if (ret)
+		goto err;
+
 	sinfo->guard_time = pdata->guard_time;
 	sinfo->lcdcon2 = pdata->default_lcdcon2;
 	sinfo->dmacon = pdata->default_dmacon;
diff --git a/include/video/atmel_lcdc.h b/include/video/atmel_lcdc.h
index 132ee598a..07a30e2e6 100644
--- a/include/video/atmel_lcdc.h
+++ b/include/video/atmel_lcdc.h
@@ -44,7 +44,8 @@ struct atmel_lcdfb_platform_data {
 	u8			lcd_wiring_mode;
 	unsigned int		default_lcdcon2;
 	unsigned int		default_dmacon;
-	void (*atmel_lcdfb_power_control)(int on);
+	int			gpio_power_control;
+	bool			gpio_power_control_active_low;
 	struct fb_videomode	*mode_list;
 	unsigned		num_modes;
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
