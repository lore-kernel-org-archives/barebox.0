Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3rx3-0003kD-CK
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:00:17 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 16:59:54 +0200
Message-Id: <1286463597-16948-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286463597-16948-1-git-send-email-jbe@pengutronix.de>
References: <1286463597-16948-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/4] Add the basic files for the i.MX23/i.MX28 familiy of CPUs
To: barebox@lists.infradead.org

These CPUs are called "i.MX", but they are of type STM378x from SigmaTel. They
do not share any devices with the other i.MX CPUs, so we need a separate
architecute directory to handle them without an ifdef hell in the native i.MX
files.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig                             |    5 +
 arch/arm/mach-stm/Kconfig                    |   32 ++
 arch/arm/mach-stm/Makefile                   |    2 +
 arch/arm/mach-stm/clocksource-imx23.c        |   82 +++++
 arch/arm/mach-stm/imx23.c                    |   35 +++
 arch/arm/mach-stm/include/mach/clock-imx23.h |   34 ++
 arch/arm/mach-stm/include/mach/generic.h     |   24 ++
 arch/arm/mach-stm/include/mach/gpio.h        |   29 ++
 arch/arm/mach-stm/include/mach/imx-regs.h    |   27 ++
 arch/arm/mach-stm/include/mach/imx23-regs.h  |   41 +++
 arch/arm/mach-stm/include/mach/iomux-imx23.h |  424 ++++++++++++++++++++++++++
 arch/arm/mach-stm/iomux-imx23.c              |  117 +++++++
 arch/arm/mach-stm/reset-imx23.c              |   61 ++++
 arch/arm/mach-stm/speed-imx23.c              |  278 +++++++++++++++++
 14 files changed, 1191 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-stm/Kconfig
 create mode 100644 arch/arm/mach-stm/Makefile
 create mode 100644 arch/arm/mach-stm/clocksource-imx23.c
 create mode 100644 arch/arm/mach-stm/imx23.c
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx23.h
 create mode 100644 arch/arm/mach-stm/include/mach/generic.h
 create mode 100644 arch/arm/mach-stm/include/mach/gpio.h
 create mode 100644 arch/arm/mach-stm/include/mach/imx-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/imx23-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/iomux-imx23.h
 create mode 100644 arch/arm/mach-stm/iomux-imx23.c
 create mode 100644 arch/arm/mach-stm/reset-imx23.c
 create mode 100644 arch/arm/mach-stm/speed-imx23.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fa37036..bfee8cf 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -39,6 +39,10 @@ config ARCH_IMX
 	bool "Freescale iMX-based"
 	select GENERIC_GPIO
 
+config ARCH_STM
+	bool "SigmaTel/FSL iMX-based"
+	select GENERIC_GPIO
+
 config ARCH_NETX
 	bool "Hilscher NetX based"
 	select CPU_ARM926T
@@ -62,6 +66,7 @@ source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
+source arch/arm/mach-stm/Kconfig
 source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
