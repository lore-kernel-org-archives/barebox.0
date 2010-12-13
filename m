Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020G-Um
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:54:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qt-Vy
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Ig-RP
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:31 +0100
Message-Id: <1292237617-7064-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/14] STM378x: Add i.MX28 architecture
To: barebox@lists.infradead.org

The i.MX28 shares a lot of functionality with its predecessor, the
i.MX23 (formerly known as stm378x). This patch adds some files to support
both CPUs.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/Kconfig                    |    4 +
 arch/arm/mach-stm/Makefile                   |    5 +-
 arch/arm/mach-stm/clocksource-imx28.c        |   73 ++++
 arch/arm/mach-stm/imx.c                      |   35 ++
 arch/arm/mach-stm/imx23.c                    |   35 --
 arch/arm/mach-stm/include/mach/clock-imx28.h |   29 ++
 arch/arm/mach-stm/include/mach/clock.h       |    3 +
 arch/arm/mach-stm/include/mach/generic.h     |    6 +
 arch/arm/mach-stm/include/mach/gpio.h        |    3 +
 arch/arm/mach-stm/include/mach/imx-regs.h    |    9 +
 arch/arm/mach-stm/include/mach/imx28-regs.h  |   47 +++
 arch/arm/mach-stm/include/mach/iomux-imx28.h |  552 ++++++++++++++++++++++++++
 arch/arm/mach-stm/iomux-imx.c                |  136 +++++++
 arch/arm/mach-stm/iomux-imx23.c              |  119 ------
 arch/arm/mach-stm/reset-imx.c                |   61 +++
 arch/arm/mach-stm/reset-imx23.c              |   61 ---
 arch/arm/mach-stm/speed-imx28.c              |  392 ++++++++++++++++++
 17 files changed, 1353 insertions(+), 217 deletions(-)
 create mode 100644 arch/arm/mach-stm/clocksource-imx28.c
 create mode 100644 arch/arm/mach-stm/imx.c
 delete mode 100644 arch/arm/mach-stm/imx23.c
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx28.h
 create mode 100644 arch/arm/mach-stm/include/mach/imx28-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/iomux-imx28.h
 create mode 100644 arch/arm/mach-stm/iomux-imx.c
 delete mode 100644 arch/arm/mach-stm/iomux-imx23.c
 create mode 100644 arch/arm/mach-stm/reset-imx.c
 delete mode 100644 arch/arm/mach-stm/reset-imx23.c
 create mode 100644 arch/arm/mach-stm/speed-imx28.c

diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index 021919a..15765fd 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -18,6 +18,10 @@ config ARCH_IMX23
 	bool "i.MX23"
 	select CPU_ARM926T
 
+config ARCH_IMX28
+	bool "i.MX28"
+	select CPU_ARM926T
+
 endchoice
 
 if ARCH_IMX23
diff --git a/arch/arm/mach-stm/Makefile b/arch/arm/mach-stm/Makefile
index 59d70b6..3c7ce09 100644
--- a/arch/arm/mach-stm/Makefile
+++ b/arch/arm/mach-stm/Makefile
@@ -1,2 +1,3 @@
-obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o imx23.o iomux-imx23.o clocksource-imx23.o reset-imx23.o
-
+obj-y += imx.o iomux-imx.o reset-imx.o
+obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o
+obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
diff --git a/arch/arm/mach-stm/clocksource-imx28.c b/arch/arm/mach-stm/clocksource-imx28.c
new file mode 100644
index 0000000..15ae951
--- /dev/null
+++ b/arch/arm/mach-stm/clocksource-imx28.c
@@ -0,0 +1,73 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix <kernel@pengutronix.de>
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
+#include <init.h>
+#include <clock.h>
+#include <notifier.h>
+#include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <asm/io.h>
+
+#define TIMROTCTRL 0x00
+# define TIMROTCTRL_SFTRST
+# define TIMROTCTRL_CLKGATE
+# define TIMROTCTRL_DIVIDER(x) ((x & 0x3f) << 16)
+
+#define TIMCTRL1 0x60
+#define TIMCTRL1_SET 0x64
+#define TIMCTRL1_CLR 0x68
+#define TIMCTRL1_TOG 0x6c
+# define TIMCTRL_RELOAD (1 << 6)
+# define TIMCTRL_UPDATE (1 << 7)
+# define TIMCTRL_PRESCALE(x) ((x & 0x3) << 4)
+# define TIMCTRL_SELECT(x) (x & 0xf)
+#define TIMCOUNT1 0x70
+#define TIMFIX1 0x80
+
+static const void __iomem * timer_base = (void *)IMX_TIM1_BASE;
+
+/* we are using the 32 kHz reference */
+#define CLOCK_TICK_RATE 32000
+
+static uint64_t imx28_clocksource_read(void)
+{
+	return ~(readl(timer_base + TIMCOUNT1));
+}
+
+static struct clocksource imx28_cs = {
+	.read	= imx28_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift	= 17,
+};
+
+static int imx28_clocksource_init(void)
+{
+	/* enable the whole timer block */
+	writel(0x00000000, timer_base + TIMROTCTRL);
+	/* setup start value of the general purpose timer */
+	writel(0x00000000, timer_base + TIMCTRL1);
+	writel(TIMCTRL_UPDATE, timer_base + TIMCTRL1);
+	/* setup the reload value of the general purpose timer */
+	writel(0xffffffff, timer_base + TIMFIX1);
+
+	writel(TIMCTRL_UPDATE | TIMCTRL_RELOAD | TIMCTRL_PRESCALE(0) |
+			TIMCTRL_SELECT(0xb), timer_base + TIMCTRL1);
+	imx28_cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE, imx28_cs.shift);
+	init_clock(&imx28_cs);
+
+	return 0;
+}
+
+core_initcall(imx28_clocksource_init);
diff --git a/arch/arm/mach-stm/imx.c b/arch/arm/mach-stm/imx.c
new file mode 100644
index 0000000..14a4249
--- /dev/null
+++ b/arch/arm/mach-stm/imx.c
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
diff --git a/arch/arm/mach-stm/imx23.c b/arch/arm/mach-stm/imx23.c
deleted file mode 100644
index 14a4249..0000000
--- a/arch/arm/mach-stm/imx23.c
+++ /dev/null
@@ -1,35 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert - Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <command.h>
-
-extern void imx_dump_clocks(void);
-
-static int do_clocks(struct command *cmdtp, int argc, char *argv[])
-{
-	imx_dump_clocks();
-
-	return 0;
-}
-
-BAREBOX_CMD_START(dump_clocks)
-	.cmd		= do_clocks,
-	.usage		= "show clock frequencies",
-BAREBOX_CMD_END
diff --git a/arch/arm/mach-stm/include/mach/clock-imx28.h b/arch/arm/mach-stm/include/mach/clock-imx28.h
new file mode 100644
index 0000000..afc9fb6
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/clock-imx28.h
@@ -0,0 +1,29 @@
+/*
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
+#ifndef MACH_CLOCK_IMX28_H
+#define MACH_CLOCK_IMX28_H
+
+unsigned imx_get_mpllclk(void);
+unsigned imx_get_emiclk(void);
+unsigned imx_get_ioclk(unsigned);
+unsigned imx_get_armclk(void);
+unsigned imx_get_hclk(void);
+unsigned imx_get_xclk(void);
+unsigned imx_get_sspclk(unsigned);
+unsigned imx_set_sspclk(unsigned, unsigned, int);
+unsigned imx_set_ioclk(unsigned, unsigned);
+unsigned imx_get_fecclk(void);
+void imx_enable_enetclk(void);
+
+#endif /* MACH_CLOCK_IMX28_H */
+
diff --git a/arch/arm/mach-stm/include/mach/clock.h b/arch/arm/mach-stm/include/mach/clock.h
index 5200e89..bd1fa7c 100644
--- a/arch/arm/mach-stm/include/mach/clock.h
+++ b/arch/arm/mach-stm/include/mach/clock.h
@@ -23,5 +23,8 @@
 #if defined CONFIG_ARCH_IMX23
 # include <mach/clock-imx23.h>
 #endif
+#if defined CONFIG_ARCH_IMX28
+# include <mach/clock-imx28.h>
+#endif
 
 #endif /* __MACH_CLOCK_H */
diff --git a/arch/arm/mach-stm/include/mach/generic.h b/arch/arm/mach-stm/include/mach/generic.h
index 3a552a8..50f25c5 100644
--- a/arch/arm/mach-stm/include/mach/generic.h
+++ b/arch/arm/mach-stm/include/mach/generic.h
@@ -22,3 +22,9 @@
 #else
 # define cpu_is_mx23()	(0)
 #endif
+
+#ifdef CONFIG_ARCH_IMX28
+# define cpu_is_mx28()	(1)
+#else
+# define cpu_is_mx28()	(0)
+#endif
diff --git a/arch/arm/mach-stm/include/mach/gpio.h b/arch/arm/mach-stm/include/mach/gpio.h
index fa8263c..5615b67 100644
--- a/arch/arm/mach-stm/include/mach/gpio.h
+++ b/arch/arm/mach-stm/include/mach/gpio.h
@@ -23,6 +23,9 @@
 #if defined CONFIG_ARCH_IMX23
 # include <mach/iomux-imx23.h>
 #endif
+#if defined CONFIG_ARCH_IMX28
+# include <mach/iomux-imx28.h>
+#endif
 
 void imx_gpio_mode(unsigned);
 
diff --git a/arch/arm/mach-stm/include/mach/imx-regs.h b/arch/arm/mach-stm/include/mach/imx-regs.h
index 40dc742..9b33a06 100644
--- a/arch/arm/mach-stm/include/mach/imx-regs.h
+++ b/arch/arm/mach-stm/include/mach/imx-regs.h
@@ -20,8 +20,17 @@
 #ifndef _IMX_REGS_H
 # define _IMX_REGS_H
 
+/* Note: Some registers do not support this bit change feature! */
+#define BIT_SET 0x04
+#define BIT_CLR 0x08
+#define BIT_TGL 0x0C
+
 #if defined CONFIG_ARCH_IMX23
 # include <mach/imx23-regs.h>
 #endif
 
+#if defined CONFIG_ARCH_IMX28
+# include <mach/imx28-regs.h>
+#endif
+
 #endif /* _IMX_REGS_H */
