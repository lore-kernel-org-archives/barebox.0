Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMNNq-0000tx-3Z
	for barebox@lists.infradead.org; Tue, 17 May 2011 16:44:35 +0000
Received: by mail-bw0-f49.google.com with SMTP id 1so821647bwz.36
	for <barebox@lists.infradead.org>; Tue, 17 May 2011 09:44:33 -0700 (PDT)
From: Alex Galakhov <agalakhov@gmail.com>
Date: Tue, 17 May 2011 22:44:01 +0600
Message-Id: <1305650641-15125-2-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1305650641-15125-1-git-send-email-agalakhov@gmail.com>
References: <1305650641-15125-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 2/2] Enable display for MINI2440 board.
To: barebox@lists.infradead.org

Also add display modes for usual MINI2440 displays.

Signed-off-by: Alex Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/mini2440/Kconfig    |   28 +++++++++++++
 arch/arm/boards/mini2440/mini2440.c |   74 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-s3c24xx/Kconfig       |    2 +
 3 files changed, 104 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/mini2440/Kconfig

diff --git a/arch/arm/boards/mini2440/Kconfig b/arch/arm/boards/mini2440/Kconfig
new file mode 100644
index 0000000..f719181
--- /dev/null
+++ b/arch/arm/boards/mini2440/Kconfig
@@ -0,0 +1,28 @@
+
+if MACH_MINI2440
+
+config MINI2440_VIDEO
+	bool
+	select VIDEO
+	select DRIVER_VIDEO_S3C
+
+config MINI2440_VIDEO_N35
+	bool "Support N35 display (240x320)"
+	select MINI2440_VIDEO
+	help
+	  This adds support for NEC 3.5 inch TFT display,
+	  the most common one used with MINI2440 board.
+
+config MINI2440_VIDEO_A70
+	bool "Support A70 display (800x480)"
+	select MINI2440_VIDEO
+	help
+	  This adds support for Innolux 7.0 inch TFT display.
+
+config MINI2440_VIDEO_SVGA
+	bool "Support SVGA video adapter"
+	select MINI2440_VIDEO
+	help
+	  This adds support for MINI2440 SVGA (1280x1024) video output adapter.
+
+endif
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 448aa40..c96d177 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -34,6 +34,7 @@
 #include <dm9000.h>
 #include <nand.h>
 #include <mci.h>
+#include <fb.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <mach/gpio.h>
@@ -41,6 +42,7 @@
 #include <mach/s3c24x0-nand.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/mci.h>
+#include <mach/fb.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
@@ -99,6 +101,77 @@ static struct device_d mci_dev = {
 	.platform_data	= &mci_data,
 };
 
+static struct fb_videomode s3c24x0_fb_modes[] = {
+#ifdef CONFIG_MINI2440_VIDEO_N35
+	{
+		.name		= "N35",
+		.refresh	= 60,
+		.xres		= 240,
+		.left_margin	= 21,
+		.right_margin	= 38,
+		.hsync_len	= 6,
+		.yres		= 320,
+		.upper_margin	= 4,
+		.lower_margin	= 4,
+		.vsync_len	= 2,
+		.pixclock	= 115913,
+		.sync		= FB_SYNC_USE_PWREN,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	},
+#endif
+#ifdef CONFIG_MINI2440_VIDEO_A70
+	{
+		.name		= "A70",
+		.refresh	= 50,
+		.xres		= 800,
+		.left_margin	= 40,
+		.right_margin	= 40,
+		.hsync_len	= 48,
+		.yres		= 480,
+		.upper_margin	= 29,
+		.lower_margin	= 3,
+		.vsync_len	= 3,
+		.pixclock	= 41848,
+		.sync		= FB_SYNC_USE_PWREN | FB_SYNC_DE_HIGH_ACT,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	},
+#endif
+#ifdef CONFIG_MINI2440_VIDEO_SVGA
+	{
+		.name		= "SVGA",
+		.refresh	= 24,
+		.xres		= 1024,
+		.left_margin	= 1,
+		.right_margin	= 2,
+		.hsync_len	= 2,
+		.yres		= 768,
+		.upper_margin	= 200,
+		.lower_margin	= 16,
+		.vsync_len	= 16,
+		.pixclock	= 40492,
+		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT | FB_SYNC_DE_HIGH_ACT 
+                                  /* | FB_SYNC_SWAP_HW */ /* FIXME maybe */ ,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	},
+#endif
+};
+
+static struct s3c_fb_platform_data s3c24x0_fb_data = {
+	.mode_list		= s3c24x0_fb_modes,
+	.mode_cnt		= sizeof(s3c24x0_fb_modes) / sizeof(struct fb_videomode),
+	.bits_per_pixel		= 16,
+	.passive_display	= 0,
+};
+
+static struct device_d s3cfb_dev = {
+	.name    = "s3c_fb",
+	.map_base = S3C2410_LCD_BASE,
+	.platform_data	= &s3c24x0_fb_data,
+};
+
 static const unsigned pin_usage[] = {
 	/* address bus, used by NOR, SDRAM */
 	GPA1_ADDR16,
@@ -269,6 +342,7 @@ static int mini2440_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	register_device(&mci_dev);
+	register_device(&s3cfb_dev);
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 33d230c..80b65fb 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -67,6 +67,8 @@ config MACH_A9M2410DEV
 
 endchoice
 
+source arch/arm/boards/mini2440/Kconfig 
+
 endmenu
 
 menu "S3C24X0 Features              "
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
