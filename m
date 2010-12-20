Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003El-O6
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:28 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000UD-Es
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xh-At
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:08 +0100
Message-Id: <1292857509-13881-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/10] ARM KARO-TX28-STK5: Add a user for video graphics
	support on i.MX28
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |  148 +++++++++++++++++++++++++++++++++
 arch/arm/configs/tx28stk5_defconfig   |    4 +
 2 files changed, 152 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a032e6a..6de41f7 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -23,6 +23,7 @@
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
+#include <mach/fb.h>
 
 static struct stm_mci_platform_data mci_pdata = {
 	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
@@ -48,6 +49,152 @@ static struct device_d fec_dev = {
 	.platform_data = &fec_info,
 };
 
+/*
+ * The TX28 EVK comes with a VGA connector. We can support many video modes
+ *
+ * Note: The VGA connector is driven from the LCD lines via an ADV7125. This
+ * DA converter needs an high active DE signal to show a video signal.
+ */
+static struct fb_videomode tx28evk_vmodes[] = {
+	{
+	/*
+	 * Modeline "640x480" x 59.9 (to be used with the VGA connector)
+	 * Clock: 25.18 MHz
+	 * Line: 640 656 752 800 (31.5 kHz)
+	 * Frame: 480 490 492 525
+	 * Syncs: -hsync -vsync
+	 */
+		.name = "VGA",
+		.refresh = 60,
+		.xres = 640,
+		.yres = 480,
+		.pixclock = KHZ2PICOS(25180),
+		.left_margin = 48,
+		.hsync_len = 96,
+		.right_margin = 16,
+		.upper_margin = 33,
+		.vsync_len = 2,
+		.lower_margin = 10,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Emerging ETV570 640 x 480 display (directly connected)
+	 * Clock: 25.175 MHz
+	 * Syncs: low active, DE high active
+	 * Display area: 115.2 mm x 86.4 mm
+	 */
+		.name = "ETV570",
+		.refresh = 60,
+		.xres = 640,
+		.yres = 480,
+		.pixclock = KHZ2PICOS(25175),
+		.left_margin = 114,
+		.hsync_len = 30,
+		.right_margin = 16,
+		.upper_margin = 32,
+		.vsync_len = 3,
+		.lower_margin = 10,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+		/*
+		 * This display is connected:
+		 *  display side   -> CPU side
+		 * ----------------------------
+		 * RESET# pin  -> GPIO126 (3/30) LCD_RESET -> L = display reset
+		 * PWRCTRL pin -> GPIO63 (1/31) LCD_ENABLE - > H=on, L=off
+		 * LEDCTRL pin -> GPIO112 (2/16) PWM0 -> 2.5 V = LEDs off
+		 *                                    ->   0 V = LEDs on
+		 *
+		 * Note: Backlight is on, only if PWRCTRL=H _and_ LEDCTRL=0
+		 */
+	}, {
+	/*
+	 * Modeline "800x600" x 60.3
+	 * Clock: 40.00 MHz
+	 * Line: 800 840 968 1056 (37.9 kHz)
+	 * Frame: 600 601 605 628
+	 * Syncs: +hsync +vsync
+	 */
+		.name = "SVGA",
+		.refresh = 60,
+		.xres = 800,
+		.yres = 600,
+		.pixclock = KHZ2PICOS(40000),
+		.left_margin = 88,
+		.hsync_len = 128,
+		.right_margin = 40,
+		.upper_margin = 23,
+		.vsync_len = 4,
+		.lower_margin = 1,
+		.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT |
+				FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Modeline "1024x768" x 60.0
+	 * Clock: 65.00 MHz
+	 * Line: 1024 1048 1184 1344 (48.4 kHz)
+	 * Frame: 768 771 777 806
+	 * Syncs: -hsync -vsync
+	 */
+		.name = "XGA",
+		.refresh = 60,
+		.xres = 1024,
+		.yres = 768,
+		.pixclock = KHZ2PICOS(65000),
+		.left_margin = 160,
+		.hsync_len = 136,
+		.right_margin = 24,
+		.upper_margin = 29,
+		.vsync_len = 6,
+		.lower_margin = 3,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Modeline "1280x1024" x 60.0
+	 * Clock: 108.00 MHz
+	 * Line: 1280 1328 1440 1688 (64.0 kHz)
+	 * Frame: 1024 1025 1028 1066
+	 * Syncs: +hsync +vsync
+	 */
+		.name = "SXGA",
+		.refresh = 60,
+		.xres = 1280,
+		.yres = 1024,
+		.pixclock = KHZ2PICOS(108000),
+		.left_margin = 248,
+		.hsync_len = 112,
+		.right_margin = 48,
+		.upper_margin = 38,
+		.vsync_len = 3,
+		.lower_margin = 1,
+		.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT |
+				FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	},
+};
+
+static struct imx_fb_videomode imxfb_mode = {
+	.mode_list = tx28evk_vmodes,
+	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
+	.dotclk_delay = 0,	/* no adaption required */
+	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+};
+
+static struct device_d ldcif_dev = {
+	.name = "stmfb",
+	.map_base = IMX_FB_BASE,
+	.size = 4096,
+	.platform_data = &imxfb_mode,
+};
+
 static const uint32_t tx28_starterkit_pad_setup[] = {
 	/*
 	 * Part II of phy's initialization
@@ -205,6 +352,7 @@ void base_board_init(void)
 	imx_set_sspclk(0, 100000000, 1);
 
 	register_device(&mci_socket);
+	register_device(&ldcif_dev);
 
 	imx_enable_enetclk();
 	register_device(&fec_dev);
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 7246553..d6b81c6 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_STM=y
 CONFIG_ARCH_IMX28=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_BROKEN=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -30,12 +31,15 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_STM378X=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
