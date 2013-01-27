Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQJV-0003M0-Pw
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:22:19 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B3835DC0C97
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 12:32:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 12:20:47 +0100
Message-Id: <1359285649-18717-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] at91sam9m10ihd: add lcd support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10ihd/env/init/splash |    8 +++
 arch/arm/boards/at91sam9m10ihd/init.c          |   65 ++++++++++++++++++++++++
 arch/arm/configs/at91sam9m10ihd_defconfig      |    5 ++
 3 files changed, 78 insertions(+)
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash

diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/splash b/arch/arm/boards/at91sam9m10ihd/env/init/splash
new file mode 100644
index 0000000..18e74df
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/splash
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index beede0b..da32a04 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -173,6 +173,70 @@ static int at91sam9m10g45ek_mem_init(void)
 }
 mem_initcall(at91sam9m10g45ek_mem_init);
 
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
+static struct fb_videomode at91fb_default_monspecs[] = {
+	{
+		.name		= "MULTEK",
+		.refresh	= 60,
+		.xres		= 800,		.yres		= 480,
+		.pixclock	= KHZ2PICOS(15000),
+
+		.left_margin	= 40,		.right_margin	= 40,
+		.upper_margin	= 29,		.lower_margin	= 13,
+		.hsync_len	= 48,		.vsync_len	= 3,
+
+		.sync		= 0,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+#define AT91SAM9G45_DEFAULT_LCDCON2	(ATMEL_LCDC_MEMOR_LITTLE \
+					| ATMEL_LCDC_DISTYPE_TFT \
+					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
+
+static void at91_lcdc_power_control(int on)
+{
+	gpio_set_value(AT91_PIN_PE6, on);
+}
+
+/* Driver datas */
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.mode_list			= at91fb_default_monspecs,
+	.num_modes			= ARRAY_SIZE(at91fb_default_monspecs),
+};
+
+static void ek_add_device_lcd(void)
+{
+	if (ek_gpio_request_output(AT91_PIN_PE6, "lcdc_power"))
+		return;
+
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+#else
+static void ek_add_device_lcd(void) {}
+
 static void ek_add_device_w1(void)
 {
 	at91_set_gpio_input(w1_pdata.pin, 0);
@@ -191,6 +255,7 @@ static int at91sam9m10ihd_devices_init(void)
 	ek_add_device_spi();
 	ek_add_device_i2c();
 	ek_add_device_usb();
+	ek_add_device_lcd();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index f6c3ef7..2faaa68 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -6,6 +6,7 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10IHD:"
 CONFIG_LONGHELP=y
@@ -45,6 +46,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -78,6 +80,8 @@ CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
 CONFIG_USB_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -92,3 +96,4 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_PNG=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
