Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXY5F-0003gy-T0
 for barebox@lists.infradead.org; Thu, 24 May 2012 13:28:07 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so7416799lbb.36
 for <barebox@lists.infradead.org>; Thu, 24 May 2012 06:28:05 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Thu, 24 May 2012 19:27:45 +0600
Message-Id: <1337866065-6775-3-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
References: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 2/2] Add FriendlyArm Tiny210 board (S5PV210)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/Makefile                  |    1 +
 arch/arm/boards/tiny210/Makefile   |    1 +
 arch/arm/boards/tiny210/config.h   |   19 ++++++
 arch/arm/boards/tiny210/lowlevel.c |   76 ++++++++++++++++++++++++
 arch/arm/boards/tiny210/tiny210.c  |  113 ++++++++++++++++++++++++++++++++++++
 arch/arm/configs/tiny210_defconfig |   17 ++++++
 arch/arm/mach-samsung/Kconfig      |    7 +++
 7 files changed, 234 insertions(+)
 create mode 100644 arch/arm/boards/tiny210/Makefile
 create mode 100644 arch/arm/boards/tiny210/config.h
 create mode 100644 arch/arm/boards/tiny210/lowlevel.c
 create mode 100644 arch/arm/boards/tiny210/tiny210.c
 create mode 100644 arch/arm/configs/tiny210_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 40291aa..fc29aca 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -133,6 +133,7 @@ board-$(CONFIG_MACH_TX25)			:= karo-tx25
 board-$(CONFIG_MACH_TQMA53)			:= tqma53
 board-$(CONFIG_MACH_TX51)			:= karo-tx51
 board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
