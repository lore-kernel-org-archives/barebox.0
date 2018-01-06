Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvsd-0003mG-Cf
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:19:53 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 62C1320025
 for <barebox@lists.infradead.org>; Sat,  6 Jan 2018 22:19:39 +0100 (CET)
Date: Sat, 6 Jan 2018 22:19:38 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106211938.GA25955@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] atmel_lcdfb: introduce driver data
To: Barebox List <barebox@lists.infradead.org>

From b1cb4bbebbe8f2ef7049cdc8604f516bb0108403 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat, 6 Jan 2018 14:33:53 +0100
Subject: [PATCH] atmel_lcdfb: introduce driver data

Introduce driver data like known from the kernel.
This allows us to get rid of the hack where the
intensity bit support was included in the lcd wiring mode.
(No longer any support for IBGR, IRBG)

It has the nice side-effect that all places where we test
for hacks can now use flags and not a set of cpu's.
So we keep all the configuration in one place.

The configuration is included for non-DT users.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---

When using this for a proprietary board I realized that
using IBGR & friends was not a good idea.
So drop it and introduce the same concept as used in the kernel.
This has the side effect that some parts in the
driver got a little cleaner.

Tested on my at91sam9263ek board.

As we have many boards that are not yet DT enabled I made
sure to keep this in sync too - but not tested.

	Sam


 drivers/video/atmel_lcdfb.c      | 48 ++++++++++++++++++++++++++++++----------
 drivers/video/atmel_lcdfb.h      |  8 +++++++
 drivers/video/atmel_lcdfb_core.c | 32 ++++++++++++++++-----------
 3 files changed, 63 insertions(+), 25 deletions(-)

diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 7c05e857b..d343c5c05 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -23,7 +23,6 @@
 #include <init.h>
 #include <mach/hardware.h>
 #include <mach/io.h>
-#include <mach/cpu.h>
 #include <errno.h>
 #include <linux/clk.h>
 
@@ -34,12 +33,12 @@
 #define ATMEL_LCDC_DMA_BURST_LEN	8	/* words */
 #define ATMEL_LCDC_FIFO_SIZE		512	/* words */
 
-static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
+static unsigned long compute_hozval(struct atmel_lcdfb_info *sinfo,
+				    unsigned long xres, unsigned long lcdcon2)
 {
 	unsigned long value;
 
-	if (!(cpu_is_at91sam9261() || cpu_is_at91sam9g10()
-		|| cpu_is_at32ap7000()))
+	if (!sinfo->have_hozval)
 		return xres;
 
 	value = xres;
@@ -133,7 +132,7 @@ static void atmel_lcdfb_setup_core(struct fb_info *info)
 	lcdc_writel(sinfo, ATMEL_LCDC_DMAFRMCFG, value);
 
 	/* Set pixel clock */
-	if (cpu_is_at91sam9g45() && !cpu_is_at91sam9g45es())
+	if (sinfo->have_alt_pixclock)
 		pix_factor = 1;
 
 	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
@@ -191,7 +190,7 @@ static void atmel_lcdfb_setup_core(struct fb_info *info)
 	lcdc_writel(sinfo, ATMEL_LCDC_TIM2, value);
 
 	/* Horizontal value (aka line size) */
-	hozval_linesz = compute_hozval(mode->xres,
+	hozval_linesz = compute_hozval(sinfo, mode->xres,
 					lcdc_readl(sinfo, ATMEL_LCDC_LCDCON2));
 
 	/* Display size */
@@ -243,14 +242,39 @@ static int atmel_lcdc_probe(struct device_d *dev)
 	return atmel_lcdc_register(dev, &atmel_lcdfb_data);
 }
 
+static struct atmel_lcdfb_config at91sam9261_config = {
+	.have_hozval		= true,
+	.have_intensity_bit	= true,
+};
+
+static struct atmel_lcdfb_config at91sam9263_config = {
+	.have_intensity_bit	= true,
+};
+
+static struct atmel_lcdfb_config at91sam9g10_config = {
+	.have_hozval		= true,
+};
+
+static struct atmel_lcdfb_config at91sam9g45_config = {
+	.have_alt_pixclock	= true,
+};
+
+static struct atmel_lcdfb_config at91sam9rl_config = {
+	.have_intensity_bit	= true,
+};
+
+static struct atmel_lcdfb_config at32ap_config = {
+	.have_hozval		= true,
+};
+
 static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
-	{ .compatible = "atmel,at91sam9261-lcdc", },
-	{ .compatible = "atmel,at91sam9263-lcdc", },
-	{ .compatible = "atmel,at91sam9g10-lcdc", },
-	{ .compatible = "atmel,at91sam9g45-lcdc", },
+	{ .compatible = "atmel,at91sam9261-lcdc",	.data = &at91sam9261_config, },
+	{ .compatible = "atmel,at91sam9263-lcdc",	.data = &at91sam9263_config, },
+	{ .compatible = "atmel,at91sam9g10-lcdc",	.data = &at91sam9g10_config, },
+	{ .compatible = "atmel,at91sam9g45-lcdc",	.data = &at91sam9g45_config, },
 	{ .compatible = "atmel,at91sam9g45es-lcdc", },
-	{ .compatible = "atmel,at91sam9rl-lcdc", },
-	{ .compatible = "atmel,at32ap-lcdc", },
+	{ .compatible = "atmel,at91sam9rl-lcdc",	.data = &at91sam9rl_config, },
+	{ .compatible = "atmel,at32ap-lcdc",		.data = &at32ap_config, },
 	{ /* sentinel */ }
 };
 
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index a011d4201..b8458924b 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -4,6 +4,12 @@
 
 struct atmel_lcdfb_info;
 
