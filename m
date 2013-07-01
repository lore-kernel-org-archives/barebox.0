Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtZQp-0002vG-CG
 for barebox@lists.infradead.org; Mon, 01 Jul 2013 08:25:57 +0000
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 1 Jul 2013 10:25:21 +0200
Message-Id: <1372667121-12240-1-git-send-email-j.weitzel@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pcm049: Add platformcode for omap4 framebuffer
To: barebox@lists.infradead.org

From: Christoph Fritz <chf.fritz@googlemail.com>

For splashscreen support on pcm049, this patch adds omap4 framebuffer
platform data and configures display pd050vl1, g104x1, pm070wl4, pd104slf,
edt_etm0350G0dh6, edt_etm0430G0dh6, edt_etmv570G2dhu and edt_etm0700G0dh6

Also add extra  muxing and defconfig

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/board.c            |  188 +++++++++++++++++++++++++++++
 arch/arm/boards/pcm049/env/bin/init_board |   24 ++++
 arch/arm/boards/pcm049/env/config         |   18 +++-
 arch/arm/boards/pcm049/mux.c              |   60 +++++-----
 arch/arm/configs/pcm049_defconfig         |    5 +
 5 files changed, 263 insertions(+), 32 deletions(-)
 create mode 100644 arch/arm/boards/pcm049/env/bin/init_board

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 3c4b1a7..b7b8ea6 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -24,6 +24,8 @@
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-devices.h>
+#include <mach/omap4-clock.h>
+#include <mach/omap-fb.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
@@ -92,6 +94,190 @@ static struct gpmc_nand_platform_data nand_plat = {
 	.nand_cfg = &omap4_nand_cfg,
 };
 
