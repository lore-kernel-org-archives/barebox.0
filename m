Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zfbgs-0003VY-Uy
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 22:42:08 +0000
Received: by wiclk2 with SMTP id lk2so36803259wic.1
 for <barebox@lists.infradead.org>; Fri, 25 Sep 2015 15:41:45 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 25 Sep 2015 23:41:03 +0100
Message-Id: <1443220863-24355-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
References: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
References: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
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
Subject: [PATCH 3/3] archosg9: add display
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/board.c         | 111 ++++++++++++++++++++++++++++---
 arch/arm/boards/archosg9/env/init/splash |   5 ++
 arch/arm/boards/archosg9/mux.c           |  20 +++---
 arch/arm/configs/archosg9_defconfig      |   7 +-
 4 files changed, 123 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/init/splash

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 0a3c0b9..f80714e 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -11,6 +11,7 @@
  */
 
 #include <common.h>
+#include <clock.h>
 #include <init.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
@@ -18,6 +19,7 @@
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-devices.h>
 #include <mach/omap4_rom_usb.h>
+#include <mach/omap-fb.h>
 #include <linux/sizes.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
@@ -26,6 +28,19 @@
 #include <readkey.h>
 #include "archos_features.h"
 
+#define GPIO_LCD_PWON     38
+#define GPIO_BRIDGE_EN    39
+#define GPIO_LCD_RST      53
+#define GPIO_LCD_STDBY   101
+#define GPIO_LCD_AVDD_EN  12
+#define GPIO_BKL_EN      122
+#define GPIO_BKL_LED     143
+
+#define GPIO_5V_PWRON     36
+#define GPIO_VCC_PWRON    35
+#define GPIO_1V8_PWRON    34
+#define GPIO_GPS_ENABLE   41
+
 static int archosg9_console_init(void)
 {
 	barebox_set_model("Archos G9");
@@ -37,8 +52,6 @@ static int archosg9_console_init(void)
 			, NULL, 0, 0, 0, NULL);
 	}
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550)) {
-		gpio_direction_output(41, 0); /* gps_disable */
-		gpio_direction_output(34, 1); /* 1v8_pwron */
 		omap44xx_add_uart1();
 	}
 	return 0;
@@ -54,7 +67,7 @@ mem_initcall(archosg9_mem_init);
 static struct i2c_board_info i2c_devices[] = {
 	{ I2C_BOARD_INFO("twl6030", 0x48), },
 };
-#if defined(CONFIG_KEYBOARD_TWL6030) && defined(CONFIG_KEYBOARD_GPIO)
+
 static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
 	.code = BB_KEY_ENTER
 };
@@ -67,17 +80,97 @@ static struct gpio_keys_platform_data gk_data = {
 	.nbuttons = ARRAY_SIZE(keys),
 	.fifo_size = ARRAY_SIZE(keys)*sizeof(int)
 };
