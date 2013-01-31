Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0ski-000898-J8
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:56:26 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F2172FFADAD
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:11:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 12:54:58 +0100
Message-Id: <1359633302-19419-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] at91sam9x5ek: add lcd support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/env/bin/init_board |   15 ++++++++
 arch/arm/boards/at91sam9x5ek/init.c             |   44 +++++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig         |    4 ++-
 3 files changed, 62 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/env/bin/init_board

diff --git a/arch/arm/boards/at91sam9x5ek/env/bin/init_board b/arch/arm/boards/at91sam9x5ek/env/bin/init_board
new file mode 100644
index 0000000..f3d417e
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/env/bin/init_board
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
+
+exit 1
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 9c45d31..4e1e069 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -118,6 +118,49 @@ static void ek_add_device_eth(void)
 	at91_add_device_eth(0, &macb_pdata);
 }
 
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
+/*
+ * LCD Controller
+ */
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name		= "LG",
+		.refresh	= 60,
+		.xres		= 800,		.yres		= 480,
+		.pixclock	= KHZ2PICOS(33260),
+
+		.left_margin	= 88,		.right_margin	= 168,
+		.upper_margin	= 8,		.lower_margin	= 37,
+		.hsync_len	= 128,		.vsync_len	= 2,
+
+		.sync		= 0,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+/* Default output mode is TFT 24 bit */
+#define AT91SAM9X5_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
+
+/* Driver datas */
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_lcdcon2		= AT91SAM9X5_DEFAULT_LCDCFG5,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
+static void ek_add_device_lcdc(void)
+{
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
 /*
  * MCI (SD/MMC)
  */
@@ -263,6 +306,7 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_usb();
 	ek_add_led();
 	ek_add_device_i2c();
+	ek_add_device_lcdc();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 400a35b..d2cdaf2 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -4,6 +4,7 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
@@ -40,6 +41,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -89,4 +91,4 @@ CONFIG_FS_TFTP=y
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
