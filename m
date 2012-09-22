Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUS9-00081S-QN
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:29:28 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B977CFF9FBB
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:35:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 20:26:48 +0200
Message-Id: <1348338408-26737-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] at91sam9m10g45ek: add lcdc support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Acked-by: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 +++++
 arch/arm/boards/at91sam9m10g45ek/env/splash.png    |  Bin 0 -> 22747 bytes
 arch/arm/boards/at91sam9m10g45ek/init.c            |   33 ++++++++++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   11 +++++--
 4 files changed, 48 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/splash.png

diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
index 3d7426f..eeb7a76 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
+++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
@@ -5,6 +5,13 @@ export PATH
 
 . /env/config
 
+splash=/env/splash.png
+
+if [ -f ${splash} ]; then
+	splash ${splash}
+	fb0.enable=1
+fi
+
 menu -r -m boot
 menu -a -m boot -d "\e[1;36mWelcome on Barebox Boot Sequence\e[0m"
 menu -e -a -m boot -c 'menu_boot'			-d "boot (default)             "
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/splash.png b/arch/arm/boards/at91sam9m10g45ek/env/splash.png
new file mode 100644
index 0000000000000000000000000000000000000000..08f2ac4fc106e6e38e503338b0fb047d20ac1f99
GIT binary patch
literal 22747
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

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index f1c43cc..720d707 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -218,6 +218,38 @@ static int at91sam9m10g45ek_mem_init(void)
 }
 mem_initcall(at91sam9m10g45ek_mem_init);
 
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name           = "LG",
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
+#define AT91SAM9G45_DEFAULT_LCDCON2 	(ATMEL_LCDC_MEMOR_LITTLE \
+					| ATMEL_LCDC_DISTYPE_TFT \
+					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
+
+/* Driver datas */
+static struct atmel_lcdfb_info __initdata ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 32,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
 static int at91sam9m10g45ek_devices_init(void)
 {
 	ek_add_device_nand();
@@ -225,6 +257,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	ek_add_device_mci();
 	ek_device_add_leds();
 	ek_device_add_keyboard();
+	at91_add_device_lcdc(&ek_lcdc_data);
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 1fa37d6..7e555b1 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -5,6 +5,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10G45-EK:"
 CONFIG_LONGHELP=y
@@ -29,8 +30,6 @@ CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -38,13 +37,17 @@ CONFIG_CMD_BOOTM_INITRD=y
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
@@ -66,6 +69,8 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -75,4 +80,4 @@ CONFIG_LED_TRIGGERS=y
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
