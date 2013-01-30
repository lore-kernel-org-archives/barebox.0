Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0gyI-00005W-Lr
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 23:21:43 +0000
Received: from mail415.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 27297FF9F11
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 00:36:18 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 00:20:17 +0100
Message-Id: <1359588017-20045-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359588017-20045-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130130230825.GX26329@game.jcrosoft.org>
 <1359588017-20045-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] sama5d3xek: add lcd support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/sama5d3xek/init.c     |   45 +++++++++++++++++++++++++++++++++
 arch/arm/configs/sama5d3xek_defconfig |    4 +++
 2 files changed, 49 insertions(+)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index ae23a31..d58bf44 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -153,6 +153,50 @@ static void ek_add_device_eth(void)
 static void ek_add_device_eth(void) {}
 #endif
 
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
+#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
+
+/* Driver datas */
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
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
 #if defined(CONFIG_MCI_ATMEL)
 /*
  * MCI (SD/MMC)
@@ -333,6 +377,7 @@ static int at91sama5d3xek_devices_init(void)
 	ek_add_device_eth();
 	ek_add_device_spi();
 	ek_add_device_mci();
+	ek_add_device_lcdc();
 
 	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
 
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index c94419a..970ded5 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -43,6 +43,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -71,6 +72,8 @@ CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_UBI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -89,3 +92,4 @@ CONFIG_FS_TFTP=y
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
