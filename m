Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6V-0003aS-Hd
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:41:00 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so3495821laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:40:51 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:40:00 +0600
Message-Id: <1336912806-4163-4-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/tiny210/Makefile                   |    1 +
 arch/arm/boards/tiny210/config.h                   |    1 +
 arch/arm/boards/tiny210/lowlevel.c                 |   41 +
 arch/arm/boards/tiny210/tiny210.c                  |  113 +++
 arch/arm/mach-samsung/Kconfig                      |   24 +
 arch/arm/mach-samsung/Makefile                     |    1 +
 arch/arm/mach-samsung/clocks-s5pcxx.c              |   98 +++
 arch/arm/mach-samsung/gpio-s5pcxx.c                |  123 +++
 arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h |   55 ++
 arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h  |   49 ++
 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    3 +
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    3 +
 16 files changed, 1320 insertions(+)
 create mode 100644 arch/arm/boards/tiny210/Makefile
 create mode 100644 arch/arm/boards/tiny210/config.h
 create mode 100644 arch/arm/boards/tiny210/lowlevel.c
 create mode 100644 arch/arm/boards/tiny210/tiny210.c
 create mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a4e1a2..f465084 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -73,6 +73,12 @@ config ARCH_S3C24xx
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
+config ARCH_S5PCxx
+	bool "Samsung S5PC110, S5PV210"
+	select ARCH_SAMSUNG
+	select CPU_V7
+	select GENERIC_GPIO
+
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d0bfd71..1af1090 100644
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
index 0000000..ebf661e
--- /dev/null
+++ b/arch/arm/boards/tiny210/config.h
@@ -0,0 +1 @@
+#define S5PCXX_CLOCK_REFERENCE 24000000
diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
new file mode 100644
index 0000000..8926fda
--- /dev/null
+++ b/arch/arm/boards/tiny210/lowlevel.c
@@ -0,0 +1,41 @@
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
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <asm/barebox-arm.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-clocks.h>
+
+void __bare_init board_init_lowlevel(void)
+{
+	/* TODO: initialize PLL here */
+
+	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
+		return; /* No, we don't. */
+
+	/* TODO: initialize DRAM here */
+
+	/* TODO: load barebox to DRAM here */
+
+	while (1) { } /* hang */
+}
diff --git a/arch/arm/boards/tiny210/tiny210.c b/arch/arm/boards/tiny210/tiny210.c
new file mode 100644
index 0000000..eb23196
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
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, (512 << 20));
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
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 4d5f7c5..fcef677 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -13,6 +13,7 @@ config BOARDINFO
 	default "Mini 2440"    if MACH_MINI2440
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
+	default "Tiny 210"     if MACH_TINY210
 
 if ARCH_S3C24xx
 
@@ -80,6 +81,29 @@ endmenu
 
 endif
 
+if ARCH_S5PCxx
+
+config CPU_S5PC110
+	bool
+
+config CPU_S5PV210
+	bool
+
+choice
+
+	prompt "S5PCxx board type"
+
+config MACH_TINY210
+	bool "Tiny 210"
+	select CPU_S5PV210
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+
+endchoice
+
+endif
+
+
 menu "S3C Features              "
 
 config S3C_LOWLEVEL_INIT
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 8f032fb..66f3fd2 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,4 +1,5 @@
 obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24x0.o mem-s3c24x0.o
+obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/clocks-s5pcxx.c b/arch/arm/mach-samsung/clocks-s5pcxx.c
new file mode 100644
index 0000000..1f4790b
--- /dev/null
+++ b/arch/arm/mach-samsung/clocks-s5pcxx.c
@@ -0,0 +1,98 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ * Copyright (C) 2012 Juergen Beisert, Pengutronix
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
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-clocks.h>
+
+static inline uint32_t clkdiv(uint32_t clk, unsigned bit, unsigned mask)
+{
+	uint32_t ratio = (readl(S5P_CLK_DIV0) >> bit) & mask;
+	return clk / (ratio + 1);
+}
+
+uint32_t s3c_get_mpllclk(void)
+{
+	uint32_t m, p, s;
+	uint32_t reg = readl(S5P_xPLL_CON + S5P_MPLL);
+	m = (reg >> 16) & 0x3ff;
+	p = (reg >> 8) & 0x3f;
+	s = (reg >> 0) & 0x7;
+	return m * ((S5PCXX_CLOCK_REFERENCE) / (p << s));
+}
+
+uint32_t s3c_get_apllclk(void)
+{
+	uint32_t m, p, s;
+	uint32_t reg = readl(S5P_xPLL_CON + S5P_APLL);
+	m = (reg >> 16) & 0x3ff;
+	p = (reg >> 8) & 0x3f;
+	s = (reg >> 0) & 0x7;
+	s -= 1;
+	return m * ((S5PCXX_CLOCK_REFERENCE) / (p << s));
+}
+
+static uint32_t s5p_get_a2mclk(void)
+{
+	return clkdiv(s3c_get_apllclk(), 4, 0x7);
+}
+
+static uint32_t s5p_get_moutpsysclk(void)
+{
+	if (readl(S5P_CLK_SRC0) & (1 << 24)) /* MUX_PSYS */
+		return s5p_get_a2mclk();
+        else
+		return s3c_get_mpllclk();
+}
+
+uint32_t s3c_get_hclk(void)
+{
+	return clkdiv(s5p_get_moutpsysclk(), 24, 0xf);
+}
+
+uint32_t s3c_get_pclk(void)
+{
+	return clkdiv(s3c_get_hclk(), 28, 0x7);
+}
+
+/* we are using the internal 'uclk1' as the UART source */
+static unsigned s3c_get_uart_clk_uclk1(void)
+{
+	unsigned clk = s3c_get_mpllclk();	/* TODO check for EPLL */
+	unsigned uartpdiv = ((readl(S5P_CLK_DIV4) >> 16) & 0x3) + 1; /* TODO this is UART0 only */
+	return clk / uartpdiv;
+}
+
+unsigned s3c_get_uart_clk(unsigned src) {
+	return (src & 1) ? s3c_get_uart_clk_uclk1() : s3c_get_pclk();
+}
+
+int s5pcxx_dump_clocks(void)
+{
+	printf("refclk:  %7d kHz\n", S5PCXX_CLOCK_REFERENCE / 1000);
+	printf("apll:    %7d kHz\n", s3c_get_apllclk() / 1000);
+	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
+/*	printf("CPU:     %7d kHz\n", s3c_get_cpuclk() / 1000); */
+	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
+	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
+	return 0;
+}
+
+late_initcall(s5pcxx_dump_clocks);
diff --git a/arch/arm/mach-samsung/gpio-s5pcxx.c b/arch/arm/mach-samsung/gpio-s5pcxx.c
new file mode 100644
index 0000000..604a63f
--- /dev/null
+++ b/arch/arm/mach-samsung/gpio-s5pcxx.c
@@ -0,0 +1,123 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ * Copyright (C) 2012 Juergen Beisert, Pengutronix
+ *
+ * This codes bases partially on code from the Linux kernel:
+ *
+ * Copyright 2008 Openmoko, Inc.
+ * Copyright 2008 Simtec Electronics
+ *	http://armlinux.simtec.co.uk/
+ *	Ben Dooks <ben@simtec.co.uk>
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
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <mach/s3c-iomap.h>
+
+#define S3C_GPACON (S3C_GPIO_BASE)
+#define S3C_GPADAT (S3C_GPIO_BASE + 0x04)
+#define S3C_GPAPUD (S3C_GPIO_BASE + 0x08)
+
+static inline unsigned group_offset(unsigned group)
+{
+    return group * 0x20;
+}
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	unsigned group = GET_GROUP(gpio);
+	unsigned bit = GET_BIT(gpio);
+	unsigned offset = group_offset(group);
+	uint32_t reg;
+
+	reg = readl(S3C_GPADAT + offset);
+	reg &= ~(1 << bit);
+	reg |= (!!value) << bit;
+	writel(reg, S3C_GPADAT + offset);
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	unsigned group = GET_GROUP(gpio);
+	unsigned bit = GET_BIT(gpio);
+	unsigned offset = group_offset(group);
+	uint32_t reg;
+
+	/* value */
+	reg = readl(S3C_GPADAT + offset);
+
+	return !!(reg & (1 << bit));
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	unsigned group = GET_GROUP(gpio);
+	unsigned bit = GET_BIT(gpio);
+	unsigned offset = group_offset(group);
+	uint32_t reg;
+
+	bit <<= 2;
+	reg = readl(S3C_GPACON + offset) & ~(0xf << bit);
+	writel(reg, S3C_GPACON + offset);
+
+	return 0;
+}
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	unsigned group = GET_GROUP(gpio);
+	unsigned bit = GET_BIT(gpio);
+	unsigned offset = group_offset(group);
+	uint32_t reg;
+
+	gpio_set_value(gpio, value);
+
+	bit <<= 2;
+	reg = readl(S3C_GPACON + offset) & ~(0xf << bit);
+	reg |= 0x1 << bit;
+	writel(reg, S3C_GPACON + offset);
+
+	return 0;
+}
+
+
+/* 'gpio_mode' must be one of the 'GP?_*' macros */
+void s3c_gpio_mode(unsigned gpio_mode)
+{
+	unsigned group = GET_GROUP(gpio_mode);
+	unsigned bit = GET_BIT(gpio_mode);
+	unsigned func = GET_FUNC(gpio_mode);
+	unsigned offset = group_offset(group);
+	unsigned reg;
+
+	bit <<= 1;
+	if (PUD_PRESENT(gpio_mode)) {
+		reg = readl(S3C_GPAPUD + offset);
+		reg &= ~(PUD_MASK << bit);
+		reg |= GET_PUD(gpio_mode) << bit;
+		writel(reg, S3C_GPAPUD + offset);
+	}
+
+	bit <<= 1;
+	reg = readl(S3C_GPACON + offset) & ~(0xf << bit);
+	writel(reg | (func << bit), S3C_GPACON + offset);
+
+	if (func == 1) { /* output? if yes, also set the initial value */
+		reg = readl(S3C_GPADAT + offset) & ~(1 << (bit >> 2));
+		reg |= GET_GPIOVAL(gpio_mode) << (bit >> 2);
+		writel(reg, S3C_GPADAT + offset);
+	}
+
+}
diff --git a/arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h b/arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h
new file mode 100644
index 0000000..f9d49c5
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h
@@ -0,0 +1,55 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
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
+# define S5P_APLL 0x00
+# define S5P_MPLL 0x08
+# define S5P_EPLL 0x10
+# define S5P_VPLL 0x20
+# define S5P_xPLL_LOCK (S5P_CLOCK_POWER_BASE)
+# define S5P_xPLL_CON  (S5P_CLOCK_POWER_BASE + 0x100)
+# define S5P_xPLL_CON0 (S5P_xPLL_CON)
+# define S5P_xPLL_CON1 (S5P_xPLL_CON + 0x4)
+
+# define S5P_xPLLCON_GET_MDIV(x)  (((x) >> 16) & 0x3ff)
+# define S5P_xPLLCON_GET_PDIV(x)  (((x) >> 8) & 0x3f)
+# define S5P_xPLLCON_GET_SDIV(x)  ((x) & 0x3)
+
+# define S5P_CLK_SRC0 (S5P_CLOCK_POWER_BASE + 0x200)
+# define S5P_CLK_SRC1 (S5P_CLOCK_POWER_BASE + 0x204)
+# define S5P_CLK_SRC2 (S5P_CLOCK_POWER_BASE + 0x208)
+# define S5P_CLK_SRC3 (S5P_CLOCK_POWER_BASE + 0x20C)
+# define S5P_CLK_SRC4 (S5P_CLOCK_POWER_BASE + 0x210)
+# define S5P_CLK_SRC5 (S5P_CLOCK_POWER_BASE + 0x214)
+# define S5P_CLK_SRC6 (S5P_CLOCK_BASE + 0x218)
+
+# define S5P_CLK_DIV0 (S5P_CLOCK_POWER_BASE + 0x300)
+# define S5P_CLK_DIV1 (S5P_CLOCK_POWER_BASE + 0x304)
+# define S5P_CLK_DIV2 (S5P_CLOCK_POWER_BASE + 0x308)
+# define S5P_CLK_DIV3 (S5P_CLOCK_POWER_BASE + 0x30C)
+# define S5P_CLK_DIV4 (S5P_CLOCK_POWER_BASE + 0x310)
+# define S5P_CLK_DIV5 (S5P_CLOCK_POWER_BASE + 0x314)
+# define S5P_CLK_DIV6 (S5P_CLOCK_POWER_BASE + 0x318)
+# define S5P_CLK_DIV7 (S5P_CLOCK_POWER_BASE + 0x31C)
+
+# define S5P_CLK_GATE_SCLK  (S5P_CLOCK_POWER_BASE + 0x444)
+# define S5P_CLK_GATE_IP0   (S5P_CLOCK_POWER_BASE + 0x460)
+# define S5P_CLK_GATE_IP1   (S5P_CLOCK_POWER_BASE + 0x464)
+# define S5P_CLK_GATE_IP2   (S5P_CLOCK_POWER_BASE + 0x468)
+# define S5P_CLK_GATE_IP3   (S5P_CLOCK_POWER_BASE + 0x46C)
+# define S5P_CLK_GATE_IP4   (S5P_CLOCK_POWER_BASE + 0x470)
+# define S5P_CLK_GATE_BLOCK (S5P_CLOCK_POWER_BASE + 0x480)
+# define S5P_CLK_GATE_IP5   (S5P_CLOCK_POWER_BASE + 0x484)
+
+# define S5P_OTHERS (S5P_CLOCK_POWER_BASE + 0xE000)
+# define S5P_USB_PHY_CONTROL (S5P_CLOCK_POWER_BASE + 0xE80C)
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
index 3723394..4d7d217 100644
--- a/arch/arm/mach-samsung/include/mach/gpio.h
+++ b/arch/arm/mach-samsung/include/mach/gpio.h
@@ -16,6 +16,9 @@
 #ifdef CONFIG_ARCH_S3C24xx
 # include <mach/iomux-s3c24x0.h>
 #endif
+#ifdef CONFIG_ARCH_S5PCxx
+# include <mach/iomux-s5pcxx.h>
+#endif
 
 void gpio_set_value(unsigned, int);
 int gpio_direction_input(unsigned);