+struct atmel_lcdfb_config {
+	bool have_alt_pixclock;
+	bool have_hozval;
+	bool have_intensity_bit;
+};
+
 struct atmel_lcdfb_devdata {
 	void (*start)(struct atmel_lcdfb_info *sinfo);
 	void (*stop)(struct atmel_lcdfb_info *sinfo, u32 flags);
@@ -24,7 +30,9 @@ struct atmel_lcdfb_info {
 	unsigned int		lcdcon2;
 	unsigned int		dmacon;
 	unsigned int		lcd_wiring_mode;
+	bool			have_alt_pixclock;
 	bool			have_intensity_bit;
+	bool			have_hozval;
 
 	int			gpio_power_control;
 	bool			gpio_power_control_active_low;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 45b0c63d0..c6ece5b78 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -27,6 +27,8 @@
 #include <linux/clk.h>
 #include <malloc.h>
 
+#include <mach/cpu.h>
+
 #include "atmel_lcdfb.h"
 
 static void atmel_lcdfb_start_clock(struct atmel_lcdfb_info *sinfo)
@@ -130,7 +132,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 			= info->bits_per_pixel;
 		break;
 	case 16:
-		/* Older SOCs use IBGR:555 rather than BGR:565. */
+		/* Older SOCs use BGR:555 rather than BGR:565. */
 		if (sinfo->have_intensity_bit)
 			info->green.length = 5;
 		else
@@ -280,9 +282,7 @@ static int power_control_init(struct device_d *dev,
 }
 
 /*
- * Syntax: atmel,lcd-wiring-mode: lcd wiring mode "RGB", "BRG", "IRGB", "IBRG"
- * The optional "I" indicates that green has an intensity bit as used by some
- * older displays
+ * Syntax: atmel,lcd-wiring-mode: lcd wiring mode "RGB", "BGR"
  */
 static int of_get_wiring_mode(struct device_node *np,
 			      struct atmel_lcdfb_info *sinfo)
@@ -294,22 +294,13 @@ static int of_get_wiring_mode(struct device_node *np,
 	if (ret < 0) {
 		/* Not present, use defaults */
 		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
-		sinfo->have_intensity_bit = false;
 		return 0;
 	}
 
 	if (!strcasecmp(mode, "BGR")) {
 		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
-		sinfo->have_intensity_bit = false;
 	} else if (!strcasecmp(mode, "RGB")) {
 		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
-		sinfo->have_intensity_bit = false;
-	} else if (!strcasecmp(mode, "IBGR")) {
-		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
-		sinfo->have_intensity_bit = true;
-	} else if (!strcasecmp(mode, "IRGB")) {
-		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
-		sinfo->have_intensity_bit = true;
 	} else {
 		return -ENODEV;
 	}
@@ -338,8 +329,17 @@ static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
 	struct fb_info *info = &sinfo->info;
 	struct display_timings *modes;
 	struct device_node *display;
+	struct atmel_lcdfb_config *config;
 	int ret;
 
+	/* Driver data - optional */
+	ret = dev_get_drvdata(dev, (const void **)&config);
+	if (!ret) {
+		sinfo->have_hozval = config->have_hozval;
+		sinfo->have_intensity_bit = config->have_intensity_bit;
+		sinfo->have_alt_pixclock = config->have_alt_pixclock;
+	}
+
 	/* Required properties */
 	display = of_parse_phandle(dev->device_node, "display", 0);
 	if (!display) {
@@ -415,7 +415,13 @@ static int lcdfb_pdata_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo
 	sinfo->lcdcon2 = pdata->default_lcdcon2;
 	sinfo->dmacon = pdata->default_dmacon;
 	sinfo->lcd_wiring_mode = pdata->lcd_wiring_mode;
+
+	sinfo->have_alt_pixclock = cpu_is_at91sam9g45() &&
+				   !cpu_is_at91sam9g45es();
 	sinfo->have_intensity_bit = pdata->have_intensity_bit;
+	sinfo->have_hozval = cpu_is_at91sam9261() ||
+			     cpu_is_at91sam9g10() ||
+			     cpu_is_at32ap7000();
 
 	info = &sinfo->info;
 	info->modes.modes = pdata->mode_list;
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
