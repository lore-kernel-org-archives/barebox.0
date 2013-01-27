Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQJZ-0003Ly-KH
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:22:26 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B3DFCDC0D40
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 12:32:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 12:20:48 +0100
Message-Id: <1359285649-18717-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359285649-18717-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130127110714.GL26329@game.jcrosoft.org>
 <1359285649-18717-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] at91sam9261ek: add lcd support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/env/bin/init_board |    7 ++
 arch/arm/boards/at91sam9261ek/init.c             |   83 +++++++++++++++++++++-
 arch/arm/configs/at91sam9261ek_defconfig         |    4 ++
 3 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9261ek/env/bin/init_board b/arch/arm/boards/at91sam9261ek/env/bin/init_board
index a76a660..8e849c6 100644
--- a/arch/arm/boards/at91sam9261ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9261ek/env/bin/init_board
@@ -1,5 +1,12 @@
 #!/bin/sh
 
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
+
 button_name="dfu_bp"
 button_wait=5
 
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 7c95435..2597ff8 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -30,7 +30,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <dm9000.h>
@@ -149,6 +149,86 @@ static void ek_add_device_udc(void)
 static void ek_add_device_udc(void) {}
 #endif
 
+/*
+ * LCD Controller
+ */
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+static int ek_gpio_request_output(int gpio, const char *name)
+{
+	int ret;
+
+	ret = gpio_request(gpio, name);
+	if (ret) {
+		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
+		return ret;
+	}
+
+	ret = gpio_direction_output(gpio, 1);
+	if (ret)
+		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
+	return ret;
+}
+
+/* TFT */
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+	        .name           = "TX09D50VM1CCA @ 60",
+		.refresh	= 60,
+		.xres		= 240,		.yres		= 320,
+		.pixclock	= KHZ2PICOS(4965),
+
+		.left_margin	= 1,		.right_margin	= 33,
+		.upper_margin	= 1,		.lower_margin	= 0,
+		.hsync_len	= 5,		.vsync_len	= 1,
+
+		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+#define AT91SAM9261_DEFAULT_TFT_LCDCON2	(ATMEL_LCDC_MEMOR_LITTLE \
+					| ATMEL_LCDC_DISTYPE_TFT    \
+					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
+
+static void at91_lcdc_tft_power_control(int on)
+{
+	if (on)
+		gpio_set_value(AT91_PIN_PA12, 0);	/* power up */
+	else
+		gpio_set_value(AT91_PIN_PA12, 1);	/* power down */
+}
+
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= AT91SAM9261_DEFAULT_TFT_LCDCON2,
+	.guard_time			= 1,
+	.atmel_lcdfb_power_control	= at91_lcdc_tft_power_control,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
+static int at91_lcdc_gpio(void)
+{
+	return ek_gpio_request_output(AT91_PIN_PA12, "lcdc_tft_power");
+}
+
+static void ek_add_device_lcdc(void)
+{
+	if (at91_lcdc_gpio())
+		return;
+
+	if (machine_is_at91sam9g10ek())
+		ek_lcdc_data.lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
+
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
@@ -245,6 +325,7 @@ static int at91sam9261ek_devices_init(void)
 	ek_add_device_udc();
 	ek_add_device_buttons();
 	ek_device_add_leds();
+	ek_add_device_lcdc();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 5daa47b..9c955b4 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -38,6 +38,7 @@ CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -63,7 +64,10 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_PNG=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
