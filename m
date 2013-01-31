Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0ski-000897-J6
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:56:30 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 05F6DFFB027
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:11:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 12:55:00 +0100
Message-Id: <1359633302-19419-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359633302-19419-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130131115046.GA26329@game.jcrosoft.org>
 <1359633302-19419-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] at91sam9n12ek: add lcd support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9n12ek/env/bin/init_board |    7 +++
 arch/arm/boards/at91sam9n12ek/init.c             |   70 ++++++++++++++++++++++
 arch/arm/configs/at91sam9n12ek_defconfig         |    6 +-
 3 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9n12ek/env/bin/init_board b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
index 977430d..b41b638 100644
--- a/arch/arm/boards/at91sam9n12ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
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
 
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index cec1421..a181666 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -124,6 +124,75 @@ static void __init ek_add_device_ks8851(void)
 static void __init ek_add_device_ks8851(void) {}
 #endif /* CONFIG_DRIVER_NET_KS8851_MLL */
 
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
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
+
+/*
+ * LCD Controller
+ */
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name		= "QD",
+		.refresh	= 60,
+		.xres		= 480,		.yres	= 272,
+		.pixclock	= KHZ2PICOS(9000),
+
+		.left_margin	= 8,		.right_margin	= 43,
+		.upper_margin	= 4,		.lower_margin	= 12,
+		.hsync_len	= 5,		.vsync_len	= 10,
+
+		.sync		= 0,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+/* Default output mode is TFT 24 bit */
+#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
+
+static void at91_lcdc_power_control(int on)
+{
+	gpio_set_value(AT91_PIN_PC25, !on);
+}
+
+/* Driver datas */
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.atmel_lcdfb_power_control	= at91_lcdc_power_control,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
+static void ek_add_device_lcdc(void)
+{
+	if (ek_gpio_request_output(AT91_PIN_PC25, "lcdc_power"))
+		return;
+
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
 /*
  * MCI (SD/MMC)
  */
@@ -244,6 +313,7 @@ static int at91sam9n12ek_devices_init(void)
 	ek_add_device_i2c();
 	ek_add_device_ks8851();
 	ek_add_device_buttons();
+	ek_add_device_lcdc();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9N12EK);
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 3e25c8f..57b29a5 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x26f00000
+CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
@@ -40,6 +41,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -70,6 +72,8 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -83,4 +87,4 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
+CONFIG_PNG=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
