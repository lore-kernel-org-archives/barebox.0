Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S2NJ0-0002aP-Hm
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 13:41:28 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 28 Feb 2012 14:41:11 +0100
Message-Id: <1330436471-716-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3] arm/mach-pxa: add mioa701 board
To: barebox@lists.infradead.org

Add Mitac MioA701 board initial support.
The support provides basic boot and :
 - a console over USB (serial gadget).
 - the SD card support
 - the MTD docg3 support
 - the LCD support

Add a check in the default environment for a barebox.env
file on the first partition (FAT). If the file exists,
source it instead of the normal boot procedure.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1:
 - taken into account Marc's review
 - added SD+MTD

Since V2:
 - added MFP setup for pxafb
 - added pwm support for backlight
---
 arch/arm/Makefile                                |    1 +
 arch/arm/boards/mioa701/Makefile                 |    1 +
 arch/arm/boards/mioa701/board.c                  |  278 ++++++++++++++++++++++
 arch/arm/boards/mioa701/config.h                 |   22 ++
 arch/arm/boards/mioa701/env/bin/barebox_update   |    5 +
 arch/arm/boards/mioa701/env/bin/init             |   35 +++
 arch/arm/boards/mioa701/env/bin/mtd_env_override |    4 +
 arch/arm/boards/mioa701/env/bin/sdcard_override  |   16 ++
 arch/arm/boards/mioa701/env/config               |    5 +
 arch/arm/boards/mioa701/mioa701.h                |   81 +++++++
 arch/arm/configs/mioa701_defconfig               |   62 +++++
 arch/arm/mach-pxa/Kconfig                        |   18 ++
 12 files changed, 528 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/Makefile
 create mode 100644 arch/arm/boards/mioa701/board.c
 create mode 100644 arch/arm/boards/mioa701/config.h
 create mode 100644 arch/arm/boards/mioa701/env/bin/barebox_update
 create mode 100644 arch/arm/boards/mioa701/env/bin/init
 create mode 100644 arch/arm/boards/mioa701/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/mioa701/env/bin/sdcard_override
 create mode 100644 arch/arm/boards/mioa701/env/config
 create mode 100644 arch/arm/boards/mioa701/mioa701.h
 create mode 100644 arch/arm/configs/mioa701_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9926280..b28a5b2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -83,6 +83,7 @@ board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
+board-$(CONFIG_MACH_MIOA701)			:= mioa701
 board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/mioa701/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