+board-$(CONFIG_MACH_TINY210)			:= tiny210
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/tiny210/Makefile b/arch/arm/boards/tiny210/Makefile
new file mode 100644
index 0000000..9c38e60
--- /dev/null
+++ b/arch/arm/boards/tiny210/Makefile
@@ -0,0 +1 @@
+obj-y += tiny210.o lowlevel.o
diff --git a/arch/arm/boards/tiny210/config.h b/arch/arm/boards/tiny210/config.h
new file mode 100644
index 0000000..86aedf0
--- /dev/null
+++ b/arch/arm/boards/tiny210/config.h
@@ -0,0 +1,19 @@
+#define S5PCXX_CLOCK_REFERENCE 24000000
+
+#define set_pll(mdiv, pdiv, sdiv)	(1<<31 | mdiv<<16 | pdiv<<8 | sdiv)
+
+#define BOARD_APLL_VAL	set_pll(0x7d, 0x3, 0x1)
+#define BOARD_MPLL_VAL	set_pll(0x29b, 0xc, 0x1)
+#define BOARD_EPLL_VAL	set_pll(0x60, 0x6, 0x2)
+#define BOARD_VPLL_VAL	set_pll(0x6c, 0x6, 0x3)
+
+#define BOARD_CLK_DIV0_MASK	0xFFFFFFFF
+#define BOARD_CLK_DIV0_VAL	0x14131440
+#define BOARD_APLL_LOCKTIME	0x2cf
+
+#define S5P_DRAM_WR	3
+#define S5P_DRAM_CAS	4
+#define DMC_TIMING_AREF	0x00000618
+#define DMC_TIMING_ROW	0x2B34438A
+#define DMC_TIMING_DATA	0x24240000
+#define DMC_TIMING_PWR	0x0BDC0343
diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
new file mode 100644
index 0000000..9929f75
--- /dev/null
+++ b/arch/arm/boards/tiny210/lowlevel.c
@@ -0,0 +1,76 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-clocks.h>
+#include <mach/s3c-generic.h>
+
+/*
+ * iROM boot from MMC
+ * TODO: replace this by native boot
+ */
+
+#define ADDR_V210_SDMMC_BASE	0xD0037488
+#define ADDR_CopySDMMCtoMem	0xD0037F98
+
+#define RR(x) (*(volatile uint32_t*)(x))
+
+int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t block_count)
+{
+	typedef uint32_t (*func_t) (int32_t, uint32_t, uint16_t, uint32_t*, int8_t);
+	uint32_t chbase = RR(ADDR_V210_SDMMC_BASE);
+	func_t func = (func_t)RR(ADDR_CopySDMMCtoMem);
+	int chan = (chbase - 0xEB000000) >> 20;
+	if (chan != 0 && chan != 2)
+		return 0;
+	return func(chan, start_block, block_count, (uint32_t*)dest, 0) ? 1 : 0;
+}
+
+
+void __bare_init board_init_lowlevel(void)
+{
+	uint32_t r;
+
+#ifdef CONFIG_S3C_PLL_INIT
+	s5p_init_pll();
+#endif
+
+	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
+		return; /* No, we don't. */
+
+#ifdef CONFIG_S3C_SDRAM_INIT
+	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
+#endif
+
+	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
+		while (1) { } /* hang */
+
+	/* Jump to SDRAM */
+	r = (unsigned)TEXT_BASE;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	while (1) { } /* hang */
+}
diff --git a/arch/arm/boards/tiny210/tiny210.c b/arch/arm/boards/tiny210/tiny210.c
new file mode 100644
index 0000000..1277649
--- /dev/null
+++ b/arch/arm/boards/tiny210/tiny210.c
@@ -0,0 +1,113 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ * Based on Mini6410 code by Juergen Beisert
+ *
+ * Copyright (C) 2012 Juergen Beisert, Pengutronix
+ *
+ * In some ways inspired by code
+ *
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Marius Groeger <mgroeger@sysgo.de>
+ *
+ * (C) Copyright 2002
+ * David Mueller, ELSOFT AG, <d.mueller@elsoft.ch>
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
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <sizes.h>
+#include <generated/mach-types.h>
+#include <dm9000.h>
+#include <gpio.h>
+#include <led.h>
+#include <io.h>
+#include <nand.h>
+#include <asm/armlinux.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-clocks.h>
+#include <mach/s3c-generic.h>
+
+
+static const unsigned pin_usage[] = {
+	/* TODO */
+};
+
+static struct gpio_led leds[] = {
+	{
+		.gpio = GPJ20,
+		.led = {
+			.name = "led1",
+		}
+	}, {
+		.gpio = GPJ21,
+		.led = {
+			.name = "led2",
+		}
+	}, {
+		.gpio = GPJ22,
+		.led = {
+			.name = "led3",
+		}
+	}, {
+		.gpio = GPJ23,
+		.led = {
+			.name = "led4",
+		}
+	}
+};
+
+static int tiny210_mem_init(void)
+{
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s5p_get_memory_size());
+	return 0;
+}
+mem_initcall(tiny210_mem_init);
+
+static int tiny210_console_init(void)
+{
+	/*
+	 * configure the UART1 right now, as barebox will
+	 * start to send data immediately
+	 */
+	s3c_gpio_mode(GPA00_RXD0 | ENABLE_PU);
+	s3c_gpio_mode(GPA01_TXD0);
+	s3c_gpio_mode(GPA02_NCTS0 | ENABLE_PU);
+	s3c_gpio_mode(GPA03_NRTS0);
+
+	add_generic_device("s3c_serial", -1, NULL,
+			   S3C_UART1_BASE, S3C_UART1_SIZE,
+			   IORESOURCE_MEM, NULL);
+	return 0;
+}
+console_initcall(tiny210_console_init);
+
+static int tiny210_devices_init(void)
+{
+	int i;
+	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
+		s3c_gpio_mode(pin_usage[i]);
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		leds[i].active_low = 1;
+		gpio_direction_output(leds[i].gpio, leds[i].active_low);
+		led_gpio_register(&leds[i]);
+	}
+
+	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_MINI210);
+
+	return 0;
+}
+device_initcall(tiny210_devices_init);
diff --git a/arch/arm/configs/tiny210_defconfig b/arch/arm/configs/tiny210_defconfig
new file mode 100644
index 0000000..e9708bf
--- /dev/null
+++ b/arch/arm/configs/tiny210_defconfig
@@ -0,0 +1,17 @@
+CONFIG_ARCH_S5PCxx=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+CONFIG_BOARDINFO="Tiny 210"
+CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE=0x1ff0
+CONFIG_ARCH_SAMSUNG=y
+CONFIG_CPU_S5PV210=y
+CONFIG_MACH_TINY210=y
+CONFIG_S3C_LOWLEVEL_INIT=y
+CONFIG_S3C_PLL_INIT=y
+CONFIG_S3C_SDRAM_INIT=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_DRIVER_SERIAL_S3C=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 65e2acb..a123854 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -8,11 +8,13 @@ config ARCH_TEXT_BASE
 	default 0x31fc0000 if MACH_MINI2440
 	default 0x31fc0000 if MACH_A9M2440
 	default 0x31fc0000 if MACH_A9M2410
+	default 0x23e00000 if MACH_TINY210
 
 config BOARDINFO
 	default "Mini 2440"    if MACH_MINI2440
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
+	default "Tiny 210"     if MACH_TINY210
 
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
@@ -96,6 +98,11 @@ choice
 
 	prompt "S5PCxx board type"
 
+config MACH_TINY210
+	bool "Tiny 210"
+	select CPU_S5PV210
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 endchoice
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
