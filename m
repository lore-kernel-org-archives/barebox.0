Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUHD4-00058S-6A
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 12:18:24 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 26 Nov 2011 13:17:31 +0100
Message-Id: <1322309851-22224-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322309851-22224-1-git-send-email-robert.jarzmik@free.fr>
References: <1322309851-22224-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 3/3] arm/mach-pxa: add mioa701 board
To: barebox@lists.infradead.org

Add Mitac MioA701 board initial support.
The support only provides basic boot and a console over USB
(serial gadget).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1: Taken into account Marc's review
---
 arch/arm/Makefile                       |    1 +
 arch/arm/boards/mioa701/Makefile        |    2 +
 arch/arm/boards/mioa701/board.c         |  246 +++++++++++++++++++++++++++++++
 arch/arm/boards/mioa701/config.h        |   22 +++
 arch/arm/boards/mioa701/env/bin/init    |   13 ++
 arch/arm/boards/mioa701/env/config      |    4 +
 arch/arm/boards/mioa701/lowlevel_init.S |   39 +++++
 arch/arm/boards/mioa701/mioa701.h       |   81 ++++++++++
 arch/arm/mach-pxa/Kconfig               |    9 +
 arch/arm/mach-pxa/Makefile              |    1 +
 10 files changed, 418 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/Makefile
 create mode 100644 arch/arm/boards/mioa701/board.c
 create mode 100644 arch/arm/boards/mioa701/config.h
 create mode 100644 arch/arm/boards/mioa701/env/bin/init
 create mode 100644 arch/arm/boards/mioa701/env/config
 create mode 100644 arch/arm/boards/mioa701/lowlevel_init.S
 create mode 100644 arch/arm/boards/mioa701/mioa701.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 913a90e..ae1e0fc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -82,6 +82,7 @@ board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
+board-$(CONFIG_MACH_MIOA701)			:= mioa701
 board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
new file mode 100644
index 0000000..b823b62
--- /dev/null
+++ b/arch/arm/boards/mioa701/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel_init.o
+obj-y += board.o
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
new file mode 100644
index 0000000..ef37364
--- /dev/null
+++ b/arch/arm/boards/mioa701/board.c
@@ -0,0 +1,246 @@
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
+
+#include <mach/devices.h>
+#include <mach/mfp-pxa27x.h>
+#include <mach/pxa-regs.h>
+#include <mach/udc_pxa2xx.h>
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
+static struct pxafb_platform_data mioa701_pxafb_info = {
+	.mode			= &mioa701_ltm0305a776c,
+	.lcd_conn		= LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
+	.lcd_power		= mioa701_lcd_power,
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
+static struct resource mioa701_udc_ress = {
+	.start = 0x40600000,
+	.size = 1024,
+	.flags = IORESOURCE_MEM,
+};
+
+static struct device_d udc_device = {
+	.name = "pxa27x-udc",
+	.resource = &mioa701_udc_ress,
+	.num_resources = 1,
+	.platform_data = &mioa701_udc_info,
+};
+
+static int mioa701_devices_init(void)
+{
+	int i;
+
+	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
+
+	arm_add_mem_device("ram0", 0xa0000000, 64 * 1024 * 1024);
+	armlinux_set_bootparams((void *)0xa0000100);
+	armlinux_set_architecture(MACH_TYPE_MIOA701);
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++)
+		led_gpio_register(&leds[i]);
+	register_device(&udc_device);
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
+	/* route pins */
+	pxa2xx_mfp_config(ARRAY_AND_SIZE(mioa701_pin_config));
+
+	return 0;
+}
+coredevice_initcall(mioa701_coredevice_init);
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
diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
new file mode 100644
index 0000000..2f99eb8
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+fb0.enable=1
+
+while [ -z $toto ]; do
+    readline "Give me a word" word
+    echo "I've got your $word"
+done
diff --git a/arch/arm/boards/mioa701/env/config b/arch/arm/boards/mioa701/env/config
new file mode 100644
index 0000000..67504c2
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/config
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+# MioA701 empty config
+# Should be filled in once development is advanced enough
diff --git a/arch/arm/boards/mioa701/lowlevel_init.S b/arch/arm/boards/mioa701/lowlevel_init.S
new file mode 100644
index 0000000..5888175
--- /dev/null
+++ b/arch/arm/boards/mioa701/lowlevel_init.S
@@ -0,0 +1,39 @@
+/*
+ * (c) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
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
+#define writel(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	str		r1,   [r0];
+
+#define writeb(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	strb		r1,   [r0];
+
+	.section ".text_bare_init","ax"
+.global board_init_lowlevel
+board_init_lowlevel:
+	mov	r10, lr
+	/*
+	 * This piece of code should ensure at least:
+	 *  - getting SDRAM out of self-refresh, and/or setup SDRAM timings
+	bl	stabilize_reset
+	bl	setup_sdram
+	 */
+	mov	pc, r10
diff --git a/arch/arm/boards/mioa701/mioa701.h b/arch/arm/boards/mioa701/mioa701.h
new file mode 100644
index 0000000..da7c9aa
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
+#define GPIO114_GSM_nMOD_DTE_UART_STATE 	114
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
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 9e3c53a..2e5cb1c 100644
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
 
@@ -28,6 +30,13 @@ if ARCH_PXA27X
 choice
 	prompt "PXA27x Board Type"
 
+config MACH_MIOA701
+	bool "Mitac Mio A701"
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say Y here if you are using a Mitac Mio A701 smartphone
+	  board
+
 endchoice
 
 endif
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index c01a9e0..6a02a54 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -1,6 +1,7 @@
 obj-y += clocksource.o
 obj-y += common.o
 obj-y += gpio.o
+obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