+static struct omapfb_display const pcm049_displays[] = {
+	{
+		.mode	= {
+			.name		= "pd050vl1",
+			.refresh	= 60,
+			.xres		= 640,
+			.yres		= 480,
+			.pixclock	= 25000,
+			.left_margin	= 46,
+			.right_margin	= 18,
+			.hsync_len	= 96,
+			.upper_margin	= 33,
+			.lower_margin	= 10,
+			.vsync_len	= 2,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* Prime-View PM070WL4 */
+	{
+		.mode	= {
+			.name		= "pm070wl4",
+			.refresh	= 60,
+			.xres		= 800,
+			.yres		= 480,
+			.pixclock	= 32000,
+			.left_margin	= 86,
+			.right_margin	= 42,
+			.hsync_len	= 128,
+			.lower_margin	= 10,
+			.upper_margin	= 33,
+			.vsync_len	= 2,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* Prime-View PD104SLF */
+	{
+		.mode	= {
+			.name		= "pd104slf",
+			.refresh	= 60,
+			.xres		= 800,
+			.yres		= 600,
+			.pixclock	= 40000,
+			.left_margin	= 86,
+			.right_margin	= 42,
+			.hsync_len	= 128,
+			.lower_margin	= 1,
+			.upper_margin	= 23,
+			.vsync_len	= 4,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* EDT ETM0350G0DH6 */
+	{
+		.mode	= {
+			.name		= "edt_etm0350G0dh6",
+			.refresh	= 60,
+			.xres		= 320,
+			.yres		= 240,
+			.pixclock	= 15720,
+			.left_margin	= 68,
+			.right_margin	= 20,
+			.hsync_len	= 88,
+			.lower_margin	= 4,
+			.upper_margin	= 18,
+			.vsync_len	= 22,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* EDT ETM0430G0DH6 */
+	{
+		.mode	= {
+			.name		= "edt_etm0430G0dh6",
+			.refresh	= 60,
+			.xres		= 480,
+			.yres		= 272,
+			.pixclock	= 9000,
+			.left_margin	= 2,
+			.right_margin	= 2,
+			.hsync_len	= 41,
+			.lower_margin	= 2,
+			.upper_margin	= 2,
+			.vsync_len	= 10,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* EDT ETMV570G2DHU */
+	{
+		.mode	= {
+			.name		= "edt_etmv570G2dhu",
+			.refresh	= 60,
+			.xres		= 640,
+			.yres		= 480,
+			.pixclock	= 25175,
+			.left_margin	= 114,
+			.right_margin	= 16,
+			.hsync_len	= 30,
+			.lower_margin	= 10,
+			.upper_margin	= 35,
+			.vsync_len	= 3,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+	/* ETD ETM0700G0DH6 */
+	{
+		.mode	= {
+			.name		= "edt_etm0700G0dh6",
+			.refresh	= 60,
+			.xres		= 800,
+			.yres		= 480,
+			.pixclock	= 33260,
+			.left_margin	= 216,
+			.right_margin	= 40,
+			.hsync_len	= 128,
+			.lower_margin	= 10,
+			.upper_margin	= 35,
+			.vsync_len	= 2,
+		},
+
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+	},
+
+	/* CHIMEI G104X1-L03 */
+	{
+		.mode = {
+			.name		= "g104x1",
+			.refresh	= 60,
+			.xres		= 1024,
+			.yres		= 768,
+			.pixclock	= 64000,
+			.left_margin	= 320,
+			.right_margin	= 1,
+			.hsync_len	= 320,
+			.upper_margin	= 38,
+			.lower_margin	= 38,
+			.vsync_len	= 2,
+		},
+		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+				OMAP_DSS_LCD_DATALINES_24),
+
+		.power_on_delay		= 50,
+		.power_off_delay	= 100,
+	},
+};
+
+#define GPIO_DISPENABLE			  118
+#define GPIO_BACKLIGHT			  122
+
+static void pcm049_fb_enable(int e)
+{
+	gpio_direction_output(GPIO_DISPENABLE, e);
+	gpio_direction_output(GPIO_BACKLIGHT, e);
+}
+
+static struct omapfb_platform_data pcm049_fb_data = {
+	.displays	= pcm049_displays,
+	.num_displays	= ARRAY_SIZE(pcm049_displays),
+
+	.dss_clk_hz	= 19200000,
+
+	.bpp		= 32,
+	.enable		= pcm049_fb_enable,
+};
+
 static int pcm049_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
@@ -116,6 +302,8 @@ static int pcm049_devices_init(void)
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM049);
 
+	omap_add_display(&pcm049_fb_data);
+
 	return 0;
 }
 device_initcall(pcm049_devices_init);
diff --git a/arch/arm/boards/pcm049/env/bin/init_board b/arch/arm/boards/pcm049/env/bin/init_board
new file mode 100644
index 0000000..3454eaa
--- /dev/null
+++ b/arch/arm/boards/pcm049/env/bin/init_board
@@ -0,0 +1,24 @@
+#!/bin/sh
+global displayargs
+. /env/config
+
+if [ -z $display ]; then
+	echo "no display configured"
+	exit 0
+fi
+
+if [ $display = dvi ]; then
+	global.displayargs="omapdss.def_disp=dvi omapfb.mode=dvi:$dvi_resolution"
+	exit 0
+fi
+
+# Display a splash screen
+
+if [ -e /dev/fb0 ]; then
+	fb0.mode_name=$display
+	splash /dev/nand0.splash.bb
+	fb0.enable=1
+fi
+
+global.displayargs="panel_generic_dpi.name=$display"
+
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index 0ae3e1b..aa87228 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -40,8 +40,22 @@ autoboot_timeout=3
 
 bootargs="console=ttyO2,115200"
 
-nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
-rootfs_mtdblock_nand=4
+nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),4M(splash),-(root)"
+nand_device="omap2-nand.0"
+rootfs_mtdblock_nand=5
+
+#Displays
+# Splashscreen-Display can be either '', 'pd050vl1', 'pm070wl4', 'pd104slf', 'g104x1'
+# 'edt_etm0350G0dh6', 'edt_etm0430G0dh6', 'edt_etmv570G2dhu' or 'edt_etm0700G0dh6'
+# to use dvi output in kernel set 'display=dvi' and
+# dvi_resolution to '640x480-60' '800x600-60' or '1024x768-60'
+
+display=edt_etm0700G0dh6
+#dvi_resolution=1024x768-60
+
+if [ -n ${global.displayargs} ]; then
+	bootargs="$bootargs ${global.displayargs}"
+fi
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
index 35eb0a3..fda4c51 100644
--- a/arch/arm/boards/pcm049/mux.c
+++ b/arch/arm/boards/pcm049/mux.c
@@ -109,11 +109,11 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ABE_PDM_DL_DATA, (SAFE_MODE)},					/* unused */
 	{ABE_PDM_FRAME, (SAFE_MODE)},					/* unused */
 	{ABE_PDM_LB_CLK, (SAFE_MODE)},					/* unused */
-	{ABE_CLKS, (SAFE_MODE)},					/* unused */
+	{ABE_CLKS, (M3)},						/* gpio_118 */
 	{ABE_DMIC_CLK1, (SAFE_MODE)},					/* nc */
 	{ABE_DMIC_DIN1, (SAFE_MODE)},					/* unused */
 	{ABE_DMIC_DIN2, (DIS | IEN | M3)},				/* gpio_121 */
-	{ABE_DMIC_DIN3, (SAFE_MODE)},					/* unused */
+	{ABE_DMIC_DIN3, (M3)},						/* gpio_122 */
 	{UART2_CTS, (SAFE_MODE)},					/* unused */
 	{UART2_RTS, (SAFE_MODE)},					/* unused */
 	{UART2_RX, (SAFE_MODE)},					/* unused */
@@ -151,17 +151,17 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{UART4_RX, (SAFE_MODE)},					/* unused */
 	{UART4_TX, (SAFE_MODE)},					/* unused */
 	{USBB2_ULPITLL_CLK, (SAFE_MODE)},				/* nc */
-	{USBB2_ULPITLL_STP, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DIR, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_NXT, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT0, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT1, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT2, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT3, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT4, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT5, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT6, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT7, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_STP, (M5)},					/* dispc2_data23 */
+	{USBB2_ULPITLL_DIR, (M5)},					/* dispc2_data22 */
+	{USBB2_ULPITLL_NXT, (M5)},					/* dispc2_data21 */
+	{USBB2_ULPITLL_DAT0, (M5)},					/* dispc2_data20 */
+	{USBB2_ULPITLL_DAT1, (M5)},					/* dispc2_data19 */
+	{USBB2_ULPITLL_DAT2, (M5)},					/* dispc2_data18 */
+	{USBB2_ULPITLL_DAT3, (M5)},					/* dispc2_data15 */
+	{USBB2_ULPITLL_DAT4, (M5)},					/* dispc2_data14 */
+	{USBB2_ULPITLL_DAT5, (M5)},					/* dispc2_data13 */
+	{USBB2_ULPITLL_DAT6, (M5)},					/* dispc2_data12 */
+	{USBB2_ULPITLL_DAT7, (M5)},					/* dispc2_data11 */
 	{USBB2_HSIC_DATA, (SAFE_MODE)},					/* nc */
 	{USBB2_HSIC_STROBE, (SAFE_MODE)},				/* nc */
 	{UNIPRO_TX0, (SAFE_MODE)},					/* unused */
@@ -192,23 +192,23 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{DPM_EMU0, (IEN | M0)},						/* dpm_emu0 */
 	{DPM_EMU1, (IEN | M0)},						/* dpm_emu1 */
 	{DPM_EMU2, (SAFE_MODE)},					/* unused */
-	{DPM_EMU3, (SAFE_MODE)},					/* unused */
-	{DPM_EMU4, (SAFE_MODE)},					/* unused */
-	{DPM_EMU5, (SAFE_MODE)},					/* unused */
-	{DPM_EMU6, (SAFE_MODE)},					/* unused */
-	{DPM_EMU7, (SAFE_MODE)},					/* unused */
-	{DPM_EMU8, (SAFE_MODE)},					/* unused */
-	{DPM_EMU9, (SAFE_MODE)},					/* unused */
-	{DPM_EMU10, (SAFE_MODE)},					/* unused */
-	{DPM_EMU11, (SAFE_MODE)},					/* unused */
-	{DPM_EMU12, (SAFE_MODE)},					/* unused */
-	{DPM_EMU13, (SAFE_MODE)},					/* unused */
-	{DPM_EMU14, (SAFE_MODE)},					/* unused */
-	{DPM_EMU15, (SAFE_MODE)},					/* unused */
-	{DPM_EMU16, (SAFE_MODE)},					/* unused */
-	{DPM_EMU17, (SAFE_MODE)},					/* unused */
-	{DPM_EMU18, (SAFE_MODE)},					/* unused */
-	{DPM_EMU19, (SAFE_MODE)},					/* unused */
+	{DPM_EMU3, (M5)},						/* dispc2_data10 */
+	{DPM_EMU4, (M5)},						/* dispc2_data9 */
+	{DPM_EMU5, (M5)},						/* dispc2_data16 */
+	{DPM_EMU6, (M5)},						/* dispc2_data17 */
+	{DPM_EMU7, (M5)},						/* dispc2_hsync */
+	{DPM_EMU8, (M5)},						/* dispc2_pclk */
+	{DPM_EMU9, (M5)},						/* dispc2_vsync */
+	{DPM_EMU10, (M5)},						/* dispc2_de */
+	{DPM_EMU11, (M5)},						/* dispc2_data8 */
+	{DPM_EMU12, (M5)},						/* dispc2_data7 */
+	{DPM_EMU13, (M5)},						/* dispc2_data6 */
+	{DPM_EMU14, (M5)},						/* dispc2_data5 */
+	{DPM_EMU15, (M5)},						/* dispc2_data4 */
+	{DPM_EMU16, (M5)},						/* dispc2_data3 */
+	{DPM_EMU17, (M5)},						/* dispc2_data2 */
+	{DPM_EMU18, (M5)},						/* dispc2_data1 */
+	{DPM_EMU19, (M5)},						/* dispc2_data0 */
 };
 
 static const struct pad_conf_entry wkup_padconf_array[] = {
diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/pcm049_defconfig
index 80dbd71..35b4052 100644
--- a/arch/arm/configs/pcm049_defconfig
+++ b/arch/arm/configs/pcm049_defconfig
@@ -39,6 +39,7 @@ CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -61,6 +62,10 @@ CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_UBI=y
 CONFIG_USB=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_OMAP=y
+CONFIG_IMAGE_RENDERER=y
+CONFIG_BMP=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