new file mode 100644
index 0000000..9858d3a
--- /dev/null
+++ b/arch/arm/mach-stm/Kconfig
@@ -0,0 +1,32 @@
+if ARCH_STM
+
+config ARCH_TEXT_BASE
+	hex
+
+config BOARDINFO
+
+comment "SigmaTel/Freescale i.MX System-on-Chip"
+
+choice
+	prompt "Freescale i.MX Processor"
+
+config ARCH_IMX23
+	bool "i.MX23"
+	select CPU_ARM926T
+
+endchoice
+
+if ARCH_IMX23
+
+choice
+	prompt "i.MX23 Board Type"
+
+endchoice
+
+endif
+
+menu "Board specific settings       "
+
+endmenu
+
+endif
diff --git a/arch/arm/mach-stm/Makefile b/arch/arm/mach-stm/Makefile
new file mode 100644
index 0000000..59d70b6
--- /dev/null
+++ b/arch/arm/mach-stm/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o imx23.o iomux-imx23.o clocksource-imx23.o reset-imx23.o
+
diff --git a/arch/arm/mach-stm/clocksource-imx23.c b/arch/arm/mach-stm/clocksource-imx23.c
new file mode 100644
index 0000000..b9782ee
--- /dev/null
+++ b/arch/arm/mach-stm/clocksource-imx23.c
@@ -0,0 +1,82 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <notifier.h>
+#include <mach/imx-regs.h>
+#include <mach/clock-imx23.h>
+#include <asm/io.h>
+
+#define TIMROTCTRL 0x00
+#define TIMCTRL1 0x40
+#define TIMCTRL1_SET 0x44
+#define TIMCTRL1_CLR 0x48
+#define TIMCTRL1_TOG 0x4c
+# define TIMCTRL_RELOAD (1 << 6)
+# define TIMCTRL_UPDATE (1 << 7)
+# define TIMCTRL_PRESCALE(x) ((x & 0x3) << 4)
+# define TIMCTRL_SELECT(x) (x & 0xf)
+#define TIMCOUNT1 0x50
+
+static const unsigned long timer_base = IMX_TIM1_BASE;
+
+#define CLOCK_TICK_RATE (32000)
+
+static uint64_t imx23_clocksource_read(void)
+{
+	/* only the upper bits are the valid */
+	return ~(readl(timer_base + TIMCOUNT1) >> 16);
+}
+
+static struct clocksource cs = {
+	.read	= imx23_clocksource_read,
+	.mask	= 0x0000ffff,
+	.shift	= 10,
+};
+
+static int imx23_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
+{
+	cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/, cs.shift);
+	return 0;
+}
+
+static struct notifier_block imx23_clock_notifier = {
+	.notifier_call = imx23_clocksource_clock_change,
+};
+
+static int clocksource_init(void)
+{
+	/* enable the whole timer block */
+	writel(0x3e000000, timer_base + TIMROTCTRL);
+	/* setup general purpose timer 1 */
+	writel(0x00000000, timer_base + TIMCTRL1);
+	writel(TIMCTRL_UPDATE, timer_base + TIMCTRL1);
+	writel(0x0000ffff, timer_base + TIMCOUNT1);
+
+	writel(TIMCTRL_UPDATE | TIMCTRL_RELOAD | TIMCTRL_PRESCALE(0) | TIMCTRL_SELECT(8), timer_base + TIMCTRL1);
+	cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/, cs.shift);
+	init_clock(&cs);
+
+	clock_register_client(&imx23_clock_notifier);
+	return 0;
+}
+
+core_initcall(clocksource_init);
diff --git a/arch/arm/mach-stm/imx23.c b/arch/arm/mach-stm/imx23.c
new file mode 100644
index 0000000..14a4249
--- /dev/null
+++ b/arch/arm/mach-stm/imx23.c
@@ -0,0 +1,35 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#include <common.h>
+#include <command.h>
+
+extern void imx_dump_clocks(void);
+
+static int do_clocks(struct command *cmdtp, int argc, char *argv[])
+{
+	imx_dump_clocks();
+
+	return 0;
+}
+
+BAREBOX_CMD_START(dump_clocks)
+	.cmd		= do_clocks,
+	.usage		= "show clock frequencies",
+BAREBOX_CMD_END
diff --git a/arch/arm/mach-stm/include/mach/clock-imx23.h b/arch/arm/mach-stm/include/mach/clock-imx23.h
new file mode 100644
index 0000000..b308ff0
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/clock-imx23.h
@@ -0,0 +1,34 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#ifndef ASM_ARCH_CLOCK_IMX23_H
+#define ASM_ARCH_CLOCK_IMX23_H
+
+unsigned imx_get_mpllclk(void);
+unsigned imx_get_emiclk(void);
+unsigned imx_get_ioclk(void);
+unsigned imx_get_armclk(void);
+unsigned imx_get_hclk(void);
+unsigned imx_get_xclk(void);
+unsigned imx_get_sspclk(void);
+unsigned imx_set_sspclk(unsigned, int);
+unsigned imx_set_ioclk(unsigned);
+
+#endif /* ASM_ARCH_CLOCK_IMX23_H */
+
diff --git a/arch/arm/mach-stm/include/mach/generic.h b/arch/arm/mach-stm/include/mach/generic.h
new file mode 100644
index 0000000..3a552a8
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/generic.h
@@ -0,0 +1,24 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#ifdef CONFIG_ARCH_IMX23
+# define cpu_is_mx23()	(1)
+#else
+# define cpu_is_mx23()	(0)
+#endif
diff --git a/arch/arm/mach-stm/include/mach/gpio.h b/arch/arm/mach-stm/include/mach/gpio.h
new file mode 100644
index 0000000..fa8263c
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/gpio.h
@@ -0,0 +1,29 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#ifndef __ASM_MACH_GPIO_H
+#define __ASM_MACH_GPIO_H
+
+#if defined CONFIG_ARCH_IMX23
+# include <mach/iomux-imx23.h>
+#endif
+
+void imx_gpio_mode(unsigned);
+
+#endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-stm/include/mach/imx-regs.h b/arch/arm/mach-stm/include/mach/imx-regs.h
new file mode 100644
index 0000000..40dc742
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/imx-regs.h
@@ -0,0 +1,27 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#ifndef _IMX_REGS_H
+# define _IMX_REGS_H
+
+#if defined CONFIG_ARCH_IMX23
+# include <mach/imx23-regs.h>
+#endif
+
+#endif /* _IMX_REGS_H */
diff --git a/arch/arm/mach-stm/include/mach/imx23-regs.h b/arch/arm/mach-stm/include/mach/imx23-regs.h
new file mode 100644
index 0000000..89ca453
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/imx23-regs.h
@@ -0,0 +1,41 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+#ifndef __ASM_ARCH_MX23_REGS_H
+#define __ASM_ARCH_MX23_REGS_H
+
+/*
+ * sanity check
+ */
+#ifndef _IMX_REGS_H
+# error "Please do not include directly. Use imx-regs.h instead."
+#endif
+
+#define IMX_MEMORY_BASE		0x40000000
+#define IMX_UART1_BASE		0x8006c000
+#define IMX_UART2_BASE		0x8006e000
+#define IMX_DBGUART_BASE	0x80070000
+#define IMX_TIM1_BASE		0x80068000
+#define IMX_IOMUXC_BASE		0x80018000
+#define IMX_WDT_BASE		0x8005c000
+#define IMX_CCM_BASE		0x80040000
+#define IMX_I2C1_BASE		0x80058000
+#define IMX_SSP1_BASE		0x80010000
+#define IMX_SSP2_BASE		0x80034000
+
+#endif /* __ASM_ARCH_MX23_REGS_H */
diff --git a/arch/arm/mach-stm/include/mach/iomux-imx23.h b/arch/arm/mach-stm/include/mach/iomux-imx23.h
new file mode 100644
index 0000000..bebaf56
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/iomux-imx23.h
@@ -0,0 +1,424 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+/* 3322222222221111111111
+ * 10987654321098765432109876543210
+ *                              ^^^_ Register Number
+ *                          ^^^^____ Bit offset
+ *                        ^^________ Function
+ *                       ^__________ Drive strength feature present
+ *                      ^___________ Pull up / bit keeper present
+ *                    ^^____________ Drive strength setting
+ *                   ^______________ Pull up / bit keeper setting
+ *                  ^_______________ Voltage select present
+ *                 ^________________ Voltage selection
+ *             ^____________________ direction if enabled as GPIO (1 = output)
+ *            ^_____________________ initial output value if enabled as GPIO and configured as output
+ */
+#ifndef __ASM_MACH_IOMUX_H
+#define __ASM_MACH_IOMUX_H
+
+/* control pad's function */
+#define FBIT_SHIFT (3)
+#define PORTF(bank,bit)	(((bit) << FBIT_SHIFT) | (bank))
+#define GET_PORTF(x) ((x) & 0x7)
+#define GET_FBITPOS(x) (((x) >> FBIT_SHIFT) & 0xf)
+#define GET_GPIO_NO(x) ((GET_PORTF(x) << 4) + GET_FBITPOS(m))
+#define FUNC_SHIFT 7
+#define FUNC(x)	((x) << FUNC_SHIFT)
+#define GET_FUNC(x) (((x) >> FUNC_SHIFT) & 3)
+#define IS_GPIO (3)
+
+/* control pad's GPIO feature if enabled */
+#define GPIO_OUT (1 << 19)
+#define GPIO_VALUE(x) ((x) << 20)
+#define GPIO_IN (0 << 19)
+#define GET_GPIODIR(x) (!!((x) & (1 << 19)))
+#define GET_GPIOVAL(x) (!!((x) & (1 << 20)))
+
+/* control pad's drive strength */
+#define SE (1 << 9)
+#define SE_PRESENT(x) (!!((x) & SE))
+#define STRENGTH(x) ((x) << 11)
+#define S4MA 0	/* used to define a 4 mA drive strength */
+#define S8MA 1	/* used to define a 8 mA drive strength */
+#define S12MA 2	/* used to define a 12 mA drive strength */
+#define S16MA 3	/* used to define a 16 mA drive strength, not all pads can drive this current! */
+#define GET_STRENGTH(x) (((x) >> 11) & 0x3)
+
+/* control pad's pull up / bit keeper feature */
+#define PE (1 << 10)
+#define PE_PRESENT(x) (!!((x) & PE))
+#define PULLUP(x) ((x) << 13)
+#define GET_PULLUP(x) (!!((x) & (1 << 13)))
+
+/* control pad's voltage feature */
+#define VE (1 << 14)
+#define VE_PRESENT(x) (!!((x) & VE))
+#define VE_1_8V (0 << 15)
+#define VE_2_5V (0 << 15) /* don't ask my why, RTFM */
+#define GET_VOLTAGE(x) (!!((x) & (1 << 15)))
+
+/* Bank 0, pins 0 ... 15, GPIO pins 0 ... 15 */
+#define GPMI_D15		(FUNC(0) | PORTF(0, 15) | SE | PE)
+#define GPMI_D15_AUART2_TX	(FUNC(1) | PORTF(0, 15) | SE | PE)
+#define GPMI_D15_GPMI_CE3N	(FUNC(2) | PORTF(0, 15) | SE | PE)
+#define GPMI_D15_GPIO		(FUNC(3) | PORTF(0, 15) | SE | PE)
+#define GPMI_D14		(FUNC(0) | PORTF(0, 14) | SE)
+#define GPMI_D14_AUART2_RX	(FUNC(1) | PORTF(0, 14) | SE)
+#define GPMI_D14_GPIO		(FUNC(3) | PORTF(0, 14) | SE)
+#define GPMI_D13		(FUNC(0) | PORTF(0, 13) | SE)
+#define GPMI_D13_LCD_D23	(FUNC(1) | PORTF(0, 13) | SE)
+#define GPMI_D13_GPIO		(FUNC(3) | PORTF(0, 13) | SE)
+#define GPMI_D12		(FUNC(0) | PORTF(0, 12) | SE)
+#define GPMI_D12_LCD_D22	(FUNC(1) | PORTF(0, 12) | SE)
+#define GPMI_D12_GPIO		(FUNC(3) | PORTF(0, 12) | SE)
+#define GPMI_D11		(FUNC(0) | PORTF(0, 11) | SE | PE)
+#define GPMI_D11_LCD_D21	(FUNC(1) | PORTF(0, 11) | SE | PE)
+#define GPMI_D11_SSP1_D7	(FUNC(2) | PORTF(0, 11) | SE | PE)
+#define GPMI_D11_GPIO		(FUNC(3) | PORTF(0, 11) | SE | PE)
+#define GPMI_D10		(FUNC(0) | PORTF(0, 10) | SE | PE)
+#define GPMI_D10_LCD_D20	(FUNC(1) | PORTF(0, 10) | SE | PE)
+#define GPMI_D10_SSP1_D6	(FUNC(2) | PORTF(0, 10) | SE | PE)
+#define GPMI_D10_GPIO		(FUNC(3) | PORTF(0, 10) | SE | PE)
+#define GPMI_D09		(FUNC(0) | PORTF(0, 9) | SE | PE)
+#define GPMI_D09_LCD_D19	(FUNC(1) | PORTF(0, 9) | SE | PE)
+#define GPMI_D09_SSP1_D5	(FUNC(2) | PORTF(0, 9) | SE | PE)
+#define GPMI_D09_GPIO		(FUNC(3) | PORTF(0, 9) | SE | PE)
+#define GPMI_D08		(FUNC(0) | PORTF(0, 8) | SE | PE)
+#define GPMI_D08_LCD_D18	(FUNC(1) | PORTF(0, 8) | SE | PE)
+#define GPMI_D08_SSP1_D4	(FUNC(2) | PORTF(0, 8) | SE | PE)
+#define GPMI_D08_GPIO		(FUNC(3) | PORTF(0, 8) | SE | PE)
+#define GPMI_D07		(FUNC(0) | PORTF(0, 7) | SE | PE)
+#define GPMI_D07_LCD_D15	(FUNC(1) | PORTF(0, 7) | SE | PE)
+#define GPMI_D07_SSP2_D7	(FUNC(2) | PORTF(0, 7) | SE | PE)
+#define GPMI_D07_GPIO		(FUNC(3) | PORTF(0, 7) | SE | PE)
+#define GPMI_D06		(FUNC(0) | PORTF(0, 6) | SE | PE)
+#define GPMI_D06_LCD_D14	(FUNC(1) | PORTF(0, 6) | SE | PE)
+#define GPMI_D06_SSP2_D6	(FUNC(2) | PORTF(0, 6) | SE | PE)
+#define GPMI_D06_GPIO		(FUNC(3) | PORTF(0, 6) | SE | PE)
+#define GPMI_D05		(FUNC(0) | PORTF(0, 5) | SE | PE)
+#define GPMI_D05_LCD_D13	(FUNC(1) | PORTF(0, 5) | SE | PE)
+#define GPMI_D05_SSP2_D5	(FUNC(2) | PORTF(0, 5) | SE | PE)
+#define GPMI_D05_GPIO		(FUNC(3) | PORTF(0, 5) | SE | PE)
+#define GPMI_D04		(FUNC(0) | PORTF(0, 4) | SE | PE)
+#define GPMI_D04_LCD_D12	(FUNC(1) | PORTF(0, 4) | SE | PE)
+#define GPMI_D04_SSP2_D4	(FUNC(2) | PORTF(0, 4) | SE | PE)
+#define GPMI_D04_GPIO		(FUNC(3) | PORTF(0, 4) | SE | PE)
+#define GPMI_D03		(FUNC(0) | PORTF(0, 3) | SE | PE)
+#define GPMI_D03_LCD_D11	(FUNC(1) | PORTF(0, 3) | SE | PE)
+#define GPMI_D03_SSP2_D3	(FUNC(2) | PORTF(0, 3) | SE | PE)
+#define GPMI_D03_GPIO		(FUNC(3) | PORTF(0, 3) | SE | PE)
+#define GPMI_D02		(FUNC(0) | PORTF(0, 2) | SE | PE)
+#define GPMI_D02_LCD_D10	(FUNC(1) | PORTF(0, 2) | SE | PE)
+#define GPMI_D02_SSP2_D2	(FUNC(2) | PORTF(0, 2) | SE | PE)
+#define GPMI_D02_GPIO		(FUNC(3) | PORTF(0, 2) | SE | PE)
+#define GPMI_D01		(FUNC(0) | PORTF(0, 1) | SE | PE)
+#define GPMI_D01_LCD_D9		(FUNC(1) | PORTF(0, 1) | SE | PE)
+#define GPMI_D01_SSP2_D1	(FUNC(2) | PORTF(0, 1) | SE | PE)
+#define GPMI_D01_GPIO		(FUNC(3) | PORTF(0, 1) | SE | PE)
+#define GPMI_D00		(FUNC(0) | PORTF(0, 0) | SE | PE)
+#define GPMI_D00_LCD_D8		(FUNC(1) | PORTF(0, 0) | SE | PE)
+#define GPMI_D00_SSP2_D0	(FUNC(2) | PORTF(0, 0) | SE | PE)
+#define GPMI_D00_GPIO		(FUNC(3) | PORTF(0, 0) | SE | PE)
+
+/* Bank 0, pins 16 ... 31 GPIO pins 16 ... 31 */
+#define I2C_SDA			(FUNC(0) | PORTF(1, 15) | SE)
+#define I2C_SDA_GPMI_CE2N	(FUNC(1) | PORTF(1, 15) | SE)
+#define I2C_SDA_AUART1_RX	(FUNC(2) | PORTF(1, 15) | SE)
+#define I2C_SDA_GPIO		(FUNC(3) | PORTF(1, 15) | SE)
+#define I2C_CLK			(FUNC(0) | PORTF(1, 14) | SE | PE)
+#define I2C_CLK_GPMI_RDY2	(FUNC(1) | PORTF(1, 14) | SE | PE)
+#define I2C_CLK_AUART1_TX	(FUNC(2) | PORTF(1, 14) | SE | PE)
+#define I2C_CLK_GPIO		(FUNC(3) | PORTF(1, 14) | SE | PE)
+#define AUART1_TX		(FUNC(0) | PORTF(1, 13) | SE | PE)
+#define AUART1_TX_SSP1_D7	(FUNC(2) | PORTF(1, 13) | SE | PE)
+#define AUART1_TX_GPIO		(FUNC(3) | PORTF(1, 13) | SE | PE)
+#define AUART1_RX		(FUNC(0) | PORTF(1, 12) | SE | PE)
+#define AUART1_RX_SSP1_D6	(FUNC(2) | PORTF(1, 12) | SE | PE)
+#define AUART1_RX_GPIO		(FUNC(3) | PORTF(1, 12) | SE | PE)
+#define AUART1_RTS		(FUNC(0) | PORTF(1, 11) | SE | PE)
+#define AUART1_RTS_SSP1_D5	(FUNC(2) | PORTF(1, 11) | SE | PE)
+#define AUART1_RTS_GPIO		(FUNC(3) | PORTF(1, 11) | SE | PE)
+#define AUART1_CTS		(FUNC(0) | PORTF(1, 10) | SE | PE)
+#define AUART1_CTS_SSP1_D4	(FUNC(2) | PORTF(1, 10) | SE | PE)
+#define AUART1_CTS_GPIO		(FUNC(3) | PORTF(1, 10) | SE | PE)
+#define GPMI_RDN		(FUNC(0) | PORTF(1, 9) | SE)
+#define GPMI_RDN_GPIO		(FUNC(3) | PORTF(1, 9) | SE)
+#define GPMI_WRN		(FUNC(0) | PORTF(1, 8) | SE)
+#define GPMI_WRN_SSP2_SCK	(FUNC(2) | PORTF(1, 8) | SE)
+#define GPMI_WRN_GPIO		(FUNC(3) | PORTF(1, 8) | SE)
+#define GPMI_WPM		(FUNC(0) | PORTF(1, 7) | SE)
+#define GPMI_WPM_GPIO		(FUNC(3) | PORTF(1, 7) | SE)
+#define GPMI_RDY3		(FUNC(0) | PORTF(1, 6) | SE | PE)
+#define GPMI_RDY3_GPIO		(FUNC(3) | PORTF(1, 6) | SE | PE)
+#define GPMI_RDY2		(FUNC(0) | PORTF(1, 5) | SE | PE)
+#define GPMI_RDY2_GPIO		(FUNC(3) | PORTF(1, 5) | SE | PE)
+#define GPMI_RDY1		(FUNC(0) | PORTF(1, 4) | SE | PE)
+#define GPMI_RDY1_SSP2_CMD	(FUNC(2) | PORTF(1, 4) | SE | PE)
+#define GPMI_RDY1_GPIO		(FUNC(3) | PORTF(1, 4) | SE | PE)
+#define GPMI_RDY0		(FUNC(0) | PORTF(1, 3) | SE | PE)
+#define GPMI_RDY0_SSP2_DETECT	(FUNC(2) | PORTF(1, 3) | SE | PE)
+#define GPMI_RDY0_GPIO		(FUNC(3) | PORTF(1, 3) | SE | PE)
+#define GPMI_CE2N		(FUNC(0) | PORTF(1, 2) | SE | PE)
+#define GPMI_CE2N_GPIO		(FUNC(3) | PORTF(1, 2) | SE | PE)
+#define GPMI_ALE		(FUNC(0) | PORTF(1, 1) | SE)
+#define GPMI_ALE_LCD_D17	(FUNC(1) | PORTF(1, 1) | SE)
+#define GPMI_ALE_GPIO		(FUNC(3) | PORTF(1, 1) | SE)
+#define GPMI_CLE		(FUNC(0) | PORTF(1, 0) | SE)
+#define GPMI_CLE_LCD_D16	(FUNC(1) | PORTF(1, 1) | SE)
+#define GPMI_CLE_GPIO		(FUNC(3) | PORTF(1, 0) | SE)
+
+/* Bank 1, pins 0 ... 15 GPIO pins 32 ... 47 */
+#define LCD_D15			(FUNC(0) | PORTF(2, 15) | SE)
+#define LCD_D15_ETM_DA7		(FUNC(1) | PORTF(2, 15) | SE)
+#define LCD_D15_SAIF1_SDATA1	(FUNC(2) | PORTF(2, 15) | SE)
+#define LCD_D15_GPIO		(FUNC(3) | PORTF(2, 15) | SE)
+#define LCD_D14			(FUNC(0) | PORTF(2, 14) | SE)
+#define LCD_D14_ETM_DA6		(FUNC(1) | PORTF(2, 14) | SE)
+#define LCD_D14_SAIF1_SDATA2	(FUNC(2) | PORTF(2, 14) | SE)
+#define LCD_D14_GPIO		(FUNC(3) | PORTF(2, 14) | SE)
+#define LCD_D13			(FUNC(0) | PORTF(2, 13) | SE)
+#define LCD_D13_ETM_DA5		(FUNC(1) | PORTF(2, 13) | SE)
+#define LCD_D13_SAIF2_SDATA2	(FUNC(2) | PORTF(2, 13) | SE)
+#define LCD_D13_GPIO		(FUNC(3) | PORTF(2, 13) | SE)
+#define LCD_D12			(FUNC(0) | PORTF(2, 12) | SE)
+#define LCD_D12_ETM_DA4		(FUNC(1) | PORTF(2, 12) | SE)
+#define LCD_D12_SAIF2_SDATA1	(FUNC(2) | PORTF(2, 12) | SE)
+#define LCD_D12_GPIO		(FUNC(3) | PORTF(2, 12) | SE)
+#define LCD_D11			(FUNC(0) | PORTF(2, 11) | SE)
+#define LCD_D11_ETM_DA3		(FUNC(1) | PORTF(2, 11) | SE)
+#define LCD_D11_SAIF_LRCLK	(FUNC(2) | PORTF(2, 11) | SE)
+#define LCD_D11_GPIO		(FUNC(3) | PORTF(2, 11) | SE)
+#define LCD_D10			(FUNC(0) | PORTF(2, 10) | SE)
+#define LCD_D10_ETM_DA2		(FUNC(1) | PORTF(2, 10) | SE)
+#define LCD_D10_SAIF_BITCLK	(FUNC(2) | PORTF(2, 10) | SE)
+#define LCD_D10_GPIO		(FUNC(3) | PORTF(2, 10) | SE)
+#define LCD_D9			(FUNC(0) | PORTF(2, 9) | SE)
+#define LCD_D9_ETM_DA1		(FUNC(1) | PORTF(2, 9) | SE)
+#define LCD_D9_SAIF1_SDATA0	(FUNC(2) | PORTF(2, 9) | SE)
+#define LCD_D9_GPIO		(FUNC(3) | PORTF(2, 9) | SE)
+#define LCD_D8			(FUNC(0) | PORTF(2, 8) | SE)
+#define LCD_D8_ETM_DA0		(FUNC(1) | PORTF(2, 8) | SE)
+#define LCD_D8_SAIF2_SDATA0	(FUNC(2) | PORTF(2, 8) | SE)
+#define LCD_D8_GPIO		(FUNC(3) | PORTF(2, 8) | SE)
+#define LCD_D7			(FUNC(0) | PORTF(2, 7) | SE)
+#define LCD_D7_ETM_DA15		(FUNC(1) | PORTF(2, 7) | SE)
+#define LCD_D7_GPIO		(FUNC(3) | PORTF(2, 7) | SE)
+#define LCD_D6			(FUNC(0) | PORTF(2, 6) | SE)
+#define LCD_D6_ETM_DA14		(FUNC(1) | PORTF(2, 6) | SE)
+#define LCD_D6_GPIO		(FUNC(3) | PORTF(2, 6) | SE)
+#define LCD_D5			(FUNC(0) | PORTF(2, 5) | SE)
+#define LCD_D5_ETM_DA13		(FUNC(1) | PORTF(2, 5) | SE)
+#define LCD_D5_GPIO		(FUNC(3) | PORTF(2, 5) | SE)
+#define LCD_D4			(FUNC(0) | PORTF(2, 4) | SE)
+#define LCD_D4_ETM_DA12		(FUNC(1) | PORTF(2, 4) | SE)
+#define LCD_D4_GPIO		(FUNC(3) | PORTF(2, 4) | SE)
+#define LCD_D3			(FUNC(0) | PORTF(2, 3) | SE)
+#define LCD_D3_ETM_DA11		(FUNC(1) | PORTF(2, 3) | SE)
+#define LCD_D3_GPIO		(FUNC(3) | PORTF(2, 3) | SE)
+#define LCD_D2			(FUNC(0) | PORTF(2, 2) | SE)
+#define LCD_D2_ETM_DA10		(FUNC(1) | PORTF(2, 2) | SE)
+#define LCD_D2_GPIO		(FUNC(3) | PORTF(2, 2) | SE)
+#define LCD_D1			(FUNC(0) | PORTF(2, 1) | SE)
+#define LCD_D1_ETM_DA9		(FUNC(1) | PORTF(2, 1) | SE)
+#define LCD_D1_GPIO		(FUNC(3) | PORTF(2, 1) | SE)
+#define LCD_D0			(FUNC(0) | PORTF(2, 0) | SE)
+#define LCD_D0_ETM_DA8		(FUNC(1) | PORTF(2, 0) | SE)
+#define LCD_D0_GPIO		(FUNC(3) | PORTF(2, 0) | SE)
+
+/* Bank 1, pins 16 ... 30 GPIO pins 48 ... 63 */
+#define PWM4			(FUNC(0) | PORTF(3, 14) | SE)
+#define PWM4_ETM_CLK		(FUNC(1) | PORTF(3, 14) | SE)
+#define PWM4_AUART1_RTS		(FUNC(2) | PORTF(3, 14) | SE)
+#define PWM4_GPIO		(FUNC(3) | PORTF(3, 14) | SE)
+#define PWM3			(FUNC(0) | PORTF(3, 13) | SE)
+#define PWM3_ETM_TCTL		(FUNC(1) | PORTF(3, 13) | SE)
+#define PWM3_AUART1_CTS		(FUNC(2) | PORTF(3, 13) | SE)
+#define PWM3_GPIO		(FUNC(3) | PORTF(3, 13) | SE)
+#define PWM2			(FUNC(0) | PORTF(3, 12) | SE | PE)
+#define PWM2_GPMI_READY3	(FUNC(1) | PORTF(3, 12) | SE | PE)
+#define PWM2_GPIO		(FUNC(3) | PORTF(3, 12) | SE | PE)
+#define PWM1			(FUNC(0) | PORTF(3, 11) | SE)
+#define PWM1_TIMROT2		(FUNC(1) | PORTF(3, 11) | SE)
+#define PWM1_DUART_TX		(FUNC(2) | PORTF(3, 11) | SE)
+#define PWM1_GPIO		(FUNC(3) | PORTF(3, 11) | SE)
+#define PWM0			(FUNC(0) | PORTF(3, 10) | SE)
+#define PWM0_TIMROT1		(FUNC(1) | PORTF(3, 10) | SE)
+#define PWM0_DUART_RX		(FUNC(2) | PORTF(3, 10) | SE)
+#define PWM0_GPIO		(FUNC(3) | PORTF(3, 10) | SE)
+#define LCD_VSYNC		(FUNC(0) | PORTF(3, 9) | SE)
+#define LCD_VSYNC_LCD_BUSY	(FUNC(1) | PORTF(3, 9) | SE)
+#define LCD_VSYNC_GPIO		(FUNC(3) | PORTF(3, 9) | SE)
+#define LCD_HSYNC		(FUNC(0) | PORTF(3, 8) | SE)
+#define LCD_HSYNC_I2C_SD	(FUNC(1) | PORTF(3, 8) | SE)
+#define LCD_HSYNC_GPIO		(FUNC(3) | PORTF(3, 8) | SE)
+#define LCD_ENABE		(FUNC(0) | PORTF(3, 7) | SE)
+#define LCD_ENABE_I2C_CLK	(FUNC(1) | PORTF(3, 7) | SE)
+#define LCD_ENABE_GPIO		(FUNC(3) | PORTF(3, 7) | SE)
+#define LCD_DOTCLOCK		(FUNC(0) | PORTF(3, 6) | SE | PE)
+#define LCD_DOTCLOCK_GPMI_READY3 (FUNC(1) | PORTF(3, 6) | SE | PE)
+#define LCD_DOTCLOCK_GPIO	(FUNC(3) | PORTF(3, 6) | SE | PE)
+#define LCD_CS			(FUNC(0) | PORTF(3, 5) | SE)
+#define LCD_CS_GPIO		(FUNC(3) | PORTF(3, 5) | SE)
+#define LCD_WR			(FUNC(0) | PORTF(3, 4) | SE)
+#define LCD_WR_GPIO		(FUNC(3) | PORTF(3, 4) | SE)
+#define LCD_RS			(FUNC(0) | PORTF(3, 3) | SE)
+#define LCD_RS_ETM_TCLK		(FUNC(1) | PORTF(3, 3) | SE)
+#define LCD_RS_GPIO		(FUNC(3) | PORTF(3, 3) | SE)
+#define LCD_RESET		(FUNC(0) | PORTF(3, 2) | SE | PE)
+#define LCD_RESET_ETM_TCTL	(FUNC(1) | PORTF(3, 2) | SE | PE)
+#define LCD_RESET_GPMI_CE3N	(FUNC(2) | PORTF(3, 2) | SE | PE)
+#define LCD_RESET_GPIO		(FUNC(3) | PORTF(3, 2) | SE | PE)
+#define LCD_D17			(FUNC(0) | PORTF(3, 1) | SE)
+#define LCD_D17_GPIO		(FUNC(3) | PORTF(3, 1) | SE)
+#define LCD_D16			(FUNC(0) | PORTF(3, 0) | SE)
+#define LCD_D16_SAIF_ALT_BITCLK	(FUNC(2) | PORTF(3, 0) | SE)
+#define LCD_D16_GPIO		(FUNC(3) | PORTF(3, 0) | SE)
+
+/* Bank 2, pins 0 ... 15 GPIO pins 64 ... 79 */
+#define EMI_A6			(FUNC(0) | PORTF(4, 15) | SE | VE)
+#define EMI_A6_GPIO		(FUNC(3) | PORTF(4, 15) | SE | VE)
+#define EMI_A5			(FUNC(0) | PORTF(4, 14) | SE | VE)
+#define EMI_A5_GPIO		(FUNC(3) | PORTF(4, 14) | SE | VE)
+#define EMI_A4			(FUNC(0) | PORTF(4, 13) | SE | VE)
+#define EMI_A4_GPIO		(FUNC(3) | PORTF(4, 13) | SE | VE)
+#define EMI_A3			(FUNC(0) | PORTF(4, 12) | SE | VE)
+#define EMI_A3_GPIO		(FUNC(3) | PORTF(4, 12) | SE | VE)
+#define EMI_A2			(FUNC(0) | PORTF(4, 11) | SE | VE)
+#define EMI_A2_GPIO		(FUNC(3) | PORTF(4, 11) | SE | VE)
+#define EMI_A1			(FUNC(0) | PORTF(4, 10) | SE | VE)
+#define EMI_A1_GPIO		(FUNC(3) | PORTF(4, 10) | SE | VE)
+#define EMI_A0			(FUNC(0) | PORTF(4, 9) | SE | VE)
+#define EMI_A0_GPIO		(FUNC(3) | PORTF(4, 9) | SE | VE)
+#define ROTARYB			(FUNC(0) | PORTF(4, 8) | SE | PE)
+#define ROTARYB_AUART2_CTS	(FUNC(1) | PORTF(4, 8) | SE | PE)
+#define ROTARYB_GPMI_CE3N	(FUNC(2) | PORTF(4, 8) | SE | PE)
+#define ROTARYB_GPIO		(FUNC(3) | PORTF(4, 8) | SE | PE)
+#define ROTARYA			(FUNC(0) | PORTF(4, 7) | SE)
+#define ROTARYA_AUART2_RTS	(FUNC(1) | PORTF(4, 7) | SE)
+#define ROTARYA_SPDIF		(FUNC(2) | PORTF(4, 7) | SE)
+#define ROTARYA_GPIO		(FUNC(3) | PORTF(4, 7) | SE)
+#define SSP1_SCK		(FUNC(0) | PORTF(4, 6) | SE)
+#define SSP1_SCK_ALT_JTAG_TRST	(FUNC(2) | PORTF(4, 6) | SE)
+#define SSP1_SCK_GPIO		(FUNC(3) | PORTF(4, 6) | SE)
+#define SSP1_DATA3		(FUNC(0) | PORTF(4, 5) | SE | PE)
+#define SSP1_DATA3_ALT_JTAG_TMS	(FUNC(2) | PORTF(4, 5) | SE | PE)
+#define SSP1_DATA3_GPIO		(FUNC(3) | PORTF(4, 5) | SE | PE)
+#define SSP1_DATA2		(FUNC(0) | PORTF(4, 4) | SE | PE)
+#define SSP1_DATA2_I2C_SD	(FUNC(1) | PORTF(4, 4) | SE | PE)
+#define SSP1_DATA2_ALT_JTAG_RTCK (FUNC(2) | PORTF(4, 4) | SE | PE)
+#define SSP1_DATA2_GPIO		(FUNC(3) | PORTF(4, 4) | SE | PE)
+#define SSP1_DATA1		(FUNC(0) | PORTF(4, 3) | SE | PE)
+#define SSP1_DATA1_I2C_CLK	(FUNC(1) | PORTF(4, 3) | SE | PE)
+#define SSP1_DATA1_ALT_JTAG_TCK	(FUNC(2) | PORTF(4, 3) | SE | PE)
+#define SSP1_DATA1_GPIO		(FUNC(3) | PORTF(4, 3) | SE | PE)
+#define SSP1_DATA0		(FUNC(0) | PORTF(4, 2) | SE | PE)
+#define SSP1_DATA0_ALT_JTAG_TDI	(FUNC(2) | PORTF(4, 2) | SE | PE)
+#define SSP1_DATA0_GPIO		(FUNC(3) | PORTF(4, 2) | SE | PE)
+#define SSP1_DETECT		(FUNC(0) | PORTF(4, 1) | SE | PE)
+#define SSP1_DETECT_GPMI_CE3N	(FUNC(1) | PORTF(4, 1) | SE | PE)
+#define SSP1_DETECT_USB_ID	(FUNC(2) | PORTF(4, 1) | SE | PE)
+#define SSP1_DETECT_GPIO	(FUNC(3) | PORTF(4, 1) | SE | PE)
+#define SSP1_CMD		(FUNC(0) | PORTF(4, 0) | SE | PE)
+#define SSP1_CMD_JTAG_TDO	(FUNC(2) | PORTF(4, 0) | SE | PE)
+#define SSP1_CMD_GPIO		(FUNC(3) | PORTF(4, 0) | SE | PE)
+
+/* Bank 2, pins 16 ... 31 GPIO pins 80 ... 95 */
+#define EMI_WEN			(FUNC(0) | PORTF(5, 15) | SE | VE)
+#define EMI_WEN_GPIO		(FUNC(3) | PORTF(5, 15) | SE | VE)
+#define EMI_RASN		(FUNC(0) | PORTF(5, 14) | SE | VE)
+#define EMI_RASN_GPIO		(FUNC(3) | PORTF(5, 14) | SE | VE)
+#define EMI_CKE			(FUNC(0) | PORTF(5, 13) | SE | VE)
+#define EMI_CKE_GPIO		(FUNC(3) | PORTF(5, 13) | SE | VE)
+#define GPMI_CE0N		(FUNC(0) | PORTF(5, 12) | SE)
+#define GPMI_CE0N_GPIO		(FUNC(3) | PORTF(5, 12) | SE)
+#define GPMI_CE1N		(FUNC(0) | PORTF(5, 11) | SE | PE)
+#define GPMI_CE1N_GPIO		(FUNC(3) | PORTF(5, 11) | SE | PE)
+#define EMI_CE1N		(FUNC(0) | PORTF(5, 10) | SE | VE | PE)
+#define EMI_CE1N_GPIO		(FUNC(3) | PORTF(5, 10) | SE | VE | PE)
+#define EMI_CE0N		(FUNC(0) | PORTF(5, 9) | SE | VE)
+#define EMI_CE0N_GPIO		(FUNC(3) | PORTF(5, 9) | SE | VE)
+#define EMI_CASN		(FUNC(0) | PORTF(5, 8) | SE | VE)
+#define EMI_CASN_GPIO		(FUNC(3) | PORTF(5, 8) | SE | VE)
+#define EMI_BA1			(FUNC(0) | PORTF(5, 7) | SE | VE)
+#define EMI_BA1_GPIO		(FUNC(3) | PORTF(5, 7) | SE | VE)
+#define EMI_BA0			(FUNC(0) | PORTF(5, 6) | SE | VE)
+#define EMI_BA0_GPIO		(FUNC(3) | PORTF(5, 6) | SE | VE)
+#define EMI_A12			(FUNC(0) | PORTF(5, 5) | SE | VE)
+#define EMI_A12_GPIO		(FUNC(3) | PORTF(5, 5) | SE | VE)
+#define EMI_A11			(FUNC(0) | PORTF(5, 4) | SE | VE)
+#define EMI_A11_GPIO		(FUNC(3) | PORTF(5, 4) | SE | VE)
+#define EMI_A10			(FUNC(0) | PORTF(5, 3) | SE | VE)
+#define EMI_A10_GPIO		(FUNC(3) | PORTF(5, 3) | SE | VE)
+#define EMI_A9			(FUNC(0) | PORTF(5, 2) | SE | VE)
+#define EMI_A9_GPIO		(FUNC(3) | PORTF(5, 2) | SE | VE)
+#define EMI_A8			(FUNC(0) | PORTF(5, 1) | SE | VE)
+#define EMI_A8_GPIO		(FUNC(3) | PORTF(5, 1) | SE | VE)
+#define EMI_A7			(FUNC(0) | PORTF(5, 0) | SE | VE)
+#define EMI_A7_GPIO		(FUNC(3) | PORTF(5, 0) | SE | VE)
+
+/* Bank 3, pins 0 ... 15 GPIO pins 96 ... 111 */
+#define EMI_D15			(FUNC(0) | PORTF(6, 15) | SE | VE | PE)
+#define EMI_D15_DISABLED	(FUNC(3) | PORTF(6, 15) | SE | VE | PE)
+#define EMI_D14			(FUNC(0) | PORTF(6, 14) | SE | VE | PE)
+#define EMI_D14_DISABLED	(FUNC(3) | PORTF(6, 14) | SE | VE | PE)
+#define EMI_D13			(FUNC(0) | PORTF(6, 13) | SE | VE | PE)
+#define EMI_D13_DISABLED	(FUNC(3) | PORTF(6, 13) | SE | VE | PE)
+#define EMI_D12			(FUNC(0) | PORTF(6, 12) | SE | VE | PE)
+#define EMI_D12_DISABLED	(FUNC(3) | PORTF(6, 12) | SE | VE | PE)
+#define EMI_D11			(FUNC(0) | PORTF(6, 11) | SE | VE | PE)
+#define EMI_D11_DISABLED	(FUNC(3) | PORTF(6, 11) | SE | VE | PE)
+#define EMI_D10			(FUNC(0) | PORTF(6, 10) | SE | VE | PE)
+#define EMI_D10_DISABLED	(FUNC(3) | PORTF(6, 10) | SE | VE | PE)
+#define EMI_D9			(FUNC(0) | PORTF(6, 9) | SE | VE | PE)
+#define EMI_D9_DISABLED		(FUNC(3) | PORTF(6, 9) | SE | VE | PE)
+#define EMI_D8			(FUNC(0) | PORTF(6, 8) | SE | VE | PE)
+#define EMI_D8_DISABLED		(FUNC(3) | PORTF(6, 8) | SE | VE | PE)
+#define EMI_D7			(FUNC(0) | PORTF(6, 7) | SE | VE | PE)
+#define EMI_D7_DISABLED		(FUNC(3) | PORTF(6, 7) | SE | VE | PE)
+#define EMI_D6			(FUNC(0) | PORTF(6, 6) | SE | VE | PE)
+#define EMI_D6_DISABLED		(FUNC(3) | PORTF(6, 6) | SE | VE | PE)
+#define EMI_D5			(FUNC(0) | PORTF(6, 5) | SE | VE | PE)
+#define EMI_D5_DISABLED		(FUNC(3) | PORTF(6, 5) | SE | VE | PE)
+#define EMI_D4			(FUNC(0) | PORTF(6, 4) | SE | VE | PE)
+#define EMI_D4_DISABLED		(FUNC(3) | PORTF(6, 4) | SE | VE | PE)
+#define EMI_D3			(FUNC(0) | PORTF(6, 3) | SE | VE | PE)
+#define EMI_D3_DISABLED		(FUNC(3) | PORTF(6, 3) | SE | VE | PE)
+#define EMI_D2			(FUNC(0) | PORTF(6, 2) | SE | VE | PE)
+#define EMI_D2_DISABLED		(FUNC(3) | PORTF(6, 2) | SE | VE | PE)
+#define EMI_D1			(FUNC(0) | PORTF(6, 1) | SE | VE | PE)
+#define EMI_D1_DISABLED		(FUNC(3) | PORTF(6, 1) | SE | VE | PE)
+#define EMI_D0			(FUNC(0) | PORTF(6, 0) | SE | VE | PE)
+#define EMI_D0_DISABLED		(FUNC(3) | PORTF(6, 0) | SE | VE | PE)
+
+/* Bank 3, pins 16 ... 21 GPIO pins 112 ... 117 */
+#define EMI_CLKN		(FUNC(0) | PORTF(7, 5) | SE | VE)
+#define EMI_CLKN_DISABLED	(FUNC(3) | PORTF(7, 5) | SE | VE)
+#define EMI_CLK			(FUNC(0) | PORTF(7, 4) | SE | VE)
+#define EMI_CLK_DISABLED	(FUNC(3) | PORTF(7, 4) | SE | VE)
+#define EMI_DQS1		(FUNC(0) | PORTF(7, 3) | SE | VE)
+#define EMI_DQS1_DISABLED	(FUNC(3) | PORTF(7, 3) | SE | VE)
+#define EMI_DQS0		(FUNC(0) | PORTF(7, 2) | SE | VE)
+#define EMI_DQS0_DISABLED	(FUNC(3) | PORTF(7, 2) | SE | VE)
+#define EMI_DQM1		(FUNC(0) | PORTF(7, 1) | SE | VE | PE)
+#define EMI_DQM1_DISABLED	(FUNC(3) | PORTF(7, 1) | SE | VE | PE)
+#define EMI_DQM0		(FUNC(0) | PORTF(7, 0) | SE | VE | PE)
+#define EMI_DQM0_DISABLED	(FUNC(3) | PORTF(7, 0) | SE | VE | PE)
+
+#endif /* __ASM_MACH_IOMUX_H */
diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
new file mode 100644
index 0000000..b0f4046
--- /dev/null
+++ b/arch/arm/mach-stm/iomux-imx23.c
@@ -0,0 +1,117 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+
+#define HW_PINCTRL_CTRL 0x000
+#define HW_PINCTRL_MUXSEL0 0x100
+#define HW_PINCTRL_DRIVE0 0x200
+#define HW_PINCTRL_PULL0 0x400
+#define HW_PINCTRL_DOUT0 0x500
+#define HW_PINCTRL_DIN0 0x600
+#define HW_PINCTRL_DOE0 0x700
+
+static uint32_t calc_mux_reg(uint32_t no)
+{
+	/* each register controls 16 pads */
+	return ((no >> 4) << 4) + HW_PINCTRL_MUXSEL0;
+}
+
+static uint32_t calc_strength_reg(uint32_t no)
+{
+	/* each register controls 8 pads */
+	return  ((no >> 3) << 4) + HW_PINCTRL_DRIVE0;
+}
+
+static uint32_t calc_pullup_reg(uint32_t no)
+{
+	/* each register controls 32 pads */
+	return  ((no >> 5) << 4) + HW_PINCTRL_PULL0;
+}
+
+static uint32_t calc_output_enable_reg(uint32_t no)
+{
+	/* each register controls 32 pads */
+	return  ((no >> 5) << 4) + HW_PINCTRL_DOE0;
+}
+
+static uint32_t calc_output_reg(uint32_t no)
+{
+	/* each register controls 32 pads */
+	return  ((no >> 5) << 4) + HW_PINCTRL_DOUT0;
+}
+
+/**
+ * @param[in] m One of the defines from iomux-mx23.h to configure *one* pin
+ */
+void imx_gpio_mode(unsigned m)
+{
+	uint32_t reg_offset, gpio_pin, reg;
+
+	gpio_pin = GET_GPIO_NO(m);
+
+	/* configure the pad to its function (always) */
+	reg_offset = calc_mux_reg(gpio_pin);
+	reg = readl(IMX_IOMUXC_BASE + reg_offset) & ~(0x3 << ((gpio_pin % 16) << 1));
+	reg |= GET_FUNC(m) << ((gpio_pin % 16) << 1);
+	writel(reg, IMX_IOMUXC_BASE + reg_offset);
+
+	/* some pins are disabled when configured for GPIO */
+	if ((gpio_pin > 95) && (GET_FUNC(m) == IS_GPIO)) {
+		printf("Cannot configure pad %d to GPIO\n", gpio_pin);
+		return;
+	}
+
+	if (SE_PRESENT(m)) {
+		reg_offset = calc_strength_reg(gpio_pin);
+		reg = readl(IMX_IOMUXC_BASE + reg_offset) & ~(0x3 << ((gpio_pin % 8) << 2));
+		reg |= GET_STRENGTH(m) << ((gpio_pin % 8) << 2);
+		writel(reg, IMX_IOMUXC_BASE + reg_offset);
+	}
+
+	if (VE_PRESENT(m)) {
+		reg_offset = calc_strength_reg(gpio_pin);
+		if (GET_VOLTAGE(m) == 1)
+			writel(0x1 << (((gpio_pin % 8) << 2) + 2), IMX_IOMUXC_BASE + reg_offset + 4);
+		else
+			writel(0x1 << (((gpio_pin % 8) << 2) + 2), IMX_IOMUXC_BASE + reg_offset + 8);
+	}
+
+	if (PE_PRESENT(m)) {
+		reg_offset = calc_pullup_reg(gpio_pin);
+		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_PULLUP(m) == 1 ? 4 : 8));
+	}
+
+	if (GET_FUNC(m) == IS_GPIO) {
+		if (GET_GPIODIR(m) == 1) {
+			/* first set the output value */
+			reg_offset = calc_output_reg(gpio_pin);
+			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_GPIOVAL(m) == 1 ? 4 : 8));
+			/* then the direction */
+			reg_offset = calc_output_enable_reg(gpio_pin);
+			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + 4);
+		} else {
+			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + 8);
+		}
+	}
+}
diff --git a/arch/arm/mach-stm/reset-imx23.c b/arch/arm/mach-stm/reset-imx23.c
new file mode 100644
index 0000000..db0b3f2
--- /dev/null
+++ b/arch/arm/mach-stm/reset-imx23.c
@@ -0,0 +1,61 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <notifier.h>
+#include <mach/imx-regs.h>
+#include <asm/io.h>
+
+#define HW_RTC_CTRL     0x000
+# define BM_RTC_CTRL_WATCHDOGEN (1 << 4)
+#define HW_RTC_CTRL_SET 0x004
+#define HW_RTC_CTRL_CLR 0x008
+#define HW_RTC_CTRL_TOG 0x00C
+
+#define HW_RTC_WATCHDOG     0x050
+#define HW_RTC_WATCHDOG_SET 0x054
+#define HW_RTC_WATCHDOG_CLR 0x058
+#define HW_RTC_WATCHDOG_TOG 0x05C
+
+#define WDOG_COUNTER_RATE	1000 /* 1 kHz clock */
+
+#define HW_RTC_PERSISTENT1     0x070
+# define BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER 0x80000000
+#define HW_RTC_PERSISTENT1_SET 0x074
+#define HW_RTC_PERSISTENT1_CLR 0x078
+#define HW_RTC_PERSISTENT1_TOG 0x07C
+
+/*
+ * Reset the cpu by setting up the watchdog timer and let it time out
+ *
+ * TODO There is a much easier way to reset the CPU: Refer bit 2 in
+ *       the HW_CLKCTRL_RESET register, data sheet page 106/4-30
+ */
+void __noreturn reset_cpu (unsigned long ignored)
+{
+	writel(WDOG_COUNTER_RATE, IMX_WDT_BASE + HW_RTC_WATCHDOG);
+	writel(BM_RTC_CTRL_WATCHDOGEN, IMX_WDT_BASE + HW_RTC_CTRL_SET);
+	writel(BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER, IMX_WDT_BASE + HW_RTC_PERSISTENT1);
+
+	while (1)
+		;
+	/*NOTREACHED*/
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-stm/speed-imx23.c b/arch/arm/mach-stm/speed-imx23.c
new file mode 100644
index 0000000..f3d54e0
--- /dev/null
+++ b/arch/arm/mach-stm/speed-imx23.c
@@ -0,0 +1,278 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ *
+ * This code is based partially on code of:
+ *
+ * (c) 2008 Embedded Alley Solutions, Inc.
+ * (C) Copyright 2009-2010 Freescale Semiconductor, Inc.
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/generic.h>
+#include <mach/clock-imx23.h>
+
+/* Note: all clock frequencies are returned in kHz */
+
+#define HW_CLKCTRL_PLLCTRL0 0x000
+#define HW_CLKCTRL_PLLCTRL1 0x010
+#define HW_CLKCTRL_CPU 0x20
+# define GET_CPU_XTAL_DIV(x) (((x) >> 16) & 0x3ff)
+# define GET_CPU_PLL_DIV(x) ((x) & 0x3f)
+#define HW_CLKCTRL_HBUS 0x30
+#define HW_CLKCTRL_XBUS 0x40
+#define HW_CLKCTRL_XTAL 0x050
+#define HW_CLKCTRL_PIX 0x060
+/* note: no set/clear register! */
+#define HW_CLKCTRL_SSP 0x070
+/* note: no set/clear register! */
+# define CLKCTRL_SSP_CLKGATE (1 << 31)
+# define CLKCTRL_SSP_BUSY (1 << 29)
+# define CLKCTRL_SSP_DIV_MASK 0x1ff
+# define GET_SSP_DIV(x) ((x) & CLKCTRL_SSP_DIV_MASK)
+# define SET_SSP_DIV(x) ((x) & CLKCTRL_SSP_DIV_MASK)
+#define HW_CLKCTRL_GPMI 0x080
+/* note: no set/clear register! */
+#define HW_CLKCTRL_SPDIF 0x090
+/* note: no set/clear register! */
+#define HW_CLKCTRL_EMI	0xa0
+/* note: no set/clear register! */
+# define CLKCTRL_EMI_CLKGATE (1 << 31)
+# define GET_EMI_XTAL_DIV(x) (((x) >> 8) & 0xf)
+# define GET_EMI_PLL_DIV(x) ((x) & 0x3f)
+#define HW_CLKCTRL_SAIF 0x0c0
+#define HW_CLKCTRL_TV 0x0d0
+#define HW_CLKCTRL_ETM 0x0e0
+#define HW_CLKCTRL_FRAC 0xf0
+# define CLKCTRL_FRAC_CLKGATEIO (1 << 31)
+# define GET_IOFRAC(x) (((x) >> 24) & 0x3f)
+# define SET_IOFRAC(x) (((x) & 0x3f) << 24)
+# define CLKCTRL_FRAC_CLKGATEPIX (1 << 23)
+# define GET_PIXFRAC(x) (((x) >> 16) & 0x3f)
+# define CLKCTRL_FRAC_CLKGATEEMI (1 << 15)
+# define GET_EMIFRAC(x) (((x) >> 8) & 0x3f)
+# define CLKCTRL_FRAC_CLKGATECPU (1 << 7)
+# define GET_CPUFRAC(x) ((x) & 0x3f)
+#define HW_CLKCTRL_FRAC1 0x100
+#define HW_CLKCTRL_CLKSEQ 0x110
+# define CLKCTRL_CLKSEQ_BYPASS_ETM (1 << 8)
+# define CLKCTRL_CLKSEQ_BYPASS_CPU (1 << 7)
+# define CLKCTRL_CLKSEQ_BYPASS_EMI (1 << 6)
+# define CLKCTRL_CLKSEQ_BYPASS_SSP (1 << 5)
+# define CLKCTRL_CLKSEQ_BYPASS_GPMI (1 << 4)
+#define HW_CLKCTRL_RESET 0x120
+#define HW_CLKCTRL_STATUS 0x130
+#define HW_CLKCTRL_VERSION 0x140
+
+unsigned imx_get_mpllclk(void)
+{
+	/* the main PLL runs at 480 MHz */
+	return 480U * 1000U;
+}
+
+unsigned imx_get_xtalclk(void)
+{
+	/* the external reference runs at 24 MHz */
+	return 24U * 1000U;
+}
+
+/* used for the SDRAM controller */
+unsigned imx_get_emiclk(void)
+{
+	uint32_t reg;
+	unsigned rate;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_EMI) & CLKCTRL_EMI_CLKGATE)
+		return 0U;	/* clock is off */
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_EMI)
+		return imx_get_xtalclk() / GET_EMI_XTAL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI));
+
+	rate = imx_get_mpllclk();
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	if (!(reg & CLKCTRL_FRAC_CLKGATEEMI)) {
+		rate *= 18U;
+		rate /= GET_EMIFRAC(reg);
+	}
+
+	return rate / GET_EMI_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI));
+}
+
+/*
+ * Source of ssp, gpmi, ir
+ */
+unsigned imx_get_ioclk(void)
+{
+	uint32_t reg;
+	unsigned rate = imx_get_mpllclk();
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	if (reg & CLKCTRL_FRAC_CLKGATEIO)
+		return 0U;	/* clock is off */
+
+	rate *= 18U;
+	rate /= GET_IOFRAC(reg);
+	return rate;
+}
+
+/**
+ * Setup a new frequency to the IOCLK domain.
+ * @param nc New frequency in [kHz]
+ *
+ * The FRAC divider for the IOCLK must be between 18 (* 18/18) and 35 (* 18/35)
+ */
+unsigned imx_set_ioclk(unsigned nc)
+{
+	uint32_t reg;
+	unsigned div;
+
+	div = imx_get_mpllclk();
+	div *= 18U;
+	div += nc >> 1;
+	div /= nc;
+	if (div > 0x3f)
+		div = 0x3f;
+	/* mask the current settings */
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC) & ~(SET_IOFRAC(0x3f));
+	writel(reg | SET_IOFRAC(div), IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	/* enable the IO clock at its new frequency */
+	writel(CLKCTRL_FRAC_CLKGATEIO, IMX_CCM_BASE + HW_CLKCTRL_FRAC + 8);
+
+	return imx_get_ioclk();
+}
+
+/* this is CPU core clock */
+unsigned imx_get_armclk(void)
+{
+	uint32_t reg;
+	unsigned rate;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_CPU)
+		return imx_get_xtalclk() / GET_CPU_XTAL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU));
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	if (reg & CLKCTRL_FRAC_CLKGATECPU)
+		return 0U;	/* should not possible, shouldn't it? */
+
+	rate = imx_get_mpllclk();
+	rate *= 18U;
+	rate /= GET_CPUFRAC(reg);
+
+	return rate / GET_CPU_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU));
+}
+
+/* this is the AHB and APBH bus clock */
+unsigned imx_get_hclk(void)
+{
+	unsigned rate = imx_get_armclk();
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x20) {
+		rate *= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+		rate >>= 5U; /* / 32 */
+	} else
+		rate /= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+	return rate;
+}
+
+/*
+ * Source of UART, debug UART, audio, PWM, dri, timer, digctl
+ */
+unsigned imx_get_xclk(void)
+{
+	unsigned rate = imx_get_xtalclk();	/* runs from the 24 MHz crystal reference */
+
+	return rate / (readl(IMX_CCM_BASE + HW_CLKCTRL_XBUS) & 0x3ff);
+}
+
+unsigned imx_get_sspclk(void)
+{
+	unsigned rate;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_SSP) & CLKCTRL_SSP_CLKGATE)
+		return 0U;	/* clock is off */
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_SSP)
+		rate = imx_get_xtalclk();
+	else
+		rate = imx_get_ioclk();
+
+	return rate / GET_SSP_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_SSP));
+}
+
+/**
+ * @param nc New frequency in [kHz]
+ * @param high != 0 if ioclk should be the source
+ * @return The new possible frequency
+ */
+unsigned imx_set_sspclk(unsigned nc, int high)
+{
+	uint32_t reg;
+	unsigned ssp_div;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_SSP) & ~CLKCTRL_SSP_CLKGATE;
+	/* Datasheet says: Do not change the DIV setting if the clock is off */
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_SSP);
+	/* Wait while clock is gated */
+	while (readl(IMX_CCM_BASE + HW_CLKCTRL_SSP) & CLKCTRL_SSP_CLKGATE)
+		;
+
+	if (high)
+		ssp_div = imx_get_ioclk();
+	else
+		ssp_div = imx_get_xtalclk();
+
+	if (nc > ssp_div) {
+		printf("Cannot setup SSP unit clock to %u Hz, base clock is only %u Hz\n", nc, ssp_div);
+		ssp_div = 1U;
+	} else {
+		ssp_div += nc - 1U;
+		ssp_div /= nc;
+		if (ssp_div > CLKCTRL_SSP_DIV_MASK)
+			ssp_div = CLKCTRL_SSP_DIV_MASK;
+	}
+
+	/* Set new divider value */
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_SSP) & ~CLKCTRL_SSP_DIV_MASK;
+	writel(reg | SET_SSP_DIV(ssp_div), IMX_CCM_BASE + HW_CLKCTRL_SSP);
+
+	/* Wait until new divider value is set */
+	while (readl(IMX_CCM_BASE + HW_CLKCTRL_SSP) & CLKCTRL_SSP_BUSY)
+		;
+
+	if (high)
+		/* switch to ioclock */
+		writel(CLKCTRL_CLKSEQ_BYPASS_SSP, IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + 8);
+	else
+		/* switch to 24 MHz crystal */
+		writel(CLKCTRL_CLKSEQ_BYPASS_SSP, IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + 4);
+
+	return imx_get_sspclk();
+}
+
+void imx_dump_clocks(void)
+{
+	printf("mpll:    %10u kHz\n", imx_get_mpllclk());
+	printf("arm:     %10u kHz\n", imx_get_armclk());
+	printf("ioclk:   %10u kHz\n", imx_get_ioclk());
+	printf("emiclk:  %10u kHz\n", imx_get_emiclk());
+	printf("hclk:    %10u kHz\n", imx_get_hclk());
+	printf("xclk:    %10u kHz\n", imx_get_xclk());
+	printf("ssp:     %10u kHz\n", imx_get_sspclk());
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
