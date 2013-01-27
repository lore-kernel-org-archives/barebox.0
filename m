Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQJX-0003Lu-2x
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:22:24 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CD080DC0C8E
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 12:32:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 12:20:46 +0100
Message-Id: <1359285649-18717-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] at91sam9m10g45ek: add lcdc support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Acked-by: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 ++++
 arch/arm/boards/at91sam9m10g45ek/init.c            |   43 ++++++++++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   11 +++--
 3 files changed, 58 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
index 3d7426f..73daecc 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
+++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
@@ -5,6 +5,13 @@ export PATH
 
 . /env/config
 
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
+
 menu -r -m boot
 menu -a -m boot -d "\e[1;36mWelcome on Barebox Boot Sequence\e[0m"
 menu -e -a -m boot -c 'menu_boot'			-d "boot (default)             "
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 214de96..1a7bda1 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -236,6 +236,48 @@ static int at91sam9m10g45ek_mem_init(void)
 }
 mem_initcall(at91sam9m10g45ek_mem_init);
 
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name		= "LG",
+		.refresh	= 60,
+		.xres		= 480,		.yres		= 272,
+		.pixclock	= KHZ2PICOS(9000),
+
+		.left_margin	= 1,		.right_margin	= 1,
+		.upper_margin	= 40,		.lower_margin	= 1,
+		.hsync_len	= 45,		.vsync_len	= 1,
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
+/* Driver datas */
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 32,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+static void ek_add_device_lcdc(void)
+{
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
+
 static int at91sam9m10g45ek_devices_init(void)
 {
 	ek_add_device_nand();
@@ -244,6 +286,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	ek_add_device_usb();
 	ek_device_add_leds();
 	ek_device_add_keyboard();
+	ek_add_device_lcdc();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 29b9f32..1df34f7 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10G45-EK:"
 CONFIG_LONGHELP=y
@@ -30,8 +31,6 @@ CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -39,13 +38,17 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
@@ -73,6 +76,8 @@ CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
 CONFIG_USB_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -82,4 +87,4 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
+CONFIG_PNG=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