-#endif
+
+static struct omapfb_display const archosg9_displays[] = {
+	{
+		.mode = {
+			.name         = "g104x1",
+			.refresh      =       60,
+			.xres         =     1024,
+			.yres         =      768,
+			.pixclock     =    96000,
+			.left_margin  =      320,
+			.right_margin =        1,
+			.hsync_len    =      320,
+			.upper_margin =       38,
+			.lower_margin =       38,
+			.vsync_len    =        2,
+		},
+		.config = (
+			OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
+			OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
+			OMAP_DSS_LCD_DATALINES_24
+		),
+		.power_on_delay  =  50,
+		.power_off_delay = 100,
+	},
+};
+
+static void archosg9_fb_enable(int e)
+{
+	if (e) {
+		gpio_direction_output(GPIO_LCD_PWON   , 1);
+		mdelay(50);
+		gpio_direction_output(GPIO_LCD_RST    , 0);
+		gpio_direction_output(GPIO_LCD_AVDD_EN, 0);
+		mdelay(35);
+		gpio_direction_output(GPIO_BRIDGE_EN  , 1);
+		mdelay(10);
+		gpio_direction_output(GPIO_LCD_STDBY  , 0);
+		gpio_direction_output(GPIO_BKL_EN     , 0);
+	} else {
+		gpio_direction_output(GPIO_BKL_EN     , 1);
+		gpio_direction_output(GPIO_LCD_STDBY  , 1);
+		mdelay(1);
+		gpio_direction_output(GPIO_BRIDGE_EN  , 0);
+		gpio_direction_output(GPIO_LCD_AVDD_EN, 1);
+		mdelay(10);
+		gpio_direction_output(GPIO_LCD_PWON   , 0);
+		gpio_direction_output(GPIO_LCD_RST    , 1);
+	}
+}
+
+static struct omapfb_platform_data archosg9_fb_data = {
+	.displays     = archosg9_displays,
+	.num_displays = ARRAY_SIZE(archosg9_displays),
+	.dss_clk_hz   = 19200000,
+	.bpp          = 32,
+	.enable       = archosg9_fb_enable,
+};
+
+static int archosg9_display_init(void)
+{
+	omap_add_display(&archosg9_fb_data);
+
+	gpio_direction_output(GPIO_BKL_EN     , 1);
+	gpio_direction_output(GPIO_LCD_RST    , 1);
+	gpio_direction_output(GPIO_LCD_PWON   , 0);
+	gpio_direction_output(GPIO_BRIDGE_EN  , 0);
+	gpio_direction_output(GPIO_LCD_STDBY  , 1);
+	gpio_direction_output(GPIO_LCD_AVDD_EN, 1);
+	gpio_direction_output(GPIO_BKL_LED    , 0);
+	gpio_direction_output(GPIO_VCC_PWRON  , 1);
+
+	return 0;
+}
 
 static int archosg9_devices_init(void){
+	gpio_direction_output(GPIO_GPS_ENABLE, 0);
+	gpio_direction_output(GPIO_1V8_PWRON , 1);
+
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	omap44xx_add_i2c1(NULL);
 	omap44xx_add_mmc1(NULL);
-#if defined(CONFIG_KEYBOARD_TWL6030) && defined(CONFIG_KEYBOARD_GPIO)
-	add_generic_device_res("twl6030_pwrbtn", DEVICE_ID_DYNAMIC, 0, 0,
-		&pwrbtn_data);
-	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
-#endif
+	if (IS_ENABLED(CONFIG_KEYBOARD_TWL6030) &&
+			IS_ENABLED(CONFIG_KEYBOARD_GPIO)) {
+		add_generic_device_res("twl6030_pwrbtn", DEVICE_ID_DYNAMIC,
+			0, 0, &pwrbtn_data);
+		add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
+	}
+
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
+		archosg9_display_init();
+
 	/*
 	 * This should be:
 	 * armlinux_set_architecture(MACH_TYPE_OMAP4_ARCHOSG9);
diff --git a/arch/arm/boards/archosg9/env/init/splash b/arch/arm/boards/archosg9/env/init/splash
new file mode 100644
index 0000000..4441b90
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/init/splash
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+fb0.mode_name=g104x1
+splash -b0 /mnt/usb/barebox.png
+fb0.enable=1
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
index 4fab759..e9cb3c4 100644
--- a/arch/arm/boards/archosg9/mux.c
+++ b/arch/arm/boards/archosg9/mux.c
@@ -29,14 +29,14 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ GPMC_AD7            , IEN | PTU | M1 },
 	{ GPMC_AD8            , IEN | PTD | M3 },
 	{ GPMC_AD9            , IEN | PTU | M0 },
-	{ GPMC_AD10           , IEN | PTU | M0 },
-	{ GPMC_AD11           , IEN | PTU | M0 },
-	{ GPMC_AD12           , IEN | PTD | M0 },
+	{ GPMC_AD10           , IEN | PTU | M3 },
+	{ GPMC_AD11           , IEN | PTU | M3 },
+	{ GPMC_AD12           , IEN | PTD | M3 },
 	{ GPMC_AD13           ,       PTD | M3 },
 	{ GPMC_AD14           ,       PTD | M3 },
 	{ GPMC_AD15           ,       PTD | M3 },
 	{ GPMC_A16            , IEN | PTD | M7 },
-	{ GPMC_A17            , IEN | PTD | M7 },
+	{ GPMC_A17            , IEN | PTD | M3 },
 	{ GPMC_A18            , IEN | PTD | M1 },
 	{ GPMC_A19            , IEN | PTU | M3 },
 	{ GPMC_A20            , IEN | PTU | M3 },
@@ -48,7 +48,7 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ GPMC_NCS0           , IEN | PTU | M0 },
 	{ GPMC_NCS1           , IEN | PTU | M7 },
 	{ GPMC_NCS2           , IEN | PTU | M7 },
-	{ GPMC_NCS3           , IEN | PTU | M7 },
+	{ GPMC_NCS3           , IEN | PTU | M3 },
 	{ GPMC_NWP            , IEN | PTD | M0 },
 	{ GPMC_CLK            , IEN | PTD | M0 },
 	{ GPMC_NADV_ALE       , IEN | PTD | M0 },
@@ -59,7 +59,7 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ GPMC_WAIT0          , IEN | PTU | M0 },
 	{ GPMC_WAIT1          , IEN | PTU | M7 },
 	{ GPMC_WAIT2          , IEN | PTD | M7 },
-	{ GPMC_NCS4           , IEN | PTD | M7 },
+	{ GPMC_NCS4           , IEN | PTD | M3 },
 	{ GPMC_NCS5           , IEN | PTD | M7 },
 	{ GPMC_NCS6           , IEN | PTD | M7 },
 	{ GPMC_NCS7           , IEN | PTD | M7 },
@@ -125,8 +125,8 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ ABE_CLKS            , IEN | PTD | M7 },
 	{ ABE_DMIC_CLK1       , IEN | PTD | M7 },
 	{ ABE_DMIC_DIN1       , IEN | PTD | M7 },
-	{ ABE_DMIC_DIN2       , IEN | PTD | M7 },
-	{ ABE_DMIC_DIN3       , IEN | PTD | M7 },
+	{ ABE_DMIC_DIN2       , IEN | PTD | M3 },
+	{ ABE_DMIC_DIN3       , IEN | PTD | M3 },
 	{ UART2_CTS           , IEN | PTU | M0 },
 	{ UART2_RTS           ,             M0 },
 	{ UART2_RX            , IEN       | M0 },
@@ -149,7 +149,7 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ MCSPI1_CS3          , IEN | PTU | M7 },
 	{ UART3_CTS_RCTX      ,             M1 },
 	{ UART3_RTS_SD        ,             M0 },
-	{ UART3_RX_IRRX       , IEN | PTU | M0 },
+	{ UART3_RX_IRRX       , IEN | PTU | M3 },
 	{ UART3_TX_IRTX       ,             M0 },
 	{ SDMMC5_CLK          ,       PTU | M0 },
 	{ SDMMC5_CMD          , IEN | PTU | M0 },
@@ -203,7 +203,7 @@ static const struct pad_conf_entry core_padconf_array[] = {
 	{ SYS_BOOT4           , IEN | PTD | M0 },
 	{ SYS_BOOT5           , IEN | PTD | M0 },
 	{ DPM_EMU0            , IEN | PTU | M0 },
-	{ DPM_EMU1            , IEN | PTU | M0 },
+	{ DPM_EMU1            , IEN | PTU | M3 },
 	{ DPM_EMU2            , IEN | PTD | M7 },
 	{ DPM_EMU3            ,             M5 },
 	{ DPM_EMU4            ,             M5 },
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index db80c38..4bafcf9 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -53,6 +53,7 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -76,6 +77,10 @@ CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_OMAP=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_EDID=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
@@ -91,5 +96,5 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_PNG=y
-- 
2.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