diff --git a/arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h b/arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h
new file mode 100644
index 0000000..cb05527
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h
@@ -0,0 +1,49 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/* S5PV210 device base addresses */
+
+#define S5P_CLOCK_POWER_BASE	0xE0100000
+#define S3C_GPIO_BASE		0xE0200000
+#define S3C_TIMER_BASE		0xE2500000
+#define S3C_WATCHDOG_BASE	0xE2700000
+#define S3C_UART_BASE		0xE2900000
+#define S3C_USB_HOST_BASE	0xEC200000
+#define S3C_NAND_BASE		0xB0E00000
+
+/* external IO space */
+#define S3C_CS0_BASE 0x80000000
+#define S3C_CS1_BASE 0x88000000
+#define S3C_CS2_BASE 0x90000000
+#define S3C_CS3_BASE 0x98000000
+#define S3C_CS4_BASE 0xA0000000
+#define S3C_CS5_BASE 0xA8000000
+
+#define S3C_SDRAM_BASE 0x20000000
+#define S3C_SDRAM_END (S3C_SDRAM_BASE + 0x60000000)
+
+#define S3C_UART1_BASE (S3C_UART_BASE)
+#define S3C_UART1_SIZE 0x400
+#define S3C_UART2_BASE (S3C_UART_BASE + 0x400)
+#define S3C_UART2_SIZE 0x400
+#define S3C_UART3_BASE (S3C_UART_BASE + 0x800)
+#define S3C_UART3_SIZE 0x400
+#define S3C_UART_HAS_UBRDIVSLOT
+#define S3C_UART_HAS_UINTM
diff --git a/arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h b/arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
new file mode 100644
index 0000000..0677de4
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
@@ -0,0 +1,798 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
+ * Copyright (C) 2012 Alexey Galakhov
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
+/* Tested with S5PV210 */
+
+#ifndef __MACH_IOMUX_S5PCXX_H
+# define __MACH_IOMUX_S5PCXX_H
+
+/* 3322222222221111111111
+ * 10987654321098765432109876543210
+ *                           ^^^^^^_ Bit offset
+ *                      ^^^^^_______ Group Number
+ *                  ^^^^____________ Function
+ *                 ^________________ initial GPIO out value
+ *                ^_________________ Pull up/down feature present
+ *              ^^__________________ initial pull up/down setting
+ */
+
+#define PIN(group,bit) ((group << 6) + bit)
+#define FUNC(x) (((x) & 0xf) << 11)
+#define GET_FUNC(x) (((x) >> 11) & 0xf)
+#define GET_GROUP(x) (((x) >> 6) & 0x1f)
+#define GET_BIT(x) ((x) & 0x3f)
+#define GET_GPIOVAL(x) (!!((x) & (1 << 15)))
+#define GPIO_OUT (1 << 11)
+#define GPIO_IN (0 << 11)
+#define GPIO_VAL(x) ((!!(x)) << 15)
+#define PUD_MASK 0x3
+#define PUD (1 << 16)
+#define PUD_PRESENT(x) (!!((x) & (1 << 16)))
+#define DISABLE_PUD (0 << 17)
+#define ENABLE_PU (2 << 17)
+#define ENABLE_PD (1 << 17)
+#define GET_PUD(x) (((x) >> 17) & PUD_MASK)
+
+/*
+ * To have a chance for simple GPIO manipulation routines
+ * define the GPIO numbers with a real simple scheme.
+ *
+ * Keep in mind: The 'GPIO_2_NO' creates a value to be used with the real gpio
+ * routines and *not* for the multiplexer routines!
+ */
+#define GPIO_2_NO(x,y) (PIN(x,y))
+
+/*
+ * Group A0: GPIO 0...7
+ * Used GPIO: 0...7
+ * These pins can also act as GPIO outputs
+ */
+#define GPA00		(PIN(0,0) | PUD)
+#define GPA00_GPIO	(GPA00 | FUNC(0))
+#define GPA00_RXD0	(GPA00 | FUNC(2))
+#define GPA01		(PIN(0,1) | PUD)
+#define GPA01_GPIO	(GPA01 | FUNC(0))
+#define GPA01_TXD0	(GPA01 | FUNC(2))
+#define GPA02		(PIN(0,2) | PUD)
+#define GPA02_GPIO	(GPA02 | FUNC(0))
+#define GPA02_NCTS0	(GPA02 | FUNC(2))
+#define GPA03		(PIN(0,3) | PUD)
+#define GPA03_GPIO	(GPA03 | FUNC(0))
+#define GPA03_NRTS0	(GPA03 | FUNC(2))
+#define GPA04		(PIN(0,4) | PUD)
+#define GPA04_GPIO	(GPA04 | FUNC(0))
+#define GPA04_RXD1	(GPA04 | FUNC(2))
+#define GPA05		(PIN(0,5) | PUD)
+#define GPA05_GPIO	(GPA05 | FUNC(0))
+#define GPA05_TXD1	(GPA05 | FUNC(2))
+#define GPA06		(PIN(0,6) | PUD)
+#define GPA06_GPIO	(GPA06 | FUNC(0))
+#define GPA06_NCTS1	(GPA06 | FUNC(2))
+#define GPA07		(PIN(0,7) | PUD)
+#define GPA07_GPIO	(GPA07 | FUNC(0))
+#define GPA07_NRTS1	(GPA07 | FUNC(2))
+
+/*
+ * Group A1: GPIO 0..3
+ * Used GPIO: 0..3
+ * These pins can also act as GPIO outputs
+ */
+#define GPA10		(PIN(1,0) | PUD)
+#define GPA10_GPIO	(GPA10 | FUNC(0))
+#define GPA10_RXD2	(GPA10 | FUNC(2))
+#define GPA10_RXDAUD	(GPA0 | FUNC(4))
+#define GPA11		(PIN(1,1) | PUD)
+#define GPA11_GPIO	(GPA11 | FUNC(0))
+#define GPA11_TXD2	(GPA11 | FUNC(2))
+#define GPA11_TXDAUD	(GPA1 | FUNC(4))
+#define GPA12		(PIN(1,2) | PUD)
+#define GPA12_GPIO	(GPA12 | FUNC(0))
+#define GPA12_RXD3	(GPA12 | FUNC(2))
+#define GPA12_NCTS2	(GPA12 | FUNC(3))
+#define GPA13		(PIN(1,3) | PUD)
+#define GPA13_GPIO	(GPA13 | FUNC(0))
+#define GPA13_TXD3	(GPA13 | FUNC(2))
+#define GPA13_NRTS2	(GPA13 | FUNC(3))
+
+
+/*
+ * Group B: GPIO 0...7
+ * Used GPIO: 0...7
+ * These pins can also act as GPIO outputs
+ */
+#define GPB0		(PIN(2,0) | PUD)
+#define GPB0_GPIO	(GPB0 | FUNC(0))
+#define GPB0_SPI0_CLK   (GPB0 | FUNC(2))
+#define GPB1		(PIN(2,1) | PUD)
+#define GPB1_GPIO	(GPB1 | FUNC(0))
+#define GPB1_SPI0_NCS	(GPB1 | FUNC(2))
+#define GPB2		(PIN(2,2) | PUD)
+#define GPB2_GPIO	(GPB2 | FUNC(0))
+#define GPB2_SPI0_MISO	(GPB2 | FUNC(2))
+#define GPB3		(PIN(2,3) | PUD)
+#define GPB3_GPIO	(GPB3 | FUNC(0))
+#define GPB3_SPI0_MOSI	(GPB3 | FUNC(2))
+#define GPB4		(PIN(2,4) | PUD)
+#define GPB4_GPIO	(GPB4 | FUNC(0))
+#define GPB4_SPI1_CLK	(GPB4 | FUNC(2))
+#define GPB5		(PIN(2,5) | PUD)
+#define GPB5_GPIO	(GPB5 | FUNC(0))
+#define GPB5_SPI1_NCS	(GPB5 | FUNC(0))
+#define GPB6		(PIN(2,6) | PUD)
+#define GPB6_GPIO	(GPB6 | FUNC(0))
+#define GPB6_SPI1_MISO	(GPB6 | FUNC(0))
+#define GPB7		(PIN(2,7) | PUD)
+#define GPB7_GPIO	(GPB7 | FUNC(0))
+#define GPB7_SPI1_MOSI	(GPB7 | FUNC(0))
+
+/*
+ * Group C0: GPIO 0...4
+ */
+#define GPC00			(PIN(3,0) | PUD)
+#define GPC00_GPIO		(GPC00 | FUNC(0))
+#define GPC00_I2S1_SCLK		(GPC00 | FUNC(2))
+#define GPC00_PCM1_SCLK		(GPC00 | FUNC(3))
+#define GPC00_AC97_BITCLK	(GPC00 | FUNC(4))
+#define GPC01			(PIN(3,1) | PUD)
+#define GPC01_GPIO		(GPC01 | FUNC(0))
+#define GPC01_I2S1_CDCLK	(GPC01 | FUNC(2))
+#define GPC01_PCM1_EXTCLK	(GPC01 | FUNC(3))
+#define GPC01_AC97_NRESET	(GPC01 | FUNC(4))
+#define GPC02			(PIN(3,2) | PUD)
+#define GPC02_GPIO		(GPC02 | FUNC(0))
+#define GPC02_I2S1_LRCK		(GPC02 | FUNC(2))
+#define GPC02_PCM1_FSYNC	(GPC02 | FUNC(3))
+#define GPC02_AC97_SYNC		(GPC02 | FUNC(4))
+#define GPC03			(PIN(3,3) | PUD)
+#define GPC03_GPIO		(GPC03 | FUNC(0))
+#define GPC03_I2S1_SDI		(GPC03 | FUNC(2))
+#define GPC03_PCM1_SIN		(GPC03 | FUNC(3))
+#define GPC03_AC97_SDI		(GPC03 | FUNC(4))
+#define GPC04			(PIN(3,4) | PUD)
+#define GPC04_GPIO		(GPC04 | FUNC(0))
+#define GPC04_I2S1_SDO		(GPC04 | FUNC(2))
+#define GPC04_PCM1_SOUT		(GPC04 | FUNC(3))
+#define GPC04_AC97_SDO		(GPC04 | FUNC(4))
+
+/*
+ * Group C1: GPIO 0...4
+ */
+#define GPC10			(PIN(4,0) | PUD)
+#define GPC10_GPIO		(GPC10 | FUNC(0))
+#define GPC10_PCM2_SCLK		(GPC10 | FUNC(2))
+#define GPC10_SPDIF_0_OUT	(GPC10 | FUNC(3))
+#define GPC10_I2S2_SCLK		(GPC10 | FUNC(4))
+#define GPC11			(PIN(4,1) | PUD)
+#define GPC11_GPIO		(GPC11 | FUNC(0))
+#define GPC11_PCM2_EXTCLK	(GPC11 | FUNC(2))
+#define GPC11_SPDIF_EXTCLK	(GPC11 | FUNC(3))
+#define GPC11_I2S2_CDCLK	(GPC11 | FUNC(4))
+#define GPC12			(PIN(4,2) | PUD)
+#define GPC12_GPIO		(GPC12 | FUNC(0))
+#define GPC12_PCM2_FSYNC	(GPC12 | FUNC(2))
+#define GPC12_LCD_FRM		(GPC12 | FUNC(3))
+#define GPC12_I2S2_LRCK		(GPC12 | FUNC(4))
+#define GPC13			(PIN(4,3) | PUD)
+#define GPC13_GPIO		(GPC13 | FUNC(0))
+#define GPC13_PCM2_SIN		(GPC13 | FUNC(2))
+#define GPC13_I2S2_SDI		(GPC13 | FUNC(4))
+#define GPC14			(PIN(4,4) | PUD)
+#define GPC14_GPIO		(GPC14 | FUNC(0))
+#define GPC14_PCM2_SOUT		(GPC14 | FUNC(2))
+#define GPC14_I2S2_SDO		(GPC14 | FUNC(4))
+
+/*
+ * Group D0: GPIO 0...3
+ */
+#define GPD00		(PIN(5,0) | PUD)
+#define GPD00_GPIO	(GPD00 | FUNC(0))
+#define GPD00_TOUT_0	(GPD00 | FUNC(2))
+#define GPD01		(PIN(5,1) | PUD)
+#define GPD01_GPIO	(GPD01 | FUNC(0))
+#define GPD01_TOUT_1	(GPD01 | FUNC(2))
+#define GPD02		(PIN(5,2) | PUD)
+#define GPD02_GPIO	(GPD02 | FUNC(0))
+#define GPD02_TOUT_2	(GPD02 | FUNC(2))
+#define GPD03		(PIN(5,3) | PUD)
+#define GPD03_GPIO	(GPD03 | FUNC(0))
+#define GPD03_TOUT_3	(GPD03 | FUNC(2))
+
+/*
+ * Group D1: GPIO 0...5
+ */
+#define GPD10		(PIN(6,0) | PUD)
+#define GPD10_GPIO	(GPD10 | FUNC(0))
+#define GPD10_I2C0_SDA	(GPD10 | FUNC(2))
+#define GPD11		(PIN(6,0) | PUD)
+#define GPD11_GPIO	(GPD11 | FUNC(0))
+#define GPD11_I2C0_SCL	(GPD11 | FUNC(2))
+#define GPD12		(PIN(6,0) | PUD)
+#define GPD12_GPIO	(GPD12 | FUNC(0))
+#define GPD12_I2C1_SDA	(GPD12 | FUNC(2))
+#define GPD13		(PIN(6,0) | PUD)
+#define GPD13_GPIO	(GPD13 | FUNC(0))
+#define GPD13_I2C1_SCL	(GPD13 | FUNC(2))
+#define GPD14		(PIN(6,0) | PUD)
+#define GPD14_GPIO	(GPD14 | FUNC(0))
+#define GPD14_I2C2_SDA	(GPD14 | FUNC(2))
+#define GPD15		(PIN(6,0) | PUD)
+#define GPD15_GPIO	(GPD15 | FUNC(0))
+#define GPD15_I2C2_SCL	(GPD15 | FUNC(2))
+
+/*
+ * Group E0: GPIO 0...7
+ */
+#define GPE00			(PIN(7,0) | PUD)
+#define GPE00_GPIO		(GPE00 | FUNC(0))
+#define GPE00_CAM_A_PCLK	(GPE00 | FUNC(2))
+#define GPE01			(PIN(7,1) | PUD)
+#define GPE01_GPIO		(GPE01 | FUNC(0))
+#define GPE01_CAM_A_VSYNC	(GPE01 | FUNC(2))
+#define GPE02			(PIN(7,2) | PUD)
+#define GPE02_GPIO		(GPE02 | FUNC(0))
+#define GPE02_CAM_A_HREF	(GPE02 | FUNC(2))
+#define GPE03			(PIN(7,3) | PUD)
+#define GPE03_GPIO		(GPE03 | FUNC(0))
+#define GPE03_CAM_A_DATA0	(GPE03 | FUNC(2))
+#define GPE04			(PIN(7,4) | PUD)
+#define GPE04_GPIO		(GPE04 | FUNC(0))
+#define GPE04_CAM_A_DATA1	(GPE04 | FUNC(2))
+#define GPE05			(PIN(7,5) | PUD)
+#define GPE05_GPIO		(GPE05 | FUNC(0))
+#define GPE05_CAM_A_DATA2	(GPE05 | FUNC(2))
+#define GPE06			(PIN(7,6) | PUD)
+#define GPE06_GPIO		(GPE06 | FUNC(0))
+#define GPE06_CAM_A_DATA3	(GPE06 | FUNC(2))
+#define GPE07			(PIN(7,7) | PUD)
+#define GPE07_GPIO		(GPE07 | FUNC(0))
+#define GPE07_CAM_A_DATA4	(GPE07 | FUNC(2))
+
+/*
+ * Group E1: GPIO 0...4
+ */
+#define GPE10			(PIN(8,0) | PUD)
+#define GPE10_GPIO		(GPE10 | FUNC(0))
+#define GPE10_CAM_A_DATA5	(GPE10 | FUNC(2))
+#define GPE11			(PIN(8,1) | PUD)
+#define GPE11_GPIO		(GPE11 | FUNC(0))
+#define GPE11_CAM_A_DATA6	(GPE11 | FUNC(2))
+#define GPE12			(PIN(8,2) | PUD)
+#define GPE12_GPIO		(GPE12 | FUNC(0))
+#define GPE12_CAM_A_DATA7	(GPE12 | FUNC(2))
+#define GPE13			(PIN(8,3) | PUD)
+#define GPE13_GPIO		(GPE13 | FUNC(0))
+#define GPE13_CAM_A_CLKOUT	(GPE13 | FUNC(2))
+#define GPE14			(PIN(8,4) | PUD)
+#define GPE14_GPIO		(GPE14 | FUNC(0))
+#define GPE14_CAM_A_FIELD	(GPE14 | FUNC(2))
+
+/*
+ * Group F0: GPIO 0...7
+ */
+#define GPF00		(PIN(9,0) | PUD)
+#define GPF00_GPIO	(GPF00 | FUNC(0))
+#define GPF00_LCD_HSYNC	(GPF00 | FUNC(2))
+#define GPF00_SYS_CS0	(GPF00 | FUNC(3))
+#define GPF00_VEN_HSYNC	(GPF00 | FUNC(4))
+#define GPF01		(PIN(9,1) | PUD)
+#define GPF01_GPIO	(GPF01 | FUNC(0))
+#define GPF01_LCD_VSYNC	(GPF01 | FUNC(2))
+#define GPF01_SYS_CS1	(GPF01 | FUNC(3))
+#define GPF01_VEN_VSYNC	(GPF01 | FUNC(4))
+#define GPF02		(PIN(9,2) | PUD)
+#define GPF02_GPIO	(GPF02 | FUNC(0))
+#define GPF02_LCD_VDEN	(GPF02 | FUNC(2))
+#define GPF02_SYS_RS	(GPF02 | FUNC(3))
+#define GPF02_VEN_HREF	(GPF02 | FUNC(4))
+#define GPF03		(PIN(9,3) | PUD)
+#define GPF03_GPIO	(GPF03 | FUNC(0))
+#define GPF03_LCD_VCLK	(GPF03 | FUNC(2))
+#define GPF03_SYS_WE	(GPF03 | FUNC(3))
+#define GPF03_V601_CLK	(GPF03 | FUNC(4))
+#define GPF04		(PIN(9,4) | PUD)
+#define GPF04_GPIO	(GPF04 | FUNC(0))
+#define GPF04_LCD_VD0	(GPF04 | FUNC(2))
+#define GPF04_SYS_VS0	(GPF04 | FUNC(3))
+#define GPF04_VEN_DATA0	(GPF04 | FUNC(4))
+#define GPF05		(PIN(9,5) | PUD)
+#define GPF05_GPIO	(GPF05 | FUNC(0))
+#define GPF05_LCD_VD1	(GPF05 | FUNC(2))
+#define GPF05_SYS_VD1	(GPF05 | FUNC(3))
+#define GPF05_VEN_DATA1	(GPF05 | FUNC(4))
+#define GPF06		(PIN(9,6) | PUD)
+#define GPF06_GPIO	(GPF06 | FUNC(0))
+#define GPF06_LCD_VD2	(GPF06 | FUNC(2))
+#define GPF06_SYS_VD2	(GPF06 | FUNC(3))
+#define GPF06_VEN_DATA2	(GPF06 | FUNC(4))
+#define GPF07		(PIN(9,7) | PUD)
+#define GPF07_GPIO	(GPF07 | FUNC(0))
+#define GPF07_LCD_VD3	(GPF07 | FUNC(2))
+#define GPF07_SYS_VD3	(GPF07 | FUNC(3))
+#define GPF07_VEN_DATA3	(GPF07 | FUNC(4))
+
+/*
+ * Group F1: GPIO 0...7
+ */
+#define GPF10			(PIN(10,0) | PUD)
+#define GPF10_GPIO		(GPF10 | FUNC(0))
+#define GPF10_LCD_VD4		(GPF10 | FUNC(2))
+#define GPF10_SYS_VD4		(GPF10 | FUNC(3))
+#define GPF10_VEN_DATA4		(GPF10 | FUNC(4))
+#define GPF11			(PIN(10,1) | PUD)
+#define GPF11_GPIO		(GPF11 | FUNC(0))
+#define GPF11_LCD_VD5		(GPF11 | FUNC(2))
+#define GPF11_SYS_VD5		(GPF11 | FUNC(3))
+#define GPF11_VEN_DATA5		(GPF11 | FUNC(4))
+#define GPF12			(PIN(10,2) | PUD)
+#define GPF12_GPIO		(GPF12 | FUNC(0))
+#define GPF12_LCD_VD6		(GPF12 | FUNC(2))
+#define GPF12_SYS_VD6		(GPF12 | FUNC(3))
+#define GPF12_VEN_DATA6		(GPF12 | FUNC(4))
+#define GPF13			(PIN(10,3) | PUD)
+#define GPF13_GPIO		(GPF13 | FUNC(0))
+#define GPF13_LCD_VD7		(GPF13 | FUNC(2))
+#define GPF13_SYS_VD7		(GPF13 | FUNC(3))
+#define GPF13_VEN_DATA7		(GPF13 | FUNC(4))
+#define GPF14			(PIN(10,4) | PUD)
+#define GPF14_GPIO		(GPF14 | FUNC(0))
+#define GPF14_LCD_VD8		(GPF14 | FUNC(2))
+#define GPF14_SYS_VD8		(GPF14 | FUNC(3))
+#define GPF14_V656_DATA0	(GPF14 | FUNC(4))
+#define GPF15			(PIN(10,5) | PUD)
+#define GPF15_GPIO		(GPF15 | FUNC(0))
+#define GPF15_LCD_VD9		(GPF15 | FUNC(2))
+#define GPF15_SYS_VD9		(GPF15 | FUNC(3))
+#define GPF15_V656_DATA1	(GPF15 | FUNC(4))
+#define GPF16			(PIN(10,6) | PUD)
+#define GPF16_GPIO		(GPF16 | FUNC(0))
+#define GPF16_LCD_VD10		(GPF16 | FUNC(2))
+#define GPF16_SYS_VD10		(GPF16 | FUNC(3))
+#define GPF16_V656_DATA2	(GPF16 | FUNC(4))
+#define GPF17			(PIN(10,7) | PUD)
+#define GPF17_GPIO		(GPF17 | FUNC(0))
+#define GPF17_LCD_VD11		(GPF17 | FUNC(2))
+#define GPF17_SYS_VD11		(GPF17 | FUNC(3))
+#define GPF17_V656_DATA3	(GPF17 | FUNC(4))
+
+/*
+ * Group F2: GPIO 0...7
+ */
+#define GPF20			(PIN(11,0) | PUD)
+#define GPF20_GPIO		(GPF20 | FUNC(0))
+#define GPF20_LCD_VD_12		(GPF20 | FUNC(2))
+#define GPF20_SYS_VD_12		(GPF20 | FUNC(3))
+#define GPF20_V656_DATA_4	(GPF20 | FUNC(4))
+#define GPF21			(PIN(11,1) | PUD)
+#define GPF21_GPIO		(GPF21 | FUNC(0))
+#define GPF21_LCD_VD_13		(GPF21 | FUNC(2))
+#define GPF21_SYS_VD_13		(GPF21 | FUNC(3))
+#define GPF21_V656_DATA_5	(GPF21 | FUNC(4))
+#define GPF22			(PIN(11,2) | PUD)
+#define GPF22_GPIO		(GPF22 | FUNC(0))
+#define GPF22_LCD_VD_14		(GPF22 | FUNC(2))
+#define GPF22_SYS_VD_14		(GPF22 | FUNC(3))
+#define GPF22_V656_DATA_6	(GPF22 | FUNC(4))
+#define GPF23			(PIN(11,3) | PUD)
+#define GPF23_GPIO		(GPF23 | FUNC(0))
+#define GPF23_LCD_VD_15		(GPF23 | FUNC(2))
+#define GPF23_SYS_VD_15		(GPF23 | FUNC(3))
+#define GPF23_V656_DATA_7	(GPF23 | FUNC(4))
+#define GPF24			(PIN(11,4) | PUD)
+#define GPF24_GPIO		(GPF24 | FUNC(0))
+#define GPF24_LCD_VD_16		(GPF24 | FUNC(2))
+#define GPF24_SYS_VD_16		(GPF24 | FUNC(3))
+#define GPF25			(PIN(11,5) | PUD)
+#define GPF25_GPIO		(GPF25 | FUNC(0))
+#define GPF25_LCD_VD_17		(GPF25 | FUNC(2))
+#define GPF25_SYS_VD_17		(GPF25 | FUNC(3))
+#define GPF26			(PIN(11,6) | PUD)
+#define GPF26_GPIO		(GPF26 | FUNC(0))
+#define GPF26_LCD_VD_18		(GPF26 | FUNC(2))
+#define GPF26_SYS_VD_18		(GPF26 | FUNC(3))
+#define GPF27			(PIN(11,7) | PUD)
+#define GPF27_GPIO		(GPF27 | FUNC(0))
+#define GPF27_LCD_VD_19		(GPF27 | FUNC(2))
+#define GPF27_SYS_VD_19		(GPF27 | FUNC(3))
+
+/*
+ * Group F3: GPIO 0...5
+ */
+#define GPF30		(PIN(12,0) | PUD)
+#define GPF30_GPIO	(GPF30 | FUNC(0))
+#define GPF30_LCD_VD20	(GPF30 | FUNC(2))
+#define GPF30_SYS_VD20	(GPF30 | FUNC(3))
+#define GPF31		(PIN(12,1) | PUD)
+#define GPF31_GPIO	(GPF31 | FUNC(0))
+#define GPF31_LCD_VD21	(GPF31 | FUNC(2))
+#define GPF31_SYS_VD21	(GPF31 | FUNC(3))
+#define GPF32		(PIN(12,2) | PUD)
+#define GPF32_GPIO	(GPF32 | FUNC(0))
+#define GPF32_LCD_VD22	(GPF32 | FUNC(2))
+#define GPF32_SYS_VD22	(GPF32 | FUNC(3))
+#define GPF33		(PIN(12,3) | PUD)
+#define GPF33_GPIO	(GPF33 | FUNC(0))
+#define GPF33_LCD_VD23	(GPF33 | FUNC(2))
+#define GPF33_SYS_VD23	(GPF33 | FUNC(3))
+#define GPF33_V656_CLK	(GPF33 | FUNC(4))
+#define GPF34		(PIN(12,4) | PUD)
+#define GPF34_GPIO	(GPF34 | FUNC(0))
+#define GPF34_VSYNC_LDI	(GPF34 | FUNC(3))
+#define GPF35		(PIN(12,5) | PUD)
+#define GPF35_GPIO	(GPF35 | FUNC(0))
+#define GPF35_SYS_OE	(GPF35 | FUNC(3))
+#define GPF35_VEN_FIELD	(GPF35 | FUNC(4))
+
+/*
+ * Group G0: GPIO 0...6
+ */
+#define GPG00		(PIN(13,0) | PUD)
+#define GPG00_GPIO	(GPG00 | FUNC(0))
+#define GPG00_SD0_CLK	(GPG00 | FUNC(2))
+#define GPG01		(PIN(13,1) | PUD)
+#define GPG01_GPIO	(GPG01 | FUNC(0))
+#define GPG01_SD0_CMD	(GPG01 | FUNC(2))
+#define GPG02		(PIN(13,2) | PUD)
+#define GPG02_GPIO	(GPG02 | FUNC(0))
+#define GPG02_SD0_NCD	(GPG02 | FUNC(2))
+#define GPG03		(PIN(13,3) | PUD)
+#define GPG03_GPIO	(GPG03 | FUNC(0))
+#define GPG03_SD0_DATA0	(GPG03 | FUNC(2))
+#define GPG04		(PIN(13,4) | PUD)
+#define GPG04_GPIO	(GPG04 | FUNC(0))
+#define GPG04_SD0_DATA1	(GPG04 | FUNC(2))
+#define GPG05		(PIN(13,5) | PUD)
+#define GPG05_GPIO	(GPG05 | FUNC(0))
+#define GPG05_SD0_DATA2	(GPG05 | FUNC(2))
+#define GPG06		(PIN(13,6) | PUD)
+#define GPG06_GPIO	(GPG06 | FUNC(0))
+#define GPG06_SD0_DATA3	(GPG06 | FUNC(2))
+
+/*
+ * Group G1: GPIO 0...6
+ */
+#define GPG10		(PIN(14,0) | PUD)
+#define GPG10_GPIO	(GPG10 | FUNC(0))
+#define GPG10_SD1_CLK	(GPG10 | FUNC(2))
+#define GPG11		(PIN(14,1) | PUD)
+#define GPG11_GPIO	(GPG11 | FUNC(0))
+#define GPG11_SD1_CMD	(GPG11 | FUNC(2))
+#define GPG12		(PIN(14,2) | PUD)
+#define GPG12_GPIO	(GPG12 | FUNC(0))
+#define GPG12_SD1_NCD	(GPG12 | FUNC(2))
+#define GPG13		(PIN(14,3) | PUD)
+#define GPG13_GPIO	(GPG13 | FUNC(0))
+#define GPG13_SD1_DATA0	(GPG13 | FUNC(2))
+#define GPG13_SD0_DATA4	(GPG13 | FUNC(3))
+#define GPG14		(PIN(14,4) | PUD)
+#define GPG14_GPIO	(GPG14 | FUNC(0))
+#define GPG14_SD1_DATA1	(GPG14 | FUNC(2))
+#define GPG14_SD0_DATA5	(GPG14 | FUNC(3))
+#define GPG15		(PIN(14,5) | PUD)
+#define GPG15_GPIO	(GPG15 | FUNC(0))
+#define GPG15_SD1_DATA2	(GPG15 | FUNC(2))
+#define GPG15_SD0_DATA6	(GPG15 | FUNC(3))
+#define GPG16		(PIN(14,6) | PUD)
+#define GPG16_GPIO	(GPG16 | FUNC(0))
+#define GPG16_SD1_DATA3	(GPG16 | FUNC(2))
+#define GPG16_SD0_DATA7	(GPG16 | FUNC(3))
+
+/*
+ * Group G2: GPIO 0...6
+ */
+#define GPG20		(PIN(15,0) | PUD)
+#define GPG20_GPIO	(GPG20 | FUNC(0))
+#define GPG20_SD2_CLK	(GPG20 | FUNC(2))
+#define GPG21		(PIN(15,1) | PUD)
+#define GPG21_GPIO	(GPG21 | FUNC(0))
+#define GPG21_SD2_CMD	(GPG21 | FUNC(2))
+#define GPG22		(PIN(15,2) | PUD)
+#define GPG22_GPIO	(GPG22 | FUNC(0))
+#define GPG22_SD2_NCD	(GPG22 | FUNC(2))
+#define GPG23		(PIN(15,3) | PUD)
+#define GPG23_GPIO	(GPG23 | FUNC(0))
+#define GPG23_SD2_DATA0	(GPG23 | FUNC(2))
+#define GPG24		(PIN(15,4) | PUD)
+#define GPG24_GPIO	(GPG24 | FUNC(0))
+#define GPG24_SD2_DATA1	(GPG24 | FUNC(2))
+#define GPG25		(PIN(15,5) | PUD)
+#define GPG25_GPIO	(GPG25 | FUNC(0))
+#define GPG25_SD2_DATA2	(GPG25 | FUNC(2))
+#define GPG26		(PIN(15,6) | PUD)
+#define GPG26_GPIO	(GPG26 | FUNC(0))
+#define GPG26_SD2_DATA3	(GPG26 | FUNC(2))
+
+/*
+ * Group G3: GPIO 0...6
+ */
+#define GPG30		(PIN(16,0) | PUD)
+#define GPG30_GPIO	(GPG30 | FUNC(0))
+#define GPG30_SD3_CLK	(GPG30 | FUNC(2))
+#define GPG31		(PIN(16,1) | PUD)
+#define GPG31_GPIO	(GPG31 | FUNC(0))
+#define GPG31_SD3_CMD	(GPG31 | FUNC(2))
+#define GPG32		(PIN(16,2) | PUD)
+#define GPG32_GPIO	(GPG32 | FUNC(0))
+#define GPG32_SD3_NCD	(GPG32 | FUNC(2))
+#define GPG33		(PIN(16,3) | PUD)
+#define GPG33_GPIO	(GPG33 | FUNC(0))
+#define GPG33_SD3_DATA0	(GPG33 | FUNC(2))
+#define GPG33_SD2_DATA4	(GPG33 | FUNC(3))
+#define GPG34		(PIN(16,4) | PUD)
+#define GPG34_GPIO	(GPG34 | FUNC(0))
+#define GPG34_SD3_DATA1	(GPG34 | FUNC(2))
+#define GPG34_SD2_DATA5	(GPG34 | FUNC(3))
+#define GPG35		(PIN(16,5) | PUD)
+#define GPG35_GPIO	(GPG35 | FUNC(0))
+#define GPG35_SD3_DATA2	(GPG35 | FUNC(2))
+#define GPG35_SD2_DATA6	(GPG35 | FUNC(3))
+#define GPG36		(PIN(16,6) | PUD)
+#define GPG36_GPIO	(GPG36 | FUNC(0))
+#define GPG36_SD3_DATA3	(GPG36 | FUNC(2))
+#define GPG36_SD2_DATA7	(GPG36 | FUNC(3))
+
+/*
+ * Group I - no GPIO
+ */
+#define GPI0			(PIN(17,0) | PUD)
+#define GPI0_I2S0_SCLK		(GPI0 | FUNC(2))
+#define GPI0_PCM0_SCLK		(GPI0 | FUNC(3))
+#define GPI1			(PIN(17,1) | PUD)
+#define GPI1_I2S0_CDCLK		(GPI1 | FUNC(2))
+#define GPI1_PCM0_EXTCLK	(GPI1 | FUNC(3))
+#define GPI2			(PIN(17,2) | PUD)
+#define GPI2_I2S0_LRCK		(GPI2 | FUNC(2))
+#define GPI2_PCM0_FSYNC		(GPI2 | FUNC(3))
+#define GPI3			(PIN(17,3) | PUD)
+#define GPI3_I2S0_SDI		(GPI3 | FUNC(2))
+#define GPI3_PCM0_SIN		(GPI3 | FUNC(3))
+#define GPI4			(PIN(17,4) | PUD)
+#define GPI4_I2S0_SDO0		(GPI4 | FUNC(2))
+#define GPI4_PCM0_SOUT		(GPI4 | FUNC(3))
+#define GPI5			(PIN(17,5) | PUD)
+#define GPI5_I2S0_SDO1		(GPI5 | FUNC(2))
+#define GPI6			(PIN(17,6) | PUD)
+#define GPI6_I2S0_SDO2		(GPI6 | FUNC(2))
+
+/*
+ * Group J0: GPIO 0...7
+ */
+#define GPJ00			(PIN(18,0) | PUD)
+#define GPJ00_GPIO		(GPJ00 | FUNC(0))
+#define GPJ00_MSM_ADDR0		(GPJ00 | FUNC(2))
+#define GPJ00_CAM_B_DATA0	(GPJ00 | FUNC(3))
+#define GPJ00_CF_ADDR0		(GPJ00 | FUNC(4))
+#define GPJ00_MIPI_BYTE_CLK	(GPJ00 | FUNC(5))
+#define GPJ01			(PIN(18,1) | PUD)
+#define GPJ01_GPIO		(GPJ01 | FUNC(0))
+#define GPJ01_MSM_ADDR1		(GPJ01 | FUNC(2))
+#define GPJ01_CAM_B_DATA1	(GPJ01 | FUNC(3))
+#define GPJ01_CF_ADDR1		(GPJ01 | FUNC(4))
+#define GPJ01_MIPI_ESC_CLK	(GPJ01 | FUNC(5))
+#define GPJ02			(PIN(18,2) | PUD)
+#define GPJ02_GPIO		(GPJ02 | FUNC(0))
+#define GPJ02_MSM_ADDR2		(GPJ02 | FUNC(2))
+#define GPJ02_CAM_B_DATA2	(GPJ02 | FUNC(3))
+#define GPJ02_CF_ADDR2		(GPJ02 | FUNC(4))
+#define GPJ02_TS_CLK		(GPJ02 | FUNC(5))
+#define GPJ03			(PIN(18,3) | PUD)
+#define GPJ03_GPIO		(GPJ03 | FUNC(0))
+#define GPJ03_MSM_ADDR3		(GPJ03 | FUNC(2))
+#define GPJ03_CAM_B_DATA3	(GPJ03 | FUNC(3))
+#define GPJ03_CF_IORDY		(GPJ03 | FUNC(4))
+#define GPJ03_TS_SYNC		(GPJ03 | FUNC(5))
+#define GPJ04			(PIN(18,4) | PUD)
+#define GPJ04_GPIO		(GPJ04 | FUNC(0))
+#define GPJ04_MSM_ADDR4		(GPJ04 | FUNC(2))
+#define GPJ04_CAM_B_DATA4	(GPJ04 | FUNC(3))
+#define GPJ04_CF_INTRQ		(GPJ04 | FUNC(4))
+#define GPJ04_TS_VAL		(GPJ04 | FUNC(5))
+#define GPJ05			(PIN(18,5) | PUD)
+#define GPJ05_GPIO		(GPJ05 | FUNC(0))
+#define GPJ05_MSM_ADDR5		(GPJ05 | FUNC(2))
+#define GPJ05_CAM_B_DATA5	(GPJ05 | FUNC(3))
+#define GPJ05_CF_DMARQ		(GPJ05 | FUNC(4))
+#define GPJ05_TS_DATA		(GPJ05 | FUNC(5))
+#define GPJ06			(PIN(18,6) | PUD)
+#define GPJ06_GPIO		(GPJ06 | FUNC(0))
+#define GPJ06_MSM_ADDR6		(GPJ06 | FUNC(2))
+#define GPJ06_CAM_B_DATA6	(GPJ06 | FUNC(3))
+#define GPJ06_CF_NDRESET	(GPJ06 | FUNC(4))
+#define GPJ06_TS_ERROR		(GPJ06 | FUNC(5))
+#define GPJ07			(PIN(18,7) | PUD)
+#define GPJ07_GPIO		(GPJ07 | FUNC(0))
+#define GPJ07_MSM_ADDR7		(GPJ07 | FUNC(2))
+#define GPJ07_CAM_B_DATA7	(GPJ07 | FUNC(3))
+#define GPJ07_CF_NDMACK		(GPJ07 | FUNC(4))
+#define GPJ07_MHL_D0		(GPJ07 | FUNC(5))
+
+/*
+ * Group J1: GPIO 0...5
+ */
+#define GPJ10			(PIN(19,0) | PUD)
+#define GPJ10_GPIO		(GPJ10 | FUNC(0))
+#define GPJ10_MSM_ADDR8		(GPJ10 | FUNC(2))
+#define GPJ10_CAM_B_PCLK	(GPJ10 | FUNC(3))
+#define GPJ10_SROM_ADDR_16to220	(GPJ10 | FUNC(4))
+#define GPJ10_MHL_D1		(GPJ10 | FUNC(5))
+#define GPJ11			(PIN(19,1) | PUD)
+#define GPJ11_GPIO		(GPJ11 | FUNC(0))
+#define GPJ11_MSM_ADDR9		(GPJ11 | FUNC(2))
+#define GPJ11_CAM_B_VSYNC	(GPJ11 | FUNC(3))
+#define GPJ11_SROM_ADDR_16to221	(GPJ11 | FUNC(4))
+#define GPJ11_MHL_D2		(GPJ11 | FUNC(5))
+#define GPJ12			(PIN(19,2) | PUD)
+#define GPJ12_GPIO		(GPJ12 | FUNC(0))
+#define GPJ12_MSM_ADDR10	(GPJ12 | FUNC(2))
+#define GPJ12_CAM_B_HREF	(GPJ12 | FUNC(3))
+#define GPJ12_SROM_ADDR_16to222	(GPJ12 | FUNC(4))
+#define GPJ12_MHL_D3		(GPJ12 | FUNC(5))
+#define GPJ13			(PIN(19,3) | PUD)
+#define GPJ13_GPIO		(GPJ13 | FUNC(0))
+#define GPJ13_MSM_ADDR11	(GPJ13 | FUNC(2))
+#define GPJ13_CAM_B_FIELD	(GPJ13 | FUNC(3))
+#define GPJ13_SROM_ADDR_16to223	(GPJ13 | FUNC(4))
+#define GPJ13_MHL_D4		(GPJ13 | FUNC(5))
+#define GPJ14			(PIN(19,4) | PUD)
+#define GPJ14_GPIO		(GPJ14 | FUNC(0))
+#define GPJ14_MSM_ADDR12	(GPJ14 | FUNC(2))
+#define GPJ14_CAM_B_CLKOUT	(GPJ14 | FUNC(3))
+#define GPJ14_SROM_ADDR_16to224	(GPJ14 | FUNC(4))
+#define GPJ14_MHL_D5		(GPJ14 | FUNC(5))
+#define GPJ15			(PIN(19,5) | PUD)
+#define GPJ15_GPIO		(GPJ15 | FUNC(0))
+#define GPJ15_MSM_ADDR13	(GPJ15 | FUNC(2))
+#define GPJ15_KP_COL0		(GPJ15 | FUNC(3))
+#define GPJ15_SROM_ADDR_16to225	(GPJ15 | FUNC(4))
+#define GPJ15_MHL_D6		(GPJ15 | FUNC(5))
+
+/*
+ * Group J2: GPIO 0...7
+ */
+#define GPJ20		(PIN(20,0) | PUD)
+#define GPJ20_GPIO	(GPJ20 | FUNC(0))
+#define GPJ20_MSM_DATA0	(GPJ20 | FUNC(2))
+#define GPJ20_KP_COL1	(GPJ20 | FUNC(3))
+#define GPJ20_CF_DATA0	(GPJ20 | FUNC(4))
+#define GPJ20_MHL_D7	(GPJ20 | FUNC(5))
+#define GPJ21		(PIN(20,1) | PUD)
+#define GPJ21_GPIO	(GPJ21 | FUNC(0))
+#define GPJ21_MSM_DATA1	(GPJ21 | FUNC(2))
+#define GPJ21_KP_COL2	(GPJ21 | FUNC(3))
+#define GPJ21_CF_DATA1	(GPJ21 | FUNC(4))
+#define GPJ21_MHL_D8	(GPJ21 | FUNC(5))
+#define GPJ22		(PIN(20,2) | PUD)
+#define GPJ22_GPIO	(GPJ22 | FUNC(0))
+#define GPJ22_MSM_DATA2	(GPJ22 | FUNC(2))
+#define GPJ22_KP_COL3	(GPJ22 | FUNC(3))
+#define GPJ22_CF_DATA2	(GPJ22 | FUNC(4))
+#define GPJ22_MHL_D9	(GPJ22 | FUNC(5))
+#define GPJ23		(PIN(20,3) | PUD)
+#define GPJ23_GPIO	(GPJ23 | FUNC(0))
+#define GPJ23_MSM_DATA3	(GPJ23 | FUNC(2))
+#define GPJ23_KP_COL4	(GPJ23 | FUNC(3))
+#define GPJ23_CF_DATA3	(GPJ23 | FUNC(4))
+#define GPJ23_MHL_D10	(GPJ23 | FUNC(5))
+#define GPJ24		(PIN(20,4) | PUD)
+#define GPJ24_GPIO	(GPJ24 | FUNC(0))
+#define GPJ24_MSM_DATA4	(GPJ24 | FUNC(2))
+#define GPJ24_KP_COL5	(GPJ24 | FUNC(3))
+#define GPJ24_CF_DATA4	(GPJ24 | FUNC(4))
+#define GPJ24_MHL_D11	(GPJ24 | FUNC(5))
+#define GPJ25		(PIN(20,5) | PUD)
+#define GPJ25_GPIO	(GPJ25 | FUNC(0))
+#define GPJ25_MSM_DATA5	(GPJ25 | FUNC(2))
+#define GPJ25_KP_COL6	(GPJ25 | FUNC(3))
+#define GPJ25_CF_DATA5	(GPJ25 | FUNC(4))
+#define GPJ25_MHL_D12	(GPJ25 | FUNC(5))
+#define GPJ26		(PIN(20,6) | PUD)
+#define GPJ26_GPIO	(GPJ26 | FUNC(0))
+#define GPJ26_MSM_DATA6	(GPJ26 | FUNC(2))
+#define GPJ26_KP_COL7	(GPJ26 | FUNC(3))
+#define GPJ26_CF_DATA6	(GPJ26 | FUNC(4))
+#define GPJ26_MHL_D13	(GPJ26 | FUNC(5))
+#define GPJ27		(PIN(20,7) | PUD)
+#define GPJ27_GPIO	(GPJ27 | FUNC(0))
+#define GPJ27_MSM_DATA7	(GPJ27 | FUNC(2))
+#define GPJ27_KP_ROW0	(GPJ27 | FUNC(3))
+#define GPJ27_CF_DATA7	(GPJ27 | FUNC(4))
+#define GPJ27_MHL_D14	(GPJ27 | FUNC(5))
+
+/*
+ * Group J3: GPIO 0...7
+ */
+#define GPJ30			(PIN(21,0) | PUD)
+#define GPJ30_GPIO		(GPJ30 | FUNC(0))
+#define GPJ30_MSM_DATA8		(GPJ30 | FUNC(2))
+#define GPJ30_KP_ROW1		(GPJ30 | FUNC(3))
+#define GPJ30_CF_DATA8		(GPJ30 | FUNC(4))
+#define GPJ30_MHL_D15		(GPJ30 | FUNC(5))
+#define GPJ31			(PIN(21,1) | PUD)
+#define GPJ31_GPIO		(GPJ31 | FUNC(0))
+#define GPJ31_MSM_DATA9		(GPJ31 | FUNC(2))
+#define GPJ31_KP_ROW2		(GPJ31 | FUNC(3))
+#define GPJ31_CF_DATA9		(GPJ31 | FUNC(4))
+#define GPJ31_MHL_D16		(GPJ31 | FUNC(5))
+#define GPJ32			(PIN(21,2) | PUD)
+#define GPJ32_GPIO		(GPJ32 | FUNC(0))
+#define GPJ32_MSM_DATA10	(GPJ32 | FUNC(2))
+#define GPJ32_KP_ROW3		(GPJ32 | FUNC(3))
+#define GPJ32_CF_DATA10		(GPJ32 | FUNC(4))
+#define GPJ32_MHL_D17		(GPJ32 | FUNC(5))
+#define GPJ33			(PIN(21,3) | PUD)
+#define GPJ33_GPIO		(GPJ33 | FUNC(0))
+#define GPJ33_MSM_DATA11	(GPJ33 | FUNC(2))
+#define GPJ33_KP_ROW4		(GPJ33 | FUNC(3))
+#define GPJ33_CF_DATA11		(GPJ33 | FUNC(4))
+#define GPJ33_MHL_D18		(GPJ33 | FUNC(5))
+#define GPJ34			(PIN(21,4) | PUD)
+#define GPJ34_GPIO		(GPJ34 | FUNC(0))
+#define GPJ34_MSM_DATA12	(GPJ34 | FUNC(2))
+#define GPJ34_KP_ROW5		(GPJ34 | FUNC(3))
+#define GPJ34_CF_DATA12		(GPJ34 | FUNC(4))
+#define GPJ34_MHL_D19		(GPJ34 | FUNC(5))
+#define GPJ35			(PIN(21,5) | PUD)
+#define GPJ35_GPIO		(GPJ35 | FUNC(0))
+#define GPJ35_MSM_DATA13	(GPJ35 | FUNC(2))
+#define GPJ35_KP_ROW6		(GPJ35 | FUNC(3))
+#define GPJ35_CF_DATA13		(GPJ35 | FUNC(4))
+#define GPJ35_MHL_D20		(GPJ35 | FUNC(5))
+#define GPJ36			(PIN(21,6) | PUD)
+#define GPJ36_GPIO		(GPJ36 | FUNC(0))
+#define GPJ36_MSM_DATA14	(GPJ36 | FUNC(2))
+#define GPJ36_KP_ROW7		(GPJ36 | FUNC(3))
+#define GPJ36_CF_DATA14		(GPJ36 | FUNC(4))
+#define GPJ36_MHL_D21		(GPJ36 | FUNC(5))
+#define GPJ37			(PIN(21,7) | PUD)
+#define GPJ37_GPIO		(GPJ37 | FUNC(0))
+#define GPJ37_MSM_DATA15	(GPJ37 | FUNC(2))
+#define GPJ37_KP_ROW8		(GPJ37 | FUNC(3))
+#define GPJ37_CF_DATA15		(GPJ37 | FUNC(4))
+#define GPJ37_MHL_D22		(GPJ37 | FUNC(5))
+
+/*
+ * Group J4: GPIO 0...4
+ */
+#define GPJ40		(PIN(22,0) | PUD)
+#define GPJ40_GPIO	(GPJ40 | FUNC(0))
+#define GPJ40_MSM_NCS	(GPJ40 | FUNC(2))
+#define GPJ40_KP_ROW9	(GPJ40 | FUNC(3))
+#define GPJ40_CF_NCS0	(GPJ40 | FUNC(4))
+#define GPJ40_MHL_D23	(GPJ40 | FUNC(5))
+#define GPJ41		(PIN(22,1) | PUD)
+#define GPJ41_GPIO	(GPJ41 | FUNC(0))
+#define GPJ41_MSM_NWE	(GPJ41 | FUNC(2))
+#define GPJ41_KP_ROW10	(GPJ41 | FUNC(3))
+#define GPJ41_CF_NCS1	(GPJ41 | FUNC(4))
+#define GPJ41_MHL_IDCK	(GPJ41 | FUNC(5))
+#define GPJ42		(PIN(22,2) | PUD)
+#define GPJ42_GPIO	(GPJ42 | FUNC(0))
+#define GPJ42_MSM_NR	(GPJ42 | FUNC(2))
+#define GPJ42_KP_ROW11	(GPJ42 | FUNC(3))
+#define GPJ42_CF_IORN	(GPJ42 | FUNC(4))
+#define GPJ42_MHL_IDCK	(GPJ42 | FUNC(5))
+#define GPJ43		(PIN(22,3) | PUD)
+#define GPJ43_GPIO	(GPJ43 | FUNC(0))
+#define GPJ43_MSM_NIRQ	(GPJ43 | FUNC(2))
+#define GPJ43_KP_ROW12	(GPJ43 | FUNC(3))
+#define GPJ43_CF_IOWN	(GPJ43 | FUNC(4))
+#define GPJ43_MHL_VSYNC	(GPJ43 | FUNC(5))
+#define GPJ44		(PIN(22,4) | PUD)
+#define GPJ44_GPIO	(GPJ44 | FUNC(0))
+#define GPJ44_MSM_ADVN	(GPJ44 | FUNC(2))
+#define GPJ44_KP_ROW13	(GPJ44 | FUNC(3))
+#define GPJ44_SROM_ADDR_16to226	(GPJ44 | FUNC(4))
+#define GPJ44_MHL_DE	(GPJ44 | FUNC(5))
+
+#endif /* __MACH_IOMUX_S5PCXX_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-clocks.h b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
index f4ca8fa..8f9d27b 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-clocks.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
@@ -25,5 +25,8 @@
 #ifdef CONFIG_ARCH_S3C24xx
 # include <mach/clocks-s3c24x0.h>
 #endif
+#ifdef CONFIG_ARCH_S5PCxx
+# include <mach/clocks-s5pcxx.h>
+#endif
 
 #endif /* __MACH_S3C_CLOCKS_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index b1305da..a4d9505 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -22,3 +22,6 @@
 #ifdef CONFIG_ARCH_S3C24xx
 # include <mach/iomap-s3c24x0.h>
 #endif
+#ifdef CONFIG_ARCH_S5PCxx
+# include <mach/iomap-s5pcxx.h>
+#endif
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