new file mode 100644
index 0000000..6a67a03
--- /dev/null
+++ b/arch/arm/boards/mioa701/board.c
@@ -0,0 +1,278 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <init.h>
+#include <partition.h>
+#include <led.h>
+#include <gpio.h>
+#include <pwm.h>
+
+#include <mach/devices.h>
+#include <mach/mfp-pxa27x.h>
+#include <mach/pxa-regs.h>
+#include <mach/udc_pxa2xx.h>
+#include <mach/mci_pxa2xx.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+#include <asm/mmu.h>
+
+#include "mioa701.h"
+
+/*
+ * LTM0305A776C LCD panel timings
+ *
+ * see:
+ *  - the LTM0305A776C datasheet,
+ *  - and the PXA27x Programmers' manual
+ */
+static struct pxafb_videomode mioa701_ltm0305a776c = {
+	{
+		.pixclock		= 220000,	/* CLK=4.545 MHz */
+		.xres			= 240,
+		.yres			= 320,
+		.hsync_len		= 4,
+		.vsync_len		= 2,
+		.left_margin		= 6,
+		.right_margin		= 4,
+		.upper_margin		= 5,
+		.lower_margin		= 3,
+	},
+	.bpp = 16,
+};
+
+static void mioa701_lcd_power(int on)
+{
+	gpio_set_value(GPIO87_LCD_POWER, on);
+}
+
+static void mioa701_lcd_backlight(int on)
+{
+	struct pwm_device *pwm0 = pwm_request("pxa_pwm0");
+
+	/*
+	 * The backlight has a base frequency of 250kHz (<=> 4 ms).
+	 */
+	if (on) {
+		pwm_enable(pwm0);
+		pwm_config(pwm0, 2000 * 1024, 4000 * 1024);
+	} else {
+		pwm_disable(pwm0);
+	}
+	pwm_free(pwm0);
+}
+
+static struct pxafb_platform_data mioa701_pxafb_info = {
+	.mode			= &mioa701_ltm0305a776c,
+	.lcd_conn		= LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
+	.lcd_power		= mioa701_lcd_power,
+	.backlight_power	= mioa701_lcd_backlight,
+};
+
+#define MIO_LED(_name, _gpio) \
+	{ .gpio = _gpio, .active_low = 1, .led = { .name = #_name, } }
+static struct gpio_led leds[] = {
+	MIO_LED(charging, GPIO10_LED_nCharging),
+	MIO_LED(blue, GPIO97_LED_nBlue),
+	MIO_LED(orange, GPIO98_LED_nOrange),
+	MIO_LED(vibra, GPIO82_LED_nVibra),
+	MIO_LED(keyboard, GPIO115_LED_nKeyboard),
+};
+
+
+static int is_usb_connected(void)
+{
+	return !gpio_get_value(GPIO13_nUSB_DETECT);
+}
+
+static struct pxa2xx_udc_mach_info mioa701_udc_info = {
+	.udc_is_connected = is_usb_connected,
+	.gpio_pullup	  = GPIO22_USB_ENABLE,
+};
+
+static struct pxamci_platform_data mioa701_mmc_info = {
+	.gpio_power = GPIO91_SDIO_EN,
+};
+
+static int mioa701_devices_init(void)
+{
+	int i;
+	void *docg3_iospace;
+
+	pxa_add_pwm((void *)0x40b00000, 0);
+	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
+	pxa_add_mmc((void *)0x41100000, -1, &mioa701_mmc_info);
+	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
+	add_generic_device("docg3", -1, NULL, (ulong) docg3_iospace, 0x2000,
+			   IORESOURCE_MEM, NULL);
+	armlinux_set_bootparams((void *)0xa0000100);
+	armlinux_set_architecture(MACH_TYPE_MIOA701);
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++)
+		led_gpio_register(&leds[i]);
+	add_generic_device("pxa27x-udc", 0, NULL, 0x40600000,
+			   1024, IORESOURCE_MEM, &mioa701_udc_info);
+	return 0;
+}
+
+device_initcall(mioa701_devices_init);
+
+static unsigned long mioa701_pin_config[] = {
+	/* Mio global */
+	MIO_CFG_OUT(GPIO9_CHARGE_EN, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO18_POWEROFF, AF0, DRIVE_LOW),
+	MFP_CFG_OUT(GPIO3, AF0, DRIVE_HIGH),
+	MFP_CFG_OUT(GPIO4, AF0, DRIVE_HIGH),
+	MIO_CFG_IN(GPIO80_MAYBE_CHARGE_VDROP, AF0),
+
+	/* Backlight PWM 0 */
+	GPIO16_PWM0_OUT,
+
+	/* LCD */
+	GPIOxx_LCD_TFT_16BPP,
+	MIO_CFG_OUT(GPIO87_LCD_POWER, AF0, DRIVE_LOW),
+
+	/* MMC */
+	GPIO32_MMC_CLK,
+	GPIO92_MMC_DAT_0,
+	GPIO109_MMC_DAT_1,
+	GPIO110_MMC_DAT_2,
+	GPIO111_MMC_DAT_3,
+	GPIO112_MMC_CMD,
+	MIO_CFG_IN(GPIO78_SDIO_RO, AF0),
+	MIO_CFG_IN(GPIO15_SDIO_INSERT, AF0),
+	MIO_CFG_OUT(GPIO91_SDIO_EN, AF0, DRIVE_LOW),
+
+	/* USB */
+	MIO_CFG_IN(GPIO13_nUSB_DETECT, AF0),
+	MIO_CFG_OUT(GPIO22_USB_ENABLE, AF0, DRIVE_LOW),
+
+	/* QCI */
+	GPIO12_CIF_DD_7,
+	GPIO17_CIF_DD_6,
+	GPIO50_CIF_DD_3,
+	GPIO51_CIF_DD_2,
+	GPIO52_CIF_DD_4,
+	GPIO53_CIF_MCLK,
+	GPIO54_CIF_PCLK,
+	GPIO55_CIF_DD_1,
+	GPIO81_CIF_DD_0,
+	GPIO82_CIF_DD_5,
+	GPIO84_CIF_FV,
+	GPIO85_CIF_LV,
+
+	/* Bluetooth */
+	MIO_CFG_IN(GPIO14_BT_nACTIVITY, AF0),
+	GPIO44_BTUART_CTS,
+	GPIO42_BTUART_RXD,
+	GPIO45_BTUART_RTS,
+	GPIO43_BTUART_TXD,
+	MIO_CFG_OUT(GPIO83_BT_ON, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO77_BT_UNKNOWN1, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO86_BT_MAYBE_nRESET, AF0, DRIVE_HIGH),
+
+	/* GPS */
+	MIO_CFG_OUT(GPIO23_GPS_UNKNOWN1, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO26_GPS_ON, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO27_GPS_RESET, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO106_GPS_UNKNOWN2, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO107_GPS_UNKNOWN3, AF0, DRIVE_LOW),
+	GPIO46_STUART_RXD,
+	GPIO47_STUART_TXD,
+
+	/* GSM */
+	MIO_CFG_OUT(GPIO24_GSM_MOD_RESET_CMD, AF0, DRIVE_LOW),
+	MIO_CFG_OUT(GPIO88_GSM_nMOD_ON_CMD, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO90_GSM_nMOD_OFF_CMD, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO114_GSM_nMOD_DTE_UART_STATE, AF0, DRIVE_HIGH),
+	MIO_CFG_IN(GPIO25_GSM_MOD_ON_STATE, AF0),
+	MIO_CFG_IN(GPIO113_GSM_EVENT, AF0) | WAKEUP_ON_EDGE_BOTH,
+	GPIO34_FFUART_RXD,
+	GPIO35_FFUART_CTS,
+	GPIO36_FFUART_DCD,
+	GPIO37_FFUART_DSR,
+	GPIO39_FFUART_TXD,
+	GPIO40_FFUART_DTR,
+	GPIO41_FFUART_RTS,
+
+	/* Sound */
+	GPIO28_AC97_BITCLK,
+	GPIO29_AC97_SDATA_IN_0,
+	GPIO30_AC97_SDATA_OUT,
+	GPIO31_AC97_SYNC,
+	GPIO89_AC97_SYSCLK,
+	MIO_CFG_IN(GPIO12_HPJACK_INSERT, AF0),
+
+	/* Leds */
+	MIO_CFG_OUT(GPIO10_LED_nCharging, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO97_LED_nBlue, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO98_LED_nOrange, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO82_LED_nVibra, AF0, DRIVE_HIGH),
+	MIO_CFG_OUT(GPIO115_LED_nKeyboard, AF0, DRIVE_HIGH),
+
+	/* Keyboard */
+	MIO_CFG_IN(GPIO0_KEY_POWER, AF0) | WAKEUP_ON_EDGE_BOTH,
+	MIO_CFG_IN(GPIO93_KEY_VOLUME_UP, AF0),
+	MIO_CFG_IN(GPIO94_KEY_VOLUME_DOWN, AF0),
+	GPIO100_KP_MKIN_0,
+	GPIO101_KP_MKIN_1,
+	GPIO102_KP_MKIN_2,
+	GPIO103_KP_MKOUT_0,
+	GPIO104_KP_MKOUT_1,
+	GPIO105_KP_MKOUT_2,
+
+	/* I2C */
+	GPIO117_I2C_SCL,
+	GPIO118_I2C_SDA,
+
+	/* Unknown */
+	MFP_CFG_IN(GPIO20, AF0),
+	MFP_CFG_IN(GPIO21, AF0),
+	MFP_CFG_IN(GPIO33, AF0),
+	MFP_CFG_OUT(GPIO49, AF0, DRIVE_HIGH),
+	MFP_CFG_OUT(GPIO57, AF0, DRIVE_HIGH),
+	MFP_CFG_IN(GPIO96, AF0),
+	MFP_CFG_OUT(GPIO116, AF0, DRIVE_HIGH),
+};
+
+static int mioa701_coredevice_init(void)
+{
+	unsigned int cclk;
+	/* route pins */
+	pxa2xx_mfp_config(ARRAY_AND_SIZE(mioa701_pin_config));
+
+	CCCR = CCCR_A | 0x20110;
+	cclk = 0x02;
+	asm volatile("mcr p14, 0, %0, c6, c0, 0 @ set CCLK"
+	  : : "r" (cclk) : "cc");
+
+	return 0;
+}
+coredevice_initcall(mioa701_coredevice_init);
+
+static int mioa701_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, 64 * 1024 * 1024);
+	return 0;
+}
+mem_initcall(mioa701_mem_init);
diff --git a/arch/arm/boards/mioa701/config.h b/arch/arm/boards/mioa701/config.h
new file mode 100644
index 0000000..390aa30
--- /dev/null
+++ b/arch/arm/boards/mioa701/config.h
@@ -0,0 +1,22 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/mioa701/env/bin/barebox_update b/arch/arm/boards/mioa701/env/bin/barebox_update
new file mode 100644
index 0000000..564549b
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/barebox_update
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# Page+OOB specific partitions
+addpart /dev/mtdraw0 1081344@3649536(msipl)
+addpart /dev/mtdraw0 270336@3649536(barebox)
diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
new file mode 100644
index 0000000..8a54da0
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -0,0 +1,35 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+addpart /dev/mtd0 $mtdparts
+
+usbserial -s "Mio A701 usb gadget"
+led keyboard 0
+
+sdcard_override
+
+fb0.enable=1
+bmp /dev/mtd0.barebox-logo
+
+mtd_env_override
+if [ $? = 0 ]; then
+    echo "Switching to custom environment"
+    /env/init
+    exit
+fi
+
+echo "No custom environment found"
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "Welcome to barebox console"
+	exit
+fi
+
+echo "Booting linux kernel on docg3 chip ..."
+bootargs="$bootargs mtdparts=mtd0:$mtdparts root=/dev/mtd4"
+bootm /dev/mtd0.kernel
diff --git a/arch/arm/boards/mioa701/env/bin/mtd_env_override b/arch/arm/boards/mioa701/env/bin/mtd_env_override
new file mode 100644
index 0000000..faeb4d0
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/mtd_env_override
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+loadenv /dev/mtd0.barebox-env
+exit $?
diff --git a/arch/arm/boards/mioa701/env/bin/sdcard_override b/arch/arm/boards/mioa701/env/bin/sdcard_override
new file mode 100644
index 0000000..4b2ad51
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/sdcard_override
@@ -0,0 +1,16 @@
+#!/bin/sh
+# Script to switch to execute sdcard environment scripts if available
+#
+# This enables an override of the default environment if an SD Card
+# is inserted, has a FAT filesystem,  and has a barebox.env file in
+# the root directory.
+
+mci0.probe=1
+if [ $mci0.probe = 1 ]; then
+	mkdir /sdcard
+	mount /dev/disk0.0 fat /sdcard
+	if [ -f /sdcard/barebox.env ]; then
+		loadenv /sdcard/barebox.env /env.sd
+		/env.sd/bin/init
+	fi
+fi
diff --git a/arch/arm/boards/mioa701/env/config b/arch/arm/boards/mioa701/env/config
new file mode 100644
index 0000000..2cc44fd
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/config
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+autoboot_timeout=3
+
+mtdparts="256k@3456k(barebox)ro,256k(barebox-logo),128k(barebox-env),4M(kernel),-(root)"
diff --git a/arch/arm/boards/mioa701/mioa701.h b/arch/arm/boards/mioa701/mioa701.h
new file mode 100644
index 0000000..20b9b51
--- /dev/null
+++ b/arch/arm/boards/mioa701/mioa701.h
@@ -0,0 +1,81 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#ifndef _MIOA701_H_
+#define _MIOA701_H_
+
+#define MIO_CFG_IN(pin, af)		\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK)) |\
+	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_IN))
+
+#define MIO_CFG_OUT(pin, af, state)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_OUT | MFP_LPM_##state))
+
+/* Global GPIOs */
+#define GPIO9_CHARGE_EN				9
+#define GPIO18_POWEROFF				18
+#define GPIO87_LCD_POWER			87
+#define GPIO96_AC_DETECT			96
+#define GPIO80_MAYBE_CHARGE_VDROP		80	/* Drop of 88mV */
+
+/* USB */
+#define GPIO13_nUSB_DETECT			13
+#define GPIO22_USB_ENABLE			22
+
+/* SDIO bits */
+#define GPIO78_SDIO_RO				78
+#define GPIO15_SDIO_INSERT			15
+#define GPIO91_SDIO_EN				91
+
+/* Bluetooth */
+#define GPIO14_BT_nACTIVITY			14
+#define GPIO83_BT_ON				83
+#define GPIO77_BT_UNKNOWN1			77
+#define GPIO86_BT_MAYBE_nRESET			86
+
+/* GPS */
+#define GPIO23_GPS_UNKNOWN1			23
+#define GPIO26_GPS_ON				26
+#define GPIO27_GPS_RESET			27
+#define GPIO106_GPS_UNKNOWN2			106
+#define GPIO107_GPS_UNKNOWN3			107
+
+/* GSM */
+#define GPIO24_GSM_MOD_RESET_CMD		24
+#define GPIO88_GSM_nMOD_ON_CMD			88
+#define GPIO90_GSM_nMOD_OFF_CMD			90
+#define GPIO114_GSM_nMOD_DTE_UART_STATE		114
+#define GPIO25_GSM_MOD_ON_STATE			25
+#define GPIO113_GSM_EVENT			113
+
+/* SOUND */
+#define GPIO12_HPJACK_INSERT			12
+
+/* LEDS */
+#define GPIO10_LED_nCharging			10
+#define GPIO97_LED_nBlue			97
+#define GPIO98_LED_nOrange			98
+#define GPIO82_LED_nVibra			82
+#define GPIO115_LED_nKeyboard			115
+
+/* Keyboard */
+#define GPIO0_KEY_POWER				0
+#define GPIO93_KEY_VOLUME_UP			93
+#define GPIO94_KEY_VOLUME_DOWN			94
+
+#endif /* _MIOA701_H */
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
new file mode 100644
index 0000000..2bb3cec
--- /dev/null
+++ b/arch/arm/configs/mioa701_defconfig
@@ -0,0 +1,62 @@
+CONFIG_ARCH_PXA=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+# CONFIG_BANNER is not set
+CONFIG_TEXT_BASE=0xa3f00000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x262144
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_EXPERIMENTAL=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mioa701/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_DRIVER_SERIAL_PXA=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_MTD_DOCG3=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_PXA=y
+CONFIG_MCI=y
+CONFIG_MCI_PXA=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_BZLIB=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 9ef11bb..750f466 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -2,9 +2,11 @@ if ARCH_PXA
 
 config ARCH_TEXT_BASE
 	hex
+	default 0xa0000000 if MACH_MIOA701
 
 config BOARDINFO
 	string
+	default "Scoter Mitac Mio A701" if MACH_MIOA701
 
 # ----------------------------------------------------------
 
@@ -29,8 +31,24 @@ choice
 	prompt "PXA27x Board Type"
 	bool
 
+config MACH_MIOA701
+	bool "Mitac Mio A701"
+	select BCH_CONST_PARAMS
+	select PWM
+	help
+	  Say Y here if you are using a Mitac Mio A701 smartphone
+	  board
 endchoice
 
+if MACH_MIOA701
+config BCH_CONST_M
+	int
+	default 14 if MACH_MIOA701
+config BCH_CONST_T
+	int
+	default 4 if MACH_MIOA701
+endif
+
 endif
 
 # ----------------------------------------------------------
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