diff --git a/arch/arm/mach-stm/include/mach/imx28-regs.h b/arch/arm/mach-stm/include/mach/imx28-regs.h
new file mode 100644
index 0000000..0c97c4c
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/imx28-regs.h
@@ -0,0 +1,47 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __ASM_ARCH_MX28_REGS_H
+#define __ASM_ARCH_MX28_REGS_H
+
+/*
+ * sanity check
+ */
+#ifndef _IMX_REGS_H
+# error "Please do not include directly. Use imx-regs.h instead."
+#endif
+
+#define IMX_SRAM_BASE		0x00000000
+#define IMX_MEMORY_BASE		0x40000000
+
+#define IMX_NFC_BASE		0x8000C000
+#define IMX_SSP0_BASE		0x80010000
+#define IMX_SSP1_BASE		0x80012000
+#define IMX_SSP2_BASE		0x80014000
+#define IMX_SSP3_BASE		0x80016000
+#define IMX_IOMUXC_BASE		0x80018000
+#define IMX_FB_BASE		0x80030000
+#define IMX_CCM_BASE		0x80040000
+#define IMX_WDT_BASE		0x80056000
+#define IMX_I2C0_BASE		0x80058000
+#define IMX_I2C1_BASE		0x8005a000
+#define IMX_TIM1_BASE		0x80068000
+#define IMX_UART0_BASE		0x8006a000
+#define IMX_UART1_BASE		0x8006c000
+#define IMX_UART2_BASE		0x8006e000
+#define IMX_UART3_BASE		0x80070000
+#define IMX_UART4_BASE		0x80072000
+#define IMX_DBGUART_BASE	0x80074000
+#define IMX_FEC0_BASE		0x800F0000
+#define IMX_FEC1_BASE		0x800F4000
+
+#endif /* __ASM_ARCH_MX28_REGS_H */
diff --git a/arch/arm/mach-stm/include/mach/iomux-imx28.h b/arch/arm/mach-stm/include/mach/iomux-imx28.h
new file mode 100644
index 0000000..1e6d421
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/iomux-imx28.h
@@ -0,0 +1,552 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/* 3322222222221111111111
+ * 10987654321098765432109876543210
+ *                            ^^^^^_ Bit offset
+ *                         ^^^______ Register Number
+ *                       ^^_________ Function
+ *                      ^___________ Drive strength feature present
+ *                     ^____________ Pull up / bit keeper present
+ *                   ^^_____________ Drive strength setting
+ *                  ^_______________ Pull up / bit keeper setting
+ *                 ^________________ Voltage select present
+ *                ^_________________ Voltage selection
+ *            ^_____________________ direction if enabled as GPIO (1 = output)
+ *           ^______________________ initial output value if enabled as GPIO
+ *                                   and configured as output
+ */
+#ifndef __MACH_IOMUX_IMX28_H
+#define __MACH_IOMUX_IMX28_H
+
+/* control pad's function */
+#define FBANK_SHIFT (5)
+#define PORTF(bank,bit)	(((bank) << FBANK_SHIFT) | (bit))
+#define GET_GPIO_NO(x) ((x) & 0xff)
+#define FUNC_SHIFT 8
+#define FUNC(x)	((x) << FUNC_SHIFT)
+#define GET_FUNC(x) (((x) >> FUNC_SHIFT) & 3)
+#define IS_GPIO (3)
+
+/* control pad's GPIO feature if enabled */
+#define GPIO_OUT (1 << 20)
+#define GPIO_VALUE(x) ((x) << 21)
+#define GPIO_IN (0 << 20)
+#define GET_GPIODIR(x) (!!((x) & (1 << 20)))
+#define GET_GPIOVAL(x) (!!((x) & (1 << 21)))
+
+/* control pad's drive strength */
+#define SE (1 << 10)
+#define SE_PRESENT(x) (!!((x) & SE))
+#define STRENGTH(x) ((x) << 12)
+#define S4MA 0	/* used to define a 4 mA drive strength */
+#define S8MA 1	/* used to define a 8 mA drive strength */
+#define S12MA 2	/* used to define a 12 mA drive strength */
+#define S16MA 3	/* used to define a 16 mA drive strength,
+		   not all pads can drive this current! */
+#define GET_STRENGTH(x) (((x) >> 12) & 0x3)
+
+/* control pad's pull up / bit keeper feature */
+#define PE (1 << 11)
+#define BK (1 << 11)	/* FIXME useful to distinguish? */
+#define PE_PRESENT(x) (!!((x) & PE))
+#define BK_PRESENT(x) (!!((x) & BK))
+#define PULLUP(x) ((x) << 14)
+#define BITKEEPER(x) ((x) << 14)
+#define GET_PULLUP(x) (!!((x) & PULLUP(1)))
+#define GET_BITKEEPER(x) (!!((x) & BITKEEPER(1)))
+
+/* control pad's voltage feature */
+#define VE (1 << 15)
+#define VE_PRESENT(x) (!!((x) & VE))
+#define VE_1_8V (0 << 16)
+#define VE_3_3V (1 << 16)
+#define GET_VOLTAGE(x) (!!((x) & (1 << 16)))
+
+/* Bank 0, GPIO pins 0 ... 31 */
+#define GPMI_RESETN		(FUNC(0) | PORTF(0, 28) | SE | VE | PE)
+#define GPMI_RESETN_SSP3_CMD	(FUNC(1) | PORTF(0, 28) | SE | VE | PE)
+#define GPMI_RESETN_GPIO	(FUNC(3) | PORTF(0, 28) | SE | VE | PE)
+#define GPMI_CLE		(FUNC(0) | PORTF(0, 27) | SE | VE | PE)
+#define GPMI_CLE_SSP3_D2	(FUNC(1) | PORTF(0, 27) | SE | VE | PE)
+#define GPMI_CLE_SSP3_D5	(FUNC(2) | PORTF(0, 27) | SE | VE | PE)
+#define GPMI_CLE_GPIO		(FUNC(3) | PORTF(0, 27) | SE | VE | PE)
+#define GPMI_ALE		(FUNC(0) | PORTF(0, 26) | SE | VE | PE)
+#define GPMI_ALE_SSP3_D1	(FUNC(1) | PORTF(0, 26) | SE | VE | PE)
+#define GPMI_ALE_SSP3_D4	(FUNC(2) | PORTF(0, 26) | SE | VE | PE)
+#define GPMI_ALE_GPIO		(FUNC(3) | PORTF(0, 26) | SE | VE | PE)
+#define GPMI_WRN		(FUNC(0) | PORTF(0, 25) | SE | VE | BK)
+#define GPMI_WRN_SSP1_SCK	(FUNC(1) | PORTF(0, 25) | SE | VE | BK)
+#define GPMI_WRN_GPIO		(FUNC(3) | PORTF(0, 25) | SE | VE | BK)
+#define GPMI_RDN		(FUNC(0) | PORTF(0, 24) | SE | VE | PE)
+#define GPMI_RDN_SSP3_SCK	(FUNC(1) | PORTF(0, 24) | SE | VE | PE)
+#define GPMI_RDN_GPIO		(FUNC(3) | PORTF(0, 24) | SE | VE | PE)
+#define GPMI_READY3		(FUNC(0) | PORTF(0, 23) | SE | VE | PE)
+#define GPMI_READY3_CAN0_RX	(FUNC(1) | PORTF(0, 23) | SE | VE | PE)
+#define GPMI_READY3_HSDAC_TRIG	(FUNC(2) | PORTF(0, 23) | SE | VE | PE)
+#define GPMI_READY3_GPIO	(FUNC(3) | PORTF(0, 23) | SE | VE | PE)
+#define GPMI_READY2		(FUNC(0) | PORTF(0, 22) | SE | VE | PE)
+#define GPMI_READY2_CAN0_TX	(FUNC(1) | PORTF(0, 22) | SE | VE | PE)
+#define GPMI_READY2_ENET0_TX_ER	(FUNC(2) | PORTF(0, 22) | SE | VE | PE)
+#define GPMI_READY2_GPIO	(FUNC(3) | PORTF(0, 22) | SE | VE | PE)
+#define GPMI_READY1		(FUNC(0) | PORTF(0, 21) | SE | VE | PE)
+#define GPMI_READY1_SSP1_CMD	(FUNC(1) | PORTF(0, 21) | SE | VE | PE)
+#define GPMI_READY1_GPIO	(FUNC(3) | PORTF(0, 21) | SE | VE | PE)
+#define GPMI_READY0		(FUNC(0) | PORTF(0, 20) | SE | VE | PE)
+#define GPMI_READY0_SSP1_CD	(FUNC(1) | PORTF(0, 20) | SE | VE | PE)
+#define GPMI_READY0_USB0_ID	(FUNC(2) | PORTF(0, 20) | SE | VE | PE)
+#define GPMI_READY0_GPIO	(FUNC(3) | PORTF(0, 20) | SE | VE | PE)
+#define GPMI_CE3N		(FUNC(0) | PORTF(0, 19) | SE | VE | PE)
+#define GPMI_CE3N_CAN1_RX	(FUNC(1) | PORTF(0, 19) | SE | VE | PE)
+#define GPMI_CE3N_SAIF1_MCLK	(FUNC(2) | PORTF(0, 19) | SE | VE | PE)
+#define GPMI_CE3N_GPIO		(FUNC(3) | PORTF(0, 19) | SE | VE | PE)
+#define GPMI_CE2N		(FUNC(0) | PORTF(0, 18) | SE | VE | PE)
+#define GPMI_CE2N_CAN1_TX	(FUNC(1) | PORTF(0, 18) | SE | VE | PE)
+#define GPMI_CE2N_ENET0_RX_ER	(FUNC(2) | PORTF(0, 18) | SE | VE | PE)
+#define GPMI_CE2N_GPIO		(FUNC(3) | PORTF(0, 18) | SE | VE | PE)
+#define GPMI_CE1N		(FUNC(0) | PORTF(0, 17) | SE | VE | PE)
+#define GPMI_CE1N_SSP3_D3	(FUNC(1) | PORTF(0, 17) | SE | VE | PE)
+#define GPMI_CE1N_GPIO		(FUNC(3) | PORTF(0, 17) | SE | VE | PE)
+#define GPMI_CE0N		(FUNC(0) | PORTF(0, 16) | SE | VE | PE)
+#define GPMI_CE0N_SSP3_D0	(FUNC(1) | PORTF(0, 16) | SE | VE | PE)
+#define GPMI_CE0N_GPIO		(FUNC(3) | PORTF(0, 16) | SE | VE | PE)
+#define GPMI_D7			(FUNC(0) | PORTF(0, 7) | SE | VE | PE)
+#define GPMI_D7_SSP1_D7		(FUNC(1) | PORTF(0, 7) | SE | VE | PE)
+#define GPMI_D7_GPIO		(FUNC(3) | PORTF(0, 7) | SE | VE | PE)
+#define GPMI_D6			(FUNC(0) | PORTF(0, 6) | SE | VE | PE)
+#define GPMI_D6_SSP1_D6		(FUNC(1) | PORTF(0, 6) | SE | VE | PE)
+#define GPMI_D6_GPIO		(FUNC(3) | PORTF(0, 6) | SE | VE | PE)
+#define GPMI_D5			(FUNC(0) | PORTF(0, 5) | SE | VE | PE)
+#define GPMI_D5_SSP1_D5		(FUNC(1) | PORTF(0, 5) | SE | VE | PE)
+#define GPMI_D5_GPIO		(FUNC(3) | PORTF(0, 5) | SE | VE | PE)
+#define GPMI_D4			(FUNC(0) | PORTF(0, 4) | SE | VE | PE)
+#define GPMI_D4_SSP1_D4		(FUNC(1) | PORTF(0, 4) | SE | VE | PE)
+#define GPMI_D4_GPIO		(FUNC(3) | PORTF(0, 4) | SE | VE | PE)
+#define GPMI_D3			(FUNC(0) | PORTF(0, 3) | SE | VE | PE)
+#define GPMI_D3_SSP1_D3		(FUNC(1) | PORTF(0, 3) | SE | VE | PE)
+#define GPMI_D3_GPIO		(FUNC(3) | PORTF(0, 3) | SE | VE | PE)
+#define GPMI_D2			(FUNC(0) | PORTF(0, 2) | SE | VE | PE)
+#define GPMI_D2_SSP1_D2		(FUNC(1) | PORTF(0, 2) | SE | VE | PE)
+#define GPMI_D2_GPIO		(FUNC(3) | PORTF(0, 2) | SE | VE | PE)
+#define GPMI_D1			(FUNC(0) | PORTF(0, 1) | SE | VE | PE)
+#define GPMI_D1_SSP1_D1		(FUNC(1) | PORTF(0, 1) | SE | VE | PE)
+#define GPMI_D1_GPIO		(FUNC(3) | PORTF(0, 1) | SE | VE | PE)
+#define GPMI_D0			(FUNC(0) | PORTF(0, 0) | SE | VE | PE)
+#define GPMI_D0_SSP1_D0		(FUNC(1) | PORTF(0, 0) | SE | VE | PE)
+#define GPMI_D0_GPIO		(FUNC(3) | PORTF(0, 0) | SE | VE | PE)
+
+/* Bank 1, GPIO pins 32 ... 63 */
+
+#define LCD_ENABLE		(FUNC(0) | PORTF(1, 31) | SE | VE | BK)
+#define LCD_ENABLE_GPIO		(FUNC(3) | PORTF(1, 31) | SE | VE | BK)
+
+#define LCD_DOTCLK		(FUNC(0) | PORTF(1, 30) | SE | VE | BK)
+
+#define LCD_HSYNC		(FUNC(0) | PORTF(1, 29) | SE | VE | BK)
+
+#define LCD_VSYNC		(FUNC(0) | PORTF(1, 28) | SE | VE | BK)
+
+#define LCD_CS			(FUNC(0) | PORTF(1, 27) | SE | VE | BK)
+#define LCD_CS_LCD_ENABLE	(FUNC(1) | PORTF(1, 27) | SE | VE | BK)
+#define LCD_CS_GPIO		(FUNC(3) | PORTF(1, 27) | SE | VE | BK)
+
+#define LCD_RS			(FUNC(0) | PORTF(1, 26) | SE | VE | BK)
+#define LCD_RS_LCD_DOTCLK	(FUNC(1) | PORTF(1, 26) | SE | VE | BK)
+#define LCD_RS_GPIO		(FUNC(3) | PORTF(1, 26) | SE | VE | BK)
+#define LCD_WR_RWN		(FUNC(0) | PORTF(1, 25) | SE | VE | BK)
+#define LCD_WR_RWN_LCD_HSYNC	(FUNC(1) | PORTF(1, 25) | SE | VE | BK)
+#define LCD_WR_RWN_ETM_TCLK	(FUNC(2) | PORTF(1, 25) | SE | VE | BK)
+#define LCD_WR_RWN_GPIO		(FUNC(3) | PORTF(1, 25) | SE | VE | BK)
+#define LCD_RD_E		(FUNC(0) | PORTF(1, 24) | SE | VE | BK)
+#define LCD_RD_E_LCD_VSYNC	(FUNC(1) | PORTF(1, 24) | SE | VE | BK)
+#define LCD_RD_E_ETM_TCTL	(FUNC(2) | PORTF(1, 24) | SE | VE | BK)
+#define LCD_RD_E_GPIO		(FUNC(3) | PORTF(1, 24) | SE | VE | BK)
+
+#define LCD_D23			(FUNC(0) | PORTF(1, 23) | SE | VE | BK)
+
+#define LCD_D22			(FUNC(0) | PORTF(1, 22) | SE | VE | BK)
+
+#define LCD_D21			(FUNC(0) | PORTF(1, 21) | SE | VE | BK)
+
+#define LCD_D20			(FUNC(0) | PORTF(1, 20) | SE | VE | BK)
+
+#define LCD_D19			(FUNC(0) | PORTF(1, 19) | SE | VE | BK)
+
+#define LCD_D18			(FUNC(0) | PORTF(1, 18) | SE | VE | BK)
+
+#define LCD_D17			(FUNC(0) | PORTF(1, 17) | SE | VE | BK)
+
+#define LCD_D16			(FUNC(0) | PORTF(1, 16) | SE | VE | BK)
+
+#define LCD_D15			(FUNC(0) | PORTF(1, 15) | SE | VE | BK)
+#define LCD_D15_ETM_DA15	(FUNC(2) | PORTF(1, 15) | SE | VE | BK)
+#define LCD_D15_GPIO		(FUNC(3) | PORTF(1, 15) | SE | VE | BK)
+#define LCD_D14			(FUNC(0) | PORTF(1, 14) | SE | VE | BK)
+#define LCD_D14_ETM_DA14	(FUNC(2) | PORTF(1, 14) | SE | VE | BK)
+#define LCD_D14_GPIO		(FUNC(3) | PORTF(1, 14) | SE | VE | BK)
+#define LCD_D13			(FUNC(0) | PORTF(1, 13) | SE | VE | BK)
+#define LCD_D13_ETM_DA13	(FUNC(2) | PORTF(1, 13) | SE | VE | BK)
+#define LCD_D13_GPIO		(FUNC(3) | PORTF(1, 13) | SE | VE | BK)
+#define LCD_D12			(FUNC(0) | PORTF(1, 12) | SE | VE | BK)
+#define LCD_D12_ETM_DA12	(FUNC(2) | PORTF(1, 12) | SE | VE | BK)
+#define LCD_D12_GPIO		(FUNC(3) | PORTF(1, 12) | SE | VE | BK)
+#define LCD_D11			(FUNC(0) | PORTF(1, 11) | SE | VE | BK)
+#define LCD_D11_ETM_DA11	(FUNC(2) | PORTF(1, 11) | SE | VE | BK)
+#define LCD_D11_GPIO		(FUNC(3) | PORTF(1, 11) | SE | VE | BK)
+#define LCD_D10			(FUNC(0) | PORTF(1, 10) | SE | VE | BK)
+#define LCD_D10_ETM_DA10	(FUNC(2) | PORTF(1, 10) | SE | VE | BK)
+#define LCD_D10_GPIO		(FUNC(3) | PORTF(1, 10) | SE | VE | BK)
+#define LCD_D9			(FUNC(0) | PORTF(1, 9) | SE | VE | BK)
+#define LCD_D9_ETM_DA4		(FUNC(1) | PORTF(1, 9) | SE | VE | BK)
+#define LCD_D9_ETM_DA9		(FUNC(2) | PORTF(1, 9) | SE | VE | BK)
+#define LCD_D9_GPIO		(FUNC(3) | PORTF(1, 9) | SE | VE | BK)
+#define LCD_D8			(FUNC(0) | PORTF(1, 8) | SE | VE | BK)
+#define LCD_D8_ETM_DA3		(FUNC(1) | PORTF(1, 8) | SE | VE | BK)
+#define LCD_D8_ETM_DA8		(FUNC(2) | PORTF(1, 8) | SE | VE | BK)
+#define LCD_D8_GPIO		(FUNC(3) | PORTF(1, 8) | SE | VE | BK)
+#define LCD_D7			(FUNC(0) | PORTF(1, 7) | SE | VE | BK)
+#define LCD_D7_ETM_DA7		(FUNC(2) | PORTF(1, 7) | SE | VE | BK)
+#define LCD_D7_GPIO		(FUNC(3) | PORTF(1, 7) | SE | VE | BK)
+#define LCD_D6			(FUNC(0) | PORTF(1, 6) | SE | VE | BK)
+#define LCD_D6_ETM_DA6		(FUNC(2) | PORTF(1, 6) | SE | VE | BK)
+#define LCD_D6_GPIO		(FUNC(3) | PORTF(1, 6) | SE | VE | BK)
+#define LCD_D5			(FUNC(0) | PORTF(1, 5) | SE | VE | BK)
+#define LCD_D5_ETM_DA5		(FUNC(2) | PORTF(1, 5) | SE | VE | BK)
+#define LCD_D5_GPIO		(FUNC(3) | PORTF(1, 5) | SE | VE | BK)
+#define LCD_D4			(FUNC(0) | PORTF(1, 4) | SE | VE | BK)
+#define LCD_D4_ETM_DA9		(FUNC(1) | PORTF(1, 4) | SE | VE | BK)
+#define LCD_D4_ETM_DA4		(FUNC(2) | PORTF(1, 4) | SE | VE | BK)
+#define LCD_D4_GPIO		(FUNC(3) | PORTF(1, 4) | SE | VE | BK)
+#define LCD_D3			(FUNC(0) | PORTF(1, 3) | SE | VE | BK)
+#define LCD_D3_ETM_DA8		(FUNC(1) | PORTF(1, 3) | SE | VE | BK)
+#define LCD_D3_ETM_DA3		(FUNC(2) | PORTF(1, 3) | SE | VE | BK)
+#define LCD_D3_GPIO		(FUNC(3) | PORTF(1, 3) | SE | VE | BK)
+#define LCD_D2			(FUNC(0) | PORTF(1, 2) | SE | VE | BK)
+#define LCD_D2_ETM_DA2		(FUNC(2) | PORTF(1, 2) | SE | VE | BK)
+#define LCD_D2_GPIO		(FUNC(3) | PORTF(1, 2) | SE | VE | BK)
+#define LCD_D1			(FUNC(0) | PORTF(1, 1) | SE | VE | BK)
+#define LCD_D1_ETM_DA1		(FUNC(2) | PORTF(1, 1) | SE | VE | BK)
+#define LCD_D1_GPIO		(FUNC(3) | PORTF(1, 1) | SE | VE | BK)
+#define LCD_D0			(FUNC(0) | PORTF(1, 0) | SE | VE | BK)
+#define LCD_D0_ETM_DA0		(FUNC(2) | PORTF(1, 0) | SE | VE | BK)
+#define LCD_D0_GPIO		(FUNC(3) | PORTF(1, 0) | SE | VE | BK)
+
+/* TODO */
+
+/* Bank 2, GPIO pins 64 ... 95 */
+
+/* TODO */
+
+#define SSP1_D3			(FUNC(0) | PORTF(2, 15) | SE | VE | PE)
+#define SSP1_D3_SSP2_D7		(FUNC(1) | PORTF(2, 15) | SE | VE | PE)
+#define SSP1_D3_ENET_1588_EVENT3_IN (FUNC(2) | PORTF(4, 15) | SE | VE | PE)
+#define SSP1_D3_GPIO		(FUNC(3) | PORTF(2, 15) | SE | VE | PE)
+#define SSP1_D0			(FUNC(0) | PORTF(2, 14) | SE | VE | PE)
+#define SSP1_D0_SSP2_D6		(FUNC(1) | PORTF(2, 14) | SE | VE | PE)
+#define SSP1_D0_ENET_1588_EVENT3_OUT (FUNC(2) | PORTF(2, 14) | SE | VE | PE)
+#define SSP1_D0_GPIO		(FUNC(3) | PORTF(2, 14) | SE | VE | PE)
+#define SSP1_CMD		(FUNC(0) | PORTF(2, 13) | SE | VE | PE)
+#define SSP1_CMD_SSP2_D2	(FUNC(1) | PORTF(2, 13) | SE | VE | PE)
+#define SSP1_CMD_ENET_1588_EVENT2_IN (FUNC(2) | PORTF(2, 13) | SE | VE | PE)
+#define SSP1_CMD_GPIO		(FUNC(3) | PORTF(2, 13) | SE | VE | PE)
+#define SSP1_SCK		(FUNC(0) | PORTF(2, 12) | SE | VE | PE)
+#define SSP1_SCK_SSP2_D1	(FUNC(1) | PORTF(2, 12) | SE | VE | PE)
+#define SSP1_SCK_ENET_1588_EVENT2_OUT (FUNC(2) | PORTF(2, 12) | SE | VE | PE)
+#define SSP1_SCK_GPIO		(FUNC(3) | PORTF(2, 12) | SE | VE | PE)
+#define SSP0_SCK		(FUNC(0) | PORTF(2, 10) | SE | VE | BK)
+#define SSP0_SCK_GPIO		(FUNC(3) | PORTF(2, 10) | SE | VE | BK)
+#define SSP0_CD			(FUNC(0) | PORTF(2, 9) | SE | VE | PE)
+#define SSP0_CD_GPIO		(FUNC(3) | PORTF(2, 9) | SE | VE | PE)
+#define SSP0_CMD		(FUNC(0) | PORTF(2, 8) | SE | VE | PE)
+#define SSP0_CMD_GPIO		(FUNC(3) | PORTF(2, 8) | SE | VE | PE)
+#define SSP0_D7			(FUNC(0) | PORTF(2, 7) | SE | VE | PE)
+#define SSP0_D7_SSP2_SCK	(FUNC(1) | PORTF(2, 7) | SE | VE | PE)
+#define SSP0_D7_GPIO		(FUNC(3) | PORTF(2, 7) | SE | VE | PE)
+#define SSP0_D6			(FUNC(0) | PORTF(2, 6) | SE | VE | PE)
+#define SSP0_D6_SSP2_CMD	(FUNC(1) | PORTF(2, 6) | SE | VE | PE)
+#define SSP0_D6_GPIO		(FUNC(3) | PORTF(2, 6) | SE | VE | PE)
+#define SSP0_D5			(FUNC(0) | PORTF(2, 5) | SE | VE | PE)
+#define SSP0_D5_SSP2_D3		(FUNC(1) | PORTF(2, 5) | SE | VE | PE)
+#define SSP0_D5_GPIO		(FUNC(3) | PORTF(2, 5) | SE | VE | PE)
+#define SSP0_D4			(FUNC(0) | PORTF(2, 4) | SE | VE | PE)
+#define SSP0_D4_SSP2_D0		(FUNC(1) | PORTF(2, 4) | SE | VE | PE)
+#define SSP0_D4_GPIO		(FUNC(3) | PORTF(2, 4) | SE | VE | PE)
+#define SSP0_D3			(FUNC(0) | PORTF(2, 3) | SE | VE | PE)
+#define SSP0_D3_GPIO		(FUNC(3) | PORTF(2, 3) | SE | VE | PE)
+#define SSP0_D2			(FUNC(0) | PORTF(2, 2) | SE | VE | PE)
+#define SSP0_D2_GPIO		(FUNC(3) | PORTF(2, 2) | SE | VE | PE)
+#define SSP0_D1			(FUNC(0) | PORTF(2, 1) | SE | VE | PE)
+#define SSP0_D1_GPIO		(FUNC(3) | PORTF(2, 1) | SE | VE | PE)
+#define SSP0_D0			(FUNC(0) | PORTF(2, 0) | SE | VE | PE)
+#define SSP0_D0_GPIO		(FUNC(3) | PORTF(2, 0) | SE | VE | PE)
+
+/* Bank 3, GPIO pins 96 ... 127 */
+
+#define LCD_RESET		(FUNC(0) | PORTF(3, 30))
+#define LCD_RESET_LCD_VSYNC	(FUNC(1) | PORTF(3, 30))
+#define LCD_RESET_GPIO		(FUNC(3) | PORTF(3, 30))
+#define PWM4			(FUNC(0) | PORTF(3, 29))
+#define PWM4_GPIO		(FUNC(3) | PORTF(3, 29))
+#define PWM3			(FUNC(0) | PORTF(3 28))
+#define PWM3_GPIO		(FUNC(3) | PORTF(3, 28))
+
+#define PWM2			(FUNC(0) | PORTF(3, 18))
+
+#define PWM1			(FUNC(0) | PORTF(3, 17))
+
+#define PWM0			(FUNC(0) | PORTF(3, 16))
+#define PWM0_I2C1_SCL		(FUNC(1) | PORTF(3, 16))
+#define PWM0_DUART_RX		(FUNC(2) | PORTF(3, 16))
+#define PWM0_GPIO		(FUNC(3) | PORTF(3, 16))
+#define AUART3_RTS		(FUNC(0) | PORTF(3, 15) | SE | VE | BK)
+#define AUART3_RTS_CAN1_RX	(FUNC(1) | PORTF(3, 15) | SE | VE | BK)
+#define AUART3_RTS_ENET0_1588_EVENT1_IN	(FUNC(2) | PORTF(3, 15) | SE | VE | BK)
+#define AUART3_RTS_GPIO		(FUNC(3) | PORTF(3, 15) | SE | VE | BK)
+#define AUART3_CTS		(FUNC(0) | PORTF(3, 14) | SE | VE | BK | BK)
+#define AUART3_CTS_CAN1_TX	(FUNC(1) | PORTF(3, 14) | SE | VE | BK)
+#define AUART3_CTS_ENET0_1588_EVENT1_OUT (FUNC(2) | PORTF(3, 14) | SE | VE | BK)
+#define AUART3_CTS_GPIO		(FUNC(3) | PORTF(3, 14) | SE | VE | BK)
+#define AUART3_TX		(FUNC(0) | PORTF(3, 13) | SE | VE | BK)
+#define AUART3_TX_CAN0_RX	(FUNC(1) | PORTF(3, 13) | SE | VE | BK)
+#define AUART3_TX_ENET0_1588_EVENT0_IN	(FUNC(2) | PORTF(3, 13) | SE | VE | BK)
+#define AUART3_TX_GPIO		(FUNC(3) | PORTF(3, 13) | SE | VE | BK)
+#define AUART3_RX		(FUNC(0) | PORTF(3, 12) | SE | VE | BK)
+#define AUART3_RX_CAN0_TX	(FUNC(1) | PORTF(3, 12) | SE | VE | BK)
+#define AUART3_RX_ENET0_1588_EVENT0_OUT	(FUNC(2) | PORTF(3, 12) | SE | VE | BK)
+#define AUART3_RX_GPIO		(FUNC(3) | PORTF(3, 12) | SE | VE | BK)
+#define AUART2_RTS		(FUNC(0) | PORTF(3, 11) | SE | VE | BK)
+#define AUART2_RTS_I2C1_SDA	(FUNC(1) | PORTF(3, 11) | SE | VE | BK)
+#define AUART2_RTS_SAIF1_IRCLK	(FUNC(2) | PORTF(3, 11) | SE | VE | BK)
+#define AUART2_RTS_GPIO		(FUNC(3) | PORTF(3, 11) | SE | VE | BK)
+#define AUART2_CTS		(FUNC(0) | PORTF(3, 10) | SE | VE | BK)
+#define AUART2_CTS_I2C1_SCL	(FUNC(1) | PORTF(3, 10) | SE | VE | BK)
+#define AUART2_CTS_SAIF1_BITCLK	(FUNC(2) | PORTF(3, 10) | SE | VE | BK)
+#define AUART2_CTS_GPIO		(FUNC(3) | PORTF(3, 10) | SE | VE | BK)
+#define AUART2_TX		(FUNC(0) | PORTF(3, 9) | SE | VE | PE)
+#define AUART2_TX_SSP3_D2	(FUNC(1) | PORTF(3, 9) | SE | VE | PE)
+#define AUART2_TX_SSP3_D5	(FUNC(2) | PORTF(3, 9) | SE | VE | PE)
+#define AUART2_TX_GPIO		(FUNC(3) | PORTF(3, 9) | SE | VE | PE)
+#define AUART2_RX		(FUNC(0) | PORTF(3, 8) | SE | VE | PE)
+#define AUART2_RX_SSP3_D1	(FUNC(1) | PORTF(3, 8) | SE | VE | PE)
+#define AUART2_RX_SSP3_D4	(FUNC(2) | PORTF(3, 8) | SE | VE | PE)
+#define AUART2_RX_GPIO		(FUNC(3) | PORTF(3, 8) | SE | VE | PE)
+#define AUART1_RTS		(FUNC(0) | PORTF(3, 7) | SE | VE | PE)
+#define AUART1_RTS_USB0_ID	(FUNC(1) | PORTF(3, 7) | SE | VE | PE)
+#define AUART1_RTS_ROTARYB	(FUNC(2) | PORTF(3, 7) | SE | VE | PE)
+#define AUART1_RTS_GPIO		(FUNC(3) | PORTF(3, 7) | SE | VE | PE)
+#define AUART1_CTS		(FUNC(0) | PORTF(3, 6) | SE | VE | PE)
+#define AUART1_CTS_USB0_OC	(FUNC(1) | PORTF(3, 6) | SE | VE | PE)
+#define AUART1_CTS_ROTARYA	(FUNC(2) | PORTF(3, 6) | SE | VE | PE)
+#define AUART1_CTS_GPIO		(FUNC(3) | PORTF(3, 6) | SE | VE | PE)
+#define AUART1_TX		(FUNC(0) | PORTF(3, 5) | SE | VE | BK)
+#define AUART1_TX_SSP3_CD	(FUNC(1) | PORTF(3, 5) | SE | VE | BK)
+#define AUART1_TX_PWM1		(FUNC(2) | PORTF(3, 5) | SE | VE | BK)
+#define AUART1_TX_GPIO		(FUNC(3) | PORTF(3, 5) | SE | VE | BK)
+#define AUART1_RX		(FUNC(0) | PORTF(3, 4) | SE | VE | BK)
+#define AUART1_RX_SSP2_CD	(FUNC(1) | PORTF(3, 4) | SE | VE | BK)
+#define AUART1_RX_PWM0		(FUNC(2) | PORTF(3, 4) | SE | VE | BK)
+#define AUART1_RX_GPIO		(FUNC(3) | PORTF(3, 4) | SE | VE | BK)
+#define AUART0_RTS		(FUNC(0) | PORTF(3, 3) | SE | VE | BK)
+#define AUART0_RTS_AUART4_TX	(FUNC(1) | PORTF(3, 3) | SE | VE | BK)
+#define AUART0_RTS_DUART_TX	(FUNC(2) | PORTF(3, 3) | SE | VE | BK)
+#define AUART0_RTS_GPIO		(FUNC(3) | PORTF(3, 3) | SE | VE | BK)
+#define AUART0_CTS		(FUNC(0) | PORTF(3, 2) | SE | VE | BK)
+#define AUART0_CTS_AUART4_RX	(FUNC(1) | PORTF(3, 2) | SE | VE | BK)
+#define AUART0_CTS_DUART_RX	(FUNC(2) | PORTF(3, 2) | SE | VE | BK)
+#define AUART0_CTS_GPIO		(FUNC(3) | PORTF(3, 2) | SE | VE | BK)
+#define AUART0_TX		(FUNC(0) | PORTF(3, 1) | SE | VE | BK)
+#define AUART0_TX_I2C0_SDA	(FUNC(1) | PORTF(3, 1) | SE | VE | BK)
+#define AUART0_TX_DUART_RTS	(FUNC(2) | PORTF(3, 1) | SE | VE | BK)
+#define AUART0_TX_GPIO		(FUNC(3) | PORTF(3, 1) | SE | VE | BK)
+#define AUART0_RX		(FUNC(0) | PORTF(3, 0) | SE | VE | BK)
+#define AUART0_RX_I2C0_SCL	(FUNC(1) | PORTF(3, 0) | SE | VE | BK)
+#define AUART0_RX_DUART_CTS	(FUNC(2) | PORTF(3, 0) | SE | VE | BK)
+#define AUART0_RX_GPIO		(FUNC(3) | PORTF(3, 0) | SE | VE | BK)
+
+/* Bank 4, GPIO pins 128 ... 159 */
+
+#define JTAG_RTCK		(FUNC(0) | PORTF(4, 20) | SE | VE | BK)
+#define JTAG_RTCK_GPIO		(FUNC(3) | PORTF(4, 20) | SE | VE | BK)
+#define ENET_CLK		(FUNC(0) | PORTF(4, 16) | SE | VE | BK)
+#define ENET_CLK_GPIO		(FUNC(3) | PORTF(4, 16) | SE | VE | BK)
+
+#define ENET0_CRS		(FUNC(0) | PORTF(4, 15) | SE | VE | BK)
+
+#define ENET0_COL		(FUNC(0) | PORTF(4, 14) | SE | VE | BK)
+
+#define ENET0_RX_CLK		(FUNC(0) | PORTF(4, 13) | SE | VE | BK)
+#define ENET0_RX_CLK_RX_ER	(FUNC(1) | PORTF(4, 13) | SE | VE | BK)
+#define ENET0_RX_ENET0_1588_EVENT2_IN (FUNC(2) | PORTF(4, 13) | SE | VE | BK)
+#define ENET0_RX_CLK_GPIO	(FUNC(3) | PORTF(4, 13) | SE | VE | BK)
+#define ENET0_TXD3		(FUNC(0) | PORTF(4, 12) | SE | VE | BK)
+#define ENET0_TXD3_ENET1_TXD1	(FUNC(1) | PORTF(4, 12) | SE | VE | BK)
+#define ENET0_TXD3_ENET0_1588_EVENT1_IN (FUNC(2) | PORTF(4, 12) | SE | VE | BK)
+#define ENET0_TXD3_GPIO		(FUNC(3) | PORTF(4, 12) | SE | VE | BK)
+
+#define ENET0_TXD2		(FUNC(0) | PORTF(4, 11) | SE | VE | BK)
+
+#define ENET0_TXD2_GPIO		(FUNC(3) | PORTF(4, 11) | SE | VE | BK)
+
+#define ENET0_RXD3		(FUNC(0) | PORTF(4, 10) | SE | VE | BK)
+#define ENET0_RXD3_ENET1_RXD1	(FUNC(1) | PORTF(4, 10) | SE | VE | BK)
+#define ENET0_RXD3_ENET0_1588_EVENT0_IN (FUNC(2) | PORTF(4, 10) | SE | VE | BK)
+#define ENET0_RXD3_GPIO		(FUNC(3) | PORTF(4, 10) | SE | VE | BK)
+
+#define ENET0_RXD2		(FUNC(0) | PORTF(4, 9) | SE | VE | BK)
+
+#define ENET0_RXD2_GPIO		(FUNC(3) | PORTF(4, 9) | SE | VE | BK)
+
+#define ENET0_TXD1		(FUNC(0) | PORTF(4, 8) | SE | VE | PE)
+
+#define ENET0_TXD1_GPIO		(FUNC(3) | PORTF(4, 8) | SE | VE | PE)
+
+#define ENET0_TXD0		(FUNC(0) | PORTF(4, 7) | SE | VE | PE)
+
+#define ENET0_TXD0_GPIO		(FUNC(3) | PORTF(4, 7) | SE | VE | PE)
+
+#define ENET0_TX_EN		(FUNC(0) | PORTF(4, 6) | SE | VE | PE)
+
+#define ENET0_TX_EN_GPIO	(FUNC(3) | PORTF(4, 6) | SE | VE | PE)
+
+#define ENET0_TX_CLK		(FUNC(0) | PORTF(4, 5) | SE | VE | BK)
+
+#define ENET0_TX_CLK_GPIO	(FUNC(3) | PORTF(4, 5) | SE | VE | BK)
+
+#define ENET0_RXD1		(FUNC(0) | PORTF(4, 4) | SE | VE | PE)
+#define ENET0_RXD1_GPMI_READY4	(FUNC(1) | PORTF(4, 4) | SE | VE | PE)
+#define ENET0_RXD1_GPIO		(FUNC(3) | PORTF(4, 4) | SE | VE | PE)
+#define ENET0_RXD0		(FUNC(0) | PORTF(4, 3) | SE | VE | PE)
+#define ENET0_RXD0_GPMI_CE7N	(FUNC(1) | PORTF(4, 3) | SE | VE | PE)
+#define ENET0_RXD0_SAIF1_SDATA2	(FUNC(2) | PORTF(4, 3) | SE | VE | PE)
+#define ENET0_RXD0_GPIO		(FUNC(3) | PORTF(4, 3) | SE | VE | PE)
+#define ENET0_RX_EN		(FUNC(0) | PORTF(4, 2) | SE | VE | PE)
+#define ENET0_RX_EN_GPMI_CE6N	(FUNC(1) | PORTF(4, 2) | SE | VE | PE)
+#define ENET0_RX_EN_SAIF1_SDATA1 (FUNC(2) | PORTF(4, 2) | SE | VE | PE)
+#define ENET0_RX_EN_GPIO	(FUNC(3) | PORTF(4, 2) | SE | VE | PE)
+#define ENET0_MDIO		(FUNC(0) | PORTF(4, 1) | SE | VE | PE)
+#define ENET0_MDIO_GPMI_CE5N	(FUNC(1) | PORTF(4, 1) | SE | VE | PE)
+#define ENET0_MDIO_SAIF0_SDATA2	(FUNC(2) | PORTF(4, 1) | SE | VE | PE)
+#define ENET0_MDIO_GPIO		(FUNC(3) | PORTF(4, 1) | SE | VE | PE)
+#define ENET0_MDC		(FUNC(0) | PORTF(4, 0) | SE | VE | PE)
+#define ENET0_MDC_GPMI_CE4N	(FUNC(1) | PORTF(4, 0) | SE | VE | PE)
+#define ENET0_MDC_SAIF0_SDATA1	(FUNC(2) | PORTF(4, 0) | SE | VE | PE)
+#define ENET0_MDC_GPIO		(FUNC(3) | PORTF(4, 0) | SE | VE | PE)
+
+/*
+ * Bank 5, GPIO pins 160 ... 191
+ * Note: These pins are disabled instead of being GPIOs
+ */
+#define EMI_DDR_OPEN		(FUNC(0) | PORTF(5, 26) | BK)
+#define EMI_DDR_OPEN_OFF	(FUNC(3) | PORTF(5, 26) | BK)
+#define EMI_DSQ1		(FUNC(0) | PORTF(5, 23) | BK)
+#define EMI_DSQ1_OFF		(FUNC(3) | PORTF(5, 23) | BK)
+#define EMI_DSQ0		(FUNC(0) | PORTF(5, 22) | BK)
+#define EMI_DSQ0_OFF		(FUNC(3) | PORTF(5, 22) | BK)
+#define EMI_CLK			(FUNC(0) | PORTF(5, 21) | BK)
+#define EMI_CLK_OFF		(FUNC(3) | PORTF(5, 21) | BK)
+#define EMI_DDR_OPEN_FB		(FUNC(0) | PORTF(5, 20) | BK)
+#define EMI_DDR_OPEN_FB_OFF	(FUNC(3) | PORTF(5, 20) | BK)
+#define EMI_DQM1		(FUNC(0) | PORTF(5, 19) | BK)
+#define EMI_DQM1_OFF		(FUNC(3) | PORTF(5, 19) | BK)
+#define EMI_ODT1		(FUNC(0) | PORTF(5, 18) | BK)
+#define EMI_ODT1_OFF		(FUNC(3) | PORTF(5, 18) | BK)
+#define EMI_DQM0		(FUNC(0) | PORTF(5, 17) | BK)
+#define EMI_DQM0_OFF		(FUNC(3) | PORTF(5, 17) | BK)
+#define EMI_ODT0		(FUNC(0) | PORTF(5, 16) | BK)
+#define EMI_ODT0_OFF		(FUNC(3) | PORTF(5, 16) | BK)
+#define EMI_DATA15		(FUNC(0) | PORTF(5, 15) | BK)
+#define EMI_DATA15_OFF		(FUNC(3) | PORTF(5, 15) | BK)
+#define EMI_DATA14		(FUNC(0) | PORTF(5, 14) | BK)
+#define EMI_DATA14_OFF		(FUNC(3) | PORTF(5, 14) | BK)
+#define EMI_DATA13		(FUNC(0) | PORTF(5, 13) | BK)
+#define EMI_DATA13_OFF		(FUNC(3) | PORTF(5, 13) | BK)
+#define EMI_DATA12		(FUNC(0) | PORTF(5, 12) | BK)
+#define EMI_DATA12_OFF		(FUNC(3) | PORTF(5, 12) | BK)
+#define EMI_DATA11		(FUNC(0) | PORTF(5, 11) | BK)
+#define EMI_DATA10_OFF		(FUNC(3) | PORTF(5, 10) | BK)
+#define EMI_DATA10		(FUNC(0) | PORTF(5, 10) | BK)
+#define EMI_DATA10_OFF		(FUNC(3) | PORTF(5, 10) | BK)
+#define EMI_DATA9		(FUNC(0) | PORTF(5, 9) | BK)
+#define EMI_DATA9_OFF		(FUNC(3) | PORTF(5, 9) | BK)
+#define EMI_DATA8		(FUNC(0) | PORTF(5, 8) | BK)
+#define EMI_DATA8_OFF		(FUNC(3) | PORTF(5, 8) | BK)
+#define EMI_DATA7		(FUNC(0) | PORTF(5, 7) | BK)
+#define EMI_DATA7_OFF		(FUNC(3) | PORTF(5, 7) | BK)
+#define EMI_DATA6		(FUNC(0) | PORTF(5, 6) | BK)
+#define EMI_DATA6_OFF		(FUNC(3) | PORTF(5, 6) | BK)
+#define EMI_DATA5		(FUNC(0) | PORTF(5, 5) | BK)
+#define EMI_DATA5_OFF		(FUNC(3) | PORTF(5, 5) | BK)
+#define EMI_DATA4		(FUNC(0) | PORTF(5, 4) | BK)
+#define EMI_DATA4_OFF		(FUNC(3) | PORTF(5, 4) | BK)
+#define EMI_DATA3		(FUNC(0) | PORTF(5, 3) | BK)
+#define EMI_DATA3_OFF		(FUNC(3) | PORTF(5, 3) | BK)
+#define EMI_DATA2		(FUNC(0) | PORTF(5, 2) | BK)
+#define EMI_DATA2_OFF		(FUNC(3) | PORTF(5, 2) | BK)
+#define EMI_DATA1		(FUNC(0) | PORTF(5, 1) | BK)
+#define EMI_DATA1_OFF		(FUNC(3) | PORTF(5, 1) | BK)
+#define EMI_DATA0		(FUNC(0) | PORTF(5, 0) | BK)
+#define EMI_DATA0_OFF		(FUNC(3) | PORTF(5, 0) | BK)
+
+/*
+ * Bank 6, GPIO pins 192 ... 223
+ * Note: This pins are disabled instead of being GPIOs
+ */
+#define EMI_CKE			(FUNC(0) | PORTF(6, 24) | BK)
+#define EMI_CKE_OFF		(FUNC(3) | PORTF(6, 24) | BK)
+#define EMI_CE1N		(FUNC(0) | PORTF(6, 23) | BK)
+#define EMI_CE1N_OFF		(FUNC(3) | PORTF(6, 23) | BK)
+#define EMI_CE0N		(FUNC(0) | PORTF(6, 22) | BK)
+#define EMI_CE0N_OFF		(FUNC(3) | PORTF(6, 22) | BK)
+#define EMI_WEN			(FUNC(0) | PORTF(6, 21) | BK)
+#define EMI_WEN_OFF		(FUNC(3) | PORTF(6, 21) | BK)
+#define EMI_RASN		(FUNC(0) | PORTF(6, 20) | BK)
+#define EMI_RASN_OFF		(FUNC(3) | PORTF(6, 20) | BK)
+#define EMI_CASN		(FUNC(0) | PORTF(6, 19) | BK)
+#define EMI_CASN_OFF		(FUNC(3) | PORTF(6, 19) | BK)
+#define EMI_BA2			(FUNC(0) | PORTF(6, 18) | BK)
+#define EMI_BA2_OFF		(FUNC(3) | PORTF(6, 18) | BK)
+#define EMI_BA1			(FUNC(0) | PORTF(6, 17) | BK)
+#define EMI_BA1_OFF		(FUNC(3) | PORTF(6, 17) | BK)
+#define EMI_BA0			(FUNC(0) | PORTF(6, 16) | BK)
+#define EMI_BA0_OFF		(FUNC(3) | PORTF(6, 16) | BK)
+#define EMI_A14			(FUNC(0) | PORTF(6, 14) | BK)
+#define EMI_A14_OFF		(FUNC(3) | PORTF(6, 14) | BK)
+#define EMI_A13			(FUNC(0) | PORTF(6, 13) | BK)
+#define EMI_A13_OFF		(FUNC(3) | PORTF(6, 13) | BK)
+#define EMI_A12			(FUNC(0) | PORTF(6, 12) | BK)
+#define EMI_A12_OFF		(FUNC(3) | PORTF(6, 12) | BK)
+#define EMI_A11			(FUNC(0) | PORTF(6, 11) | BK)
+#define EMI_A11_OFF		(FUNC(3) | PORTF(6, 11) | BK)
+#define EMI_A10			(FUNC(0) | PORTF(6, 10) | BK)
+#define EMI_A10_OFF		(FUNC(3) | PORTF(6, 10) | BK)
+#define EMI_A9			(FUNC(0) | PORTF(6, 9) | BK)
+#define EMI_A9_OFF		(FUNC(3) | PORTF(6, 9) | BK)
+#define EMI_A8			(FUNC(0) | PORTF(6, 8) | BK)
+#define EMI_A8_OFF		(FUNC(3) | PORTF(6, 8) | BK)
+#define EMI_A7			(FUNC(0) | PORTF(6, 7) | BK)
+#define EMI_A7_OFF		(FUNC(3) | PORTF(6, 7) | BK)
+#define EMI_A6			(FUNC(0) | PORTF(6, 6) | BK)
+#define EMI_A6_OFF		(FUNC(3) | PORTF(6, 6) | BK)
+#define EMI_A5			(FUNC(0) | PORTF(6, 5) | BK)
+#define EMI_A5_OFF		(FUNC(3) | PORTF(6, 5) | BK)
+#define EMI_A4			(FUNC(0) | PORTF(6, 4) | BK)
+#define EMI_A4_OFF		(FUNC(3) | PORTF(6, 4) | BK)
+#define EMI_A3			(FUNC(0) | PORTF(6, 3) | BK)
+#define EMI_A3_OFF		(FUNC(3) | PORTF(6, 3) | BK)
+#define EMI_A2			(FUNC(0) | PORTF(6, 2) | BK)
+#define EMI_A2_OFF		(FUNC(3) | PORTF(6, 2) | BK)
+#define EMI_A1			(FUNC(0) | PORTF(6, 1) | BK)
+#define EMI_A1_OFF		(FUNC(3) | PORTF(6, 1) | BK)
+#define EMI_A0			(FUNC(0) | PORTF(6, 0) | BK)
+#define EMI_A0_OFF		(FUNC(3) | PORTF(6, 0) | BK)
+
+#endif /* __MACH_IOMUX_IMX28_H */
diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-stm/iomux-imx.c
new file mode 100644
index 0000000..2c68ebf
--- /dev/null
+++ b/arch/arm/mach-stm/iomux-imx.c
@@ -0,0 +1,136 @@
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
+
+#ifdef CONFIG_ARCH_IMX23
+#define HW_PINCTRL_DRIVE0 0x200
+#define HW_PINCTRL_PULL0 0x400
+#define HW_PINCTRL_DOUT0 0x500
+#define HW_PINCTRL_DIN0 0x600
+#define HW_PINCTRL_DOE0 0x700
+
+#define MAX_GPIO_NO 95
+#endif
+
+#ifdef CONFIG_ARCH_IMX28
+#define HW_PINCTRL_DRIVE0 0x300
+#define HW_PINCTRL_PULL0 0x600
+#define HW_PINCTRL_DOUT0 0x700
+#define HW_PINCTRL_DIN0 0x900
+#define HW_PINCTRL_DOE0 0xb00
+
+#define MAX_GPIO_NO 159
+#endif
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
+	if ((gpio_pin > MAX_GPIO_NO) && (GET_FUNC(m) == IS_GPIO)) {
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
+			writel(0x1 << (((gpio_pin % 8) << 2) + 2),
+				IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+		else
+			writel(0x1 << (((gpio_pin % 8) << 2) + 2),
+				IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
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
+			writel(0x1 << (gpio_pin % 32),
+				IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+		} else {
+			writel(0x1 << (gpio_pin % 32),
+				IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
+		}
+	}
+}
diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
deleted file mode 100644
index 5d4465e..0000000
--- a/arch/arm/mach-stm/iomux-imx23.c
+++ /dev/null
@@ -1,119 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert - Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <gpio.h>
-#include <asm/io.h>
-#include <mach/imx-regs.h>
-
-#define HW_PINCTRL_CTRL 0x000
-#define HW_PINCTRL_MUXSEL0 0x100
-#define HW_PINCTRL_DRIVE0 0x200
-#define HW_PINCTRL_PULL0 0x400
-#define HW_PINCTRL_DOUT0 0x500
-#define HW_PINCTRL_DIN0 0x600
-#define HW_PINCTRL_DOE0 0x700
-
-#define MAX_GPIO_NO 95
-
-static uint32_t calc_mux_reg(uint32_t no)
-{
-	/* each register controls 16 pads */
-	return ((no >> 4) << 4) + HW_PINCTRL_MUXSEL0;
-}
-
-static uint32_t calc_strength_reg(uint32_t no)
-{
-	/* each register controls 8 pads */
-	return  ((no >> 3) << 4) + HW_PINCTRL_DRIVE0;
-}
-
-static uint32_t calc_pullup_reg(uint32_t no)
-{
-	/* each register controls 32 pads */
-	return  ((no >> 5) << 4) + HW_PINCTRL_PULL0;
-}
-
-static uint32_t calc_output_enable_reg(uint32_t no)
-{
-	/* each register controls 32 pads */
-	return  ((no >> 5) << 4) + HW_PINCTRL_DOE0;
-}
-
-static uint32_t calc_output_reg(uint32_t no)
-{
-	/* each register controls 32 pads */
-	return  ((no >> 5) << 4) + HW_PINCTRL_DOUT0;
-}
-
-/**
- * @param[in] m One of the defines from iomux-mx23.h to configure *one* pin
- */
-void imx_gpio_mode(unsigned m)
-{
-	uint32_t reg_offset, gpio_pin, reg;
-
-	gpio_pin = GET_GPIO_NO(m);
-
-	/* configure the pad to its function (always) */
-	reg_offset = calc_mux_reg(gpio_pin);
-	reg = readl(IMX_IOMUXC_BASE + reg_offset) & ~(0x3 << ((gpio_pin % 16) << 1));
-	reg |= GET_FUNC(m) << ((gpio_pin % 16) << 1);
-	writel(reg, IMX_IOMUXC_BASE + reg_offset);
-
-	/* some pins are disabled when configured for GPIO */
-	if ((gpio_pin > MAX_GPIO_NO) && (GET_FUNC(m) == IS_GPIO)) {
-		printf("Cannot configure pad %d to GPIO\n", gpio_pin);
-		return;
-	}
-
-	if (SE_PRESENT(m)) {
-		reg_offset = calc_strength_reg(gpio_pin);
-		reg = readl(IMX_IOMUXC_BASE + reg_offset) & ~(0x3 << ((gpio_pin % 8) << 2));
-		reg |= GET_STRENGTH(m) << ((gpio_pin % 8) << 2);
-		writel(reg, IMX_IOMUXC_BASE + reg_offset);
-	}
-
-	if (VE_PRESENT(m)) {
-		reg_offset = calc_strength_reg(gpio_pin);
-		if (GET_VOLTAGE(m) == 1)
-			writel(0x1 << (((gpio_pin % 8) << 2) + 2), IMX_IOMUXC_BASE + reg_offset + 4);
-		else
-			writel(0x1 << (((gpio_pin % 8) << 2) + 2), IMX_IOMUXC_BASE + reg_offset + 8);
-	}
-
-	if (PE_PRESENT(m)) {
-		reg_offset = calc_pullup_reg(gpio_pin);
-		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_PULLUP(m) == 1 ? 4 : 8));
-	}
-
-	if (GET_FUNC(m) == IS_GPIO) {
-		if (GET_GPIODIR(m) == 1) {
-			/* first set the output value */
-			reg_offset = calc_output_reg(gpio_pin);
-			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_GPIOVAL(m) == 1 ? 4 : 8));
-			/* then the direction */
-			reg_offset = calc_output_enable_reg(gpio_pin);
-			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + 4);
-		} else {
-			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + 8);
-		}
-	}
-}
diff --git a/arch/arm/mach-stm/reset-imx.c b/arch/arm/mach-stm/reset-imx.c
new file mode 100644
index 0000000..b35f796
--- /dev/null
+++ b/arch/arm/mach-stm/reset-imx.c
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
+void __noreturn reset_cpu (unsigned long addr)
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
diff --git a/arch/arm/mach-stm/reset-imx23.c b/arch/arm/mach-stm/reset-imx23.c
deleted file mode 100644
index b35f796..0000000
--- a/arch/arm/mach-stm/reset-imx23.c
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert - Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <notifier.h>
-#include <mach/imx-regs.h>
-#include <asm/io.h>
-
-#define HW_RTC_CTRL     0x000
-# define BM_RTC_CTRL_WATCHDOGEN (1 << 4)
-#define HW_RTC_CTRL_SET 0x004
-#define HW_RTC_CTRL_CLR 0x008
-#define HW_RTC_CTRL_TOG 0x00C
-
-#define HW_RTC_WATCHDOG     0x050
-#define HW_RTC_WATCHDOG_SET 0x054
-#define HW_RTC_WATCHDOG_CLR 0x058
-#define HW_RTC_WATCHDOG_TOG 0x05C
-
-#define WDOG_COUNTER_RATE	1000 /* 1 kHz clock */
-
-#define HW_RTC_PERSISTENT1     0x070
-# define BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER 0x80000000
-#define HW_RTC_PERSISTENT1_SET 0x074
-#define HW_RTC_PERSISTENT1_CLR 0x078
-#define HW_RTC_PERSISTENT1_TOG 0x07C
-
-/*
- * Reset the cpu by setting up the watchdog timer and let it time out
- *
- * TODO There is a much easier way to reset the CPU: Refer bit 2 in
- *       the HW_CLKCTRL_RESET register, data sheet page 106/4-30
- */
-void __noreturn reset_cpu (unsigned long addr)
-{
-	writel(WDOG_COUNTER_RATE, IMX_WDT_BASE + HW_RTC_WATCHDOG);
-	writel(BM_RTC_CTRL_WATCHDOGEN, IMX_WDT_BASE + HW_RTC_CTRL_SET);
-	writel(BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER, IMX_WDT_BASE + HW_RTC_PERSISTENT1);
-
-	while (1)
-		;
-	/*NOTREACHED*/
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-stm/speed-imx28.c b/arch/arm/mach-stm/speed-imx28.c
new file mode 100644
index 0000000..63c6b07
--- /dev/null
+++ b/arch/arm/mach-stm/speed-imx28.c
@@ -0,0 +1,392 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix <kernel@pengutronix.de>
+ *
+ * This code is based partially on code that has:
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
+ */
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/generic.h>
+#include <mach/clock.h>
+
+#define HW_CLKCTRL_PLL0CTRL0 0x000
+#define HW_CLKCTRL_PLL0CTRL1 0x010
+#define HW_CLKCTRL_PLL1CTRL0 0x020
+#define HW_CLKCTRL_PLL1CTRL1 0x030
+#define HW_CLKCTRL_PLL2CTRL0 0x040
+# define CLKCTRL_PLL2CTRL0_CLKGATE (1 << 31)
+# define CLKCTRL_PLL2CTRL0_POWER (1 << 23)
+#define HW_CLKCTRL_CPU 0x50
+# define GET_CPU_XTAL_DIV(x) (((x) >> 16) & 0x3ff)
+# define GET_CPU_PLL_DIV(x) ((x) & 0x3f)
+#define HW_CLKCTRL_HBUS 0x60
+#define HW_CLKCTRL_XBUS 0x70
+#define HW_CLKCTRL_XTAL 0x080
+#define HW_CLKCTRL_SSP0 0x090
+#define HW_CLKCTRL_SSP1 0x0a0
+#define HW_CLKCTRL_SSP2 0x0b0
+#define HW_CLKCTRL_SSP3 0x0c0
+/* note: no set/clear register! */
+# define CLKCTRL_SSP_CLKGATE (1 << 31)
+# define CLKCTRL_SSP_BUSY (1 << 29)
+# define CLKCTRL_SSP_DIV_FRAC_EN (1 << 9)
+# define CLKCTRL_SSP_DIV_MASK 0x1ff
+# define GET_SSP_DIV(x) ((x) & CLKCTRL_SSP_DIV_MASK)
+# define SET_SSP_DIV(x) ((x) & CLKCTRL_SSP_DIV_MASK)
+#define HW_CLKCTRL_GPMI 0x0d0
+/* note: no set/clear register! */
+#define HW_CLKCTRL_SPDIF 0x0e0
+/* note: no set/clear register! */
+#define HW_CLKCTRL_EMI	0xf0
+/* note: no set/clear register! */
+# define CLKCTRL_EMI_CLKGATE (1 << 31)
+# define GET_EMI_XTAL_DIV(x) (((x) >> 8) & 0xf)
+# define GET_EMI_PLL_DIV(x) ((x) & 0x3f)
+#define HW_CLKCTRL_SAIF0 0x100
+#define HW_CLKCTRL_SAIF1 0x110
+#define HW_CLKCTRL_DIS_LCDIF 0x120
+# define CLKCTRL_DIS_LCDIF_GATE (1 << 31)
+# define CLKCTRL_DIS_LCDIF_BUSY (1 << 29)
+# define SET_DIS_LCDIF_DIV(x) ((x) & 0x1fff)
+# define GET_DIS_LCDIF_DIV(x) ((x) & 0x1fff)
+#define HW_CLKCTRL_ETM 0x130
+#define HW_CLKCTRL_ENET 0x140
+# define SET_CLKCTRL_ENET_DIV(x) (((x) & 0x3f) << 21)
+# define SET_CLKCTRL_ENET_SEL(x) (((x) & 0x3) << 19)
+# define CLKCTRL_ENET_CLK_OUT_EN (1 << 18)
+#define HW_CLKCTRL_HSADC 0x150
+#define HW_CLKCTRL_FLEXCAN 0x160
+#define HW_CLKCTRL_FRAC0 0x1b0
+# define CLKCTRL_FRAC_CLKGATEIO0 (1 << 31)
+# define GET_IO0FRAC(x) (((x) >> 24) & 0x3f)
+# define SET_IO0FRAC(x) (((x) & 0x3f) << 24)
+# define CLKCTRL_FRAC_CLKGATEIO1 (1 << 23)
+# define GET_IO1FRAC(x) (((x) >> 16) & 0x3f)
+# define SET_IO1FRAC(x) (((x) & 0x3f) << 16)
+# define CLKCTRL_FRAC_CLKGATEEMI (1 << 15)
+# define GET_EMIFRAC(x) (((x) >> 8) & 0x3f)
+# define CLKCTRL_FRAC_CLKGATECPU (1 << 7)
+# define GET_CPUFRAC(x) ((x) & 0x3f)
+#define HW_CLKCTRL_FRAC1 0x1c0
+# define CLKCTRL_FRAC_CLKGATEGPMI (1 << 23)
+# define GET_GPMIFRAC(x) (((x) >> 16) & 0x3f)
+# define CLKCTRL_FRAC_CLKGATEHSADC (1 << 15)
+# define GET_HSADCFRAC(x) (((x) >> 8) & 0x3f)
+# define CLKCTRL_FRAC_CLKGATEPIX (1 << 7)
+# define GET_PIXFRAC(x) ((x) & 0x3f)
+# define SET_PIXFRAC(x) ((x) & 0x3f)
+#define HW_CLKCTRL_CLKSEQ 0x1d0
+# define CLKCTRL_CLKSEQ_BYPASS_CPU (1 << 18)
+# define CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF (1 << 14)
+# define CLKCTRL_CLKSEQ_BYPASS_ETM (1 << 8)
+# define CLKCTRL_CLKSEQ_BYPASS_EMI (1 << 7)
+# define CLKCTRL_CLKSEQ_BYPASS_SSP3 (1 << 6)
+# define CLKCTRL_CLKSEQ_BYPASS_SSP2 (1 << 5)
+# define CLKCTRL_CLKSEQ_BYPASS_SSP1 (1 << 4)
+# define CLKCTRL_CLKSEQ_BYPASS_SSP0 (1 << 3)
+# define CLKCTRL_CLKSEQ_BYPASS_GPMI (1 << 2)
+# define CLKCTRL_CLKSEQ_BYPASS_SAIF1 (1 << 1)
+# define CLKCTRL_CLKSEQ_BYPASS_SAIF0 (1 << 0)
+#define HW_CLKCTRL_RESET 0x1e0
+#define HW_CLKCTRL_STATUS 0x1f0
+#define HW_CLKCTRL_VERSION 0x200
+
+unsigned imx_get_mpllclk(void)
+{
+	/* the main PLL runs at 480 MHz */
+	return 480000000;
+}
+
+unsigned imx_get_xtalclk(void)
+{
+	/* the external reference runs at 24 MHz */
+	return 24000000;
+}
+
+unsigned imx_get_fecclk(void)
+{
+	/* this PLL always runs at 50 MHz */
+	return 50000000;
+}
+
+
+/* used for the SDRAM controller */
+unsigned imx_get_emiclk(void)
+{
+	uint32_t reg;
+	unsigned rate;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_EMI) & CLKCTRL_EMI_CLKGATE)
+		return 0;	/* clock is off */
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_EMI)
+		return imx_get_xtalclk() /
+			GET_EMI_XTAL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI));
+
+	rate = imx_get_mpllclk() / 1000;
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC0);
+	if (!(reg & CLKCTRL_FRAC_CLKGATEEMI)) {
+		rate *= 18;
+		rate /= GET_EMIFRAC(reg);
+	}
+
+	return (rate / GET_EMI_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI)))
+				* 1000;
+}
+
+/*
+ * Source of ssp, gpmi, ir
+ * @param index 0 or 1 for ioclk0 or ioclock1
+ */
+unsigned imx_get_ioclk(unsigned index)
+{
+	uint32_t reg;
+	unsigned rate = imx_get_mpllclk() / 1000;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC0);
+	switch (index) {
+	case 0:
+		if (reg & CLKCTRL_FRAC_CLKGATEIO0)
+			return 0;	/* clock is off */
+
+		rate *= 18;
+		rate /= GET_IO0FRAC(reg);
+		break;
+	case 1:
+		if (reg & CLKCTRL_FRAC_CLKGATEIO1)
+			return 0;	/* clock is off */
+
+		rate *= 18;
+		rate /= GET_IO1FRAC(reg);
+		break;
+	}
+
+	return rate * 1000;
+}
+
+/**
+ * Setup a new frequency to the IOCLK domain.
+ * @param index 0 or 1 for ioclk0 or ioclock1
+ * @param nc New frequency in [Hz]
+ *
+ * The FRAC divider for the IOCLK must be between 18 (* 18/18) and 35 (* 18/35)
+ *
+ * ioclock0 is the shared clock source of SSP0/SSP1, ioclock1 the shared clock
+ * source of SSP2/SSP3
+ */
+unsigned imx_set_ioclk(unsigned index, unsigned nc)
+{
+	uint32_t reg;
+	unsigned div;
+
+	nc /= 1000;
+	div = (imx_get_mpllclk() / 1000) * 18;
+	div = DIV_ROUND_CLOSEST(div, nc);
+	if (div > 0x3f)
+		div = 0x3f;
+
+	switch (index) {
+	case 0:
+		reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC0) &
+				~(SET_IO0FRAC(0x3f));
+		/* mask the current settings */
+		writel(reg | SET_IO0FRAC(div), IMX_CCM_BASE + HW_CLKCTRL_FRAC0);
+		/* enable the IO clock at its new frequency */
+		writel(CLKCTRL_FRAC_CLKGATEIO0,
+				IMX_CCM_BASE + HW_CLKCTRL_FRAC0 + BIT_CLR);
+		break;
+	case 1:
+		reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC0) &
+				~(SET_IO1FRAC(0x3f));
+		/* mask the current settings */
+		writel(reg | SET_IO1FRAC(div), IMX_CCM_BASE + HW_CLKCTRL_FRAC0);
+		/* enable the IO clock at its new frequency */
+		writel(CLKCTRL_FRAC_CLKGATEIO1,
+				IMX_CCM_BASE + HW_CLKCTRL_FRAC0 + BIT_CLR);
+		break;
+	}
+
+	return imx_get_ioclk(index);
+}
+
+/* this is CPU core clock */
+unsigned imx_get_armclk(void)
+{
+	uint32_t reg;
+	unsigned rate;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_CPU)
+		return imx_get_xtalclk() /
+			GET_CPU_XTAL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU));
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC0);
+	if (reg & CLKCTRL_FRAC_CLKGATECPU)
+		return 0;	/* should not possible, shouldn't it? */
+
+	rate = (imx_get_mpllclk() / 1000) * 18;
+	rate /= GET_CPUFRAC(reg);
+
+	return (rate / GET_CPU_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU)))
+			* 1000;
+}
+
+/* this is the AHB and APBH bus clock */
+unsigned imx_get_hclk(void)
+{
+	unsigned rate = imx_get_armclk() / 1000;
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x20) {
+		rate *= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+		rate /= 32;
+	} else
+		rate /= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+	return rate * 1000;
+}
+
+/*
+ * Source of UART, debug UART, audio, PWM, dri, timer, digctl
+ */
+unsigned imx_get_xclk(void)
+{
+	/* runs from the 24 MHz crystal reference */
+	unsigned rate = imx_get_xtalclk();
+
+	return rate / (readl(IMX_CCM_BASE + HW_CLKCTRL_XBUS) & 0x3ff);
+}
+
+/**
+ * @param index The SSP unit (0...3)
+ */
+unsigned imx_get_sspclk(unsigned index)
+{
+	unsigned rate, offset, shift, ioclk_index;
+
+	if (index > 3) {
+		pr_debug("Unknown SSP unit: %u\n", index);
+		return 0;
+	}
+
+	ioclk_index = index >> 1;
+
+	offset = HW_CLKCTRL_SSP0 + (0x10 * index);
+	shift = CLKCTRL_CLKSEQ_BYPASS_SSP0 << index;
+
+	if (readl(IMX_CCM_BASE + offset) & CLKCTRL_SSP_CLKGATE)
+		return 0;	/* clock is off */
+
+	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & shift)
+		rate = imx_get_xtalclk();
+	else
+		rate = imx_get_ioclk(ioclk_index);
+
+	return rate / GET_SSP_DIV(readl(IMX_CCM_BASE + offset));
+}
+
+/**
+ * @param index The SSP unit (0...3)
+ * @param nc New frequency in [Hz]
+ * @param high != 0 if ioclk should be the source
+ * @return The new possible frequency
+ */
+unsigned imx_set_sspclk(unsigned index, unsigned nc, int high)
+{
+	uint32_t reg;
+	unsigned ssp_div, offset, shift, ioclk_index;
+
+	if (index > 3) {
+		pr_debug("Unknown SSP unit: %u\n", index);
+		return 0;
+	}
+
+	ioclk_index = index >> 1;
+
+	offset = HW_CLKCTRL_SSP0 + (0x10 * index);
+	shift = CLKCTRL_CLKSEQ_BYPASS_SSP0 << index;
+
+	reg = readl(IMX_CCM_BASE + offset) & ~CLKCTRL_SSP_CLKGATE;
+	/* Datasheet says: Do not change the DIV setting if the clock is off */
+	writel(reg, IMX_CCM_BASE + offset);
+	/* Wait while clock is gated */
+	while (readl(IMX_CCM_BASE + offset) & CLKCTRL_SSP_CLKGATE)
+		;
+
+	if (high)
+		ssp_div = imx_get_ioclk(ioclk_index);
+	else
+		ssp_div = imx_get_xtalclk();
+
+	if (nc > ssp_div) {
+		printf("Cannot setup SSP unit clock to %u kHz, base clock is "
+						"only %u kHz\n", nc, ssp_div);
+		ssp_div = 1;
+	} else {
+		ssp_div = DIV_ROUND_UP(ssp_div, nc);
+		if (ssp_div > CLKCTRL_SSP_DIV_MASK)
+			ssp_div = CLKCTRL_SSP_DIV_MASK;
+	}
+
+	/* Set new divider value */
+	reg = readl(IMX_CCM_BASE + offset) & ~CLKCTRL_SSP_DIV_MASK;
+	writel(reg | SET_SSP_DIV(ssp_div), IMX_CCM_BASE + offset);
+
+	/* Wait until new divider value is set */
+	while (readl(IMX_CCM_BASE + offset) & CLKCTRL_SSP_BUSY)
+		;
+
+	if (high)
+		/* switch to ioclock */
+		writel(shift, IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + BIT_CLR);
+	else
+		/* switch to 24 MHz crystal */
+		writel(shift, IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + BIT_SET);
+
+	return imx_get_sspclk(index);
+}
+
+void imx_enable_enetclk(void)
+{
+	uint32_t reg;
+
+	/* wake up main enet PLL */
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_PLL2CTRL0);
+	if (!(reg & CLKCTRL_PLL2CTRL0_POWER)) {
+		reg |= CLKCTRL_PLL2CTRL0_POWER;
+		writel(reg, IMX_CCM_BASE + HW_CLKCTRL_PLL2CTRL0);
+		udelay(50);	/* wait until this PLL locks */
+	}
+	reg &= ~CLKCTRL_PLL2CTRL0_CLKGATE;
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_PLL2CTRL0);
+
+	writel(SET_CLKCTRL_ENET_DIV(1) | SET_CLKCTRL_ENET_SEL(0) |
+		CLKCTRL_ENET_CLK_OUT_EN, /* FIXME may be platform specific */
+		IMX_CCM_BASE + HW_CLKCTRL_ENET);
+}
+
+void imx_dump_clocks(void)
+{
+	printf("mpll:    %10u kHz\n", imx_get_mpllclk() / 1000);
+	printf("arm:     %10u kHz\n", imx_get_armclk() / 1000);
+	printf("ioclk0:  %10u kHz\n", imx_get_ioclk(0) / 1000);
+	printf("ioclk1:  %10u kHz\n", imx_get_ioclk(1) / 1000);
+	printf("emiclk:  %10u kHz\n", imx_get_emiclk() / 1000);
+	printf("hclk:    %10u kHz\n", imx_get_hclk() / 1000);
+	printf("xclk:    %10u kHz\n", imx_get_xclk() / 1000);
+	printf("ssp0:    %10u kHz\n", imx_get_sspclk(0) / 1000);
+	printf("ssp1:    %10u kHz\n", imx_get_sspclk(1) / 1000);
+	printf("ssp2:    %10u kHz\n", imx_get_sspclk(2) / 1000);
+	printf("ssp3:    %10u kHz\n", imx_get_sspclk(3) / 1000);
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
