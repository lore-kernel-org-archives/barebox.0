Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-v.mail.gandi.net ([217.70.178.78])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUmWD-0005j8-Qj
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 19:35:15 +0000
Received: from d4rwin.no-ip.org (139.Red-83-38-127.dynamicIP.rima-tde.net
	[83.38.127.139])
	by relay4-v.mail.gandi.net (Postfix) with ESMTP id DA983BA3E
	for <barebox@lists.infradead.org>; Tue, 12 Jan 2010 20:35:03 +0100 (CET)
Date: Tue, 12 Jan 2010 20:30:36 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100112193036.GM14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] ARM: Add support for EP93xx SoCs
To: barebox@lists.infradead.org

Add support for the Cirrus Logic EP93xx platform

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 arch/arm/Kconfig                                |    5 +
 arch/arm/Makefile                               |    9 +
 arch/arm/lib/barebox.lds.S                      |    5 +
 arch/arm/mach-ep93xx/Kconfig                    |  438 +++++++++++++++++
 arch/arm/mach-ep93xx/Makefile                   |    3 +
 arch/arm/mach-ep93xx/clocksource.c              |   96 ++++
 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h |  600 +++++++++++++++++++++++
 arch/arm/mach-ep93xx/led.c                      |   62 +++
 arch/arm/mach-ep93xx/led.h                      |   26 +
 arch/arm/mach-ep93xx/lowlevel_init.S            |   64 +++
 10 files changed, 1308 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-ep93xx/Kconfig
 create mode 100644 arch/arm/mach-ep93xx/Makefile
 create mode 100644 arch/arm/mach-ep93xx/clocksource.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
 create mode 100644 arch/arm/mach-ep93xx/led.c
 create mode 100644 arch/arm/mach-ep93xx/led.h
 create mode 100644 arch/arm/mach-ep93xx/lowlevel_init.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c091a99..414a013 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -31,6 +31,10 @@ config ARCH_AT91RM9200
 	bool "Atmel AT91RM9200"
 	select CPU_ARM920T
 
+config ARCH_EP93XX
+	bool "Cirrus Logic EP93xx"
+	select CPU_ARM920T
+
 config ARCH_IMX
 	bool "Freescale iMX-based"
 	select GENERIC_GPIO
@@ -51,6 +55,7 @@ endchoice
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-at91rm9200/Kconfig
+source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-omap/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 47b002f..ede2085 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -39,6 +39,7 @@ CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 # by CONFIG_* macro name.
 machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_AT91RM9200)	:= at91rm9200
+machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
@@ -51,6 +52,14 @@ board-$(CONFIG_MACH_A9M2440)			:= a9m2440
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_ECO920)			:= eco920
+board-$(CONFIG_MACH_EDB9301)			:= edb93xx
+board-$(CONFIG_MACH_EDB9302)			:= edb93xx
+board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
+board-$(CONFIG_MACH_EDB9307)			:= edb93xx
+board-$(CONFIG_MACH_EDB9307A)			:= edb93xx
+board-$(CONFIG_MACH_EDB93012)			:= edb93xx
+board-$(CONFIG_MACH_EDB9315)			:= edb93xx
+board-$(CONFIG_MACH_EDB9315A)			:= edb93xx
 board-$(CONFIG_MACH_EUKREA_CPUIMX27)		:= eukrea_cpuimx27
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index c8d1bb9..a5eaefa 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -39,6 +39,11 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_entry*)
+#ifdef CONFIG_ARCH_EP93XX
+		/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
+	  . = 0x1000;
+	  LONG(0x53555243) /* 'CRUS' */
+#endif
 		*(.text_bare_init*)
 		*(.text*)
 	}
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
new file mode 100644
index 0000000..ed6e986
--- /dev/null
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -0,0 +1,438 @@
+if ARCH_EP93XX
+
+config EP93XX_SDCE0_PHYS_OFFSET
+	bool
+
+config EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	bool
+
+comment "Cirrus EP93xx System-on-Chip"
+
+choice
+	prompt "Cirrus Logic EP93XX Processor"
+
+config ARCH_EP9301
+	bool "EP9301"
+
+config ARCH_EP9302
+	bool "EP9302"
+
+config ARCH_EP9307
+	bool "EP9307"
+
+config ARCH_EP9312
+	bool "EP9312"
+
+config ARCH_EP9315
+	bool "EP9315"
+
+endchoice
+
+# ----------------------------------------------------------
+
+if ARCH_EP9301
+
+choice
+	prompt "EP9301 Board Type"
+
+config MACH_EDB9301
+	bool "Cirrus Logic EDB9301"
+	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9301 Evaluation board
+
+endchoice
+
+if MACH_EDB9301
+
+config BOARDINFO
+	default "Cirrus Logic EDB9301"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x05700000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 4
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0x00000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0x01000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK2_BASE
+	hex
+	default 0x04000000
+
+config EP93XX_SDRAM_BANK2_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK3_BASE
+	hex
+	default 0x05000000
+
+config EP93XX_SDRAM_BANK3_SIZE
+	hex
+	default 0x00800000
+
+endif
+
+endif
+
+# ----------------------------------------------------------
+
+if ARCH_EP9302
+
+choice
+	prompt "EP9302 Board Type"
+
+config MACH_EDB9302
+	bool "Cirrus Logic EDB9302"
+	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9302 Evaluation board
+
+config MACH_EDB9302A
+	bool "Cirrus Logic EDB9302A"
+	select EP93XX_SDCE0_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9302A Evaluation board
+
+endchoice
+
+if MACH_EDB9302
+
+config BOARDINFO
+	default "Cirrus Logic EDB9302"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x05700000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 4
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0x00000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0x01000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK2_BASE
+	hex
+	default 0x04000000
+
+config EP93XX_SDRAM_BANK2_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK3_BASE
+	hex
+	default 0x05000000
+
+config EP93XX_SDRAM_BANK3_SIZE
+	hex
+	default 0x00800000
+
+endif
+
+if MACH_EDB9302A
+
+config BOARDINFO
+	default "Cirrus Logic EDB9302A"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xc5700000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 4
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0xc0000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0xc1000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK2_BASE
+	hex
+	default 0xc4000000
+
+config EP93XX_SDRAM_BANK2_SIZE
+	hex
+	default 0x00800000
+
+config EP93XX_SDRAM_BANK3_BASE
+	hex
+	default 0xc5000000
+
+config EP93XX_SDRAM_BANK3_SIZE
+	hex
+	default 0x00800000
+
+endif
+
+endif
+
+# ----------------------------------------------------------
+
+if ARCH_EP9307
+
+choice
+	prompt "EP9307 Board Type"
+
+config MACH_EDB9307
+	bool "Cirrus Logic EDB9307"
+	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9307 Evaluation board
+
+config MACH_EDB9307A
+	bool "Cirrus Logic EDB9307A"
+	select EP93XX_SDCE0_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9307A Evaluation board
+
+endchoice
+
+if MACH_EDB9307
+
+config BOARDINFO
+	default "Cirrus Logic EDB9307"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x01f00000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 2
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0x00000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x02000000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0x04000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x02000000
+
+endif
+
+if MACH_EDB9307A
+
+config BOARDINFO
+	default "Cirrus Logic EDB9307A"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xc1f00000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 2
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0xc0000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x02000000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0xc4000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x02000000
+
+endif
+
+endif
+
+# ----------------------------------------------------------
+
+if ARCH_EP9312
+
+choice
+	prompt "EP9312 Board Type"
+
+config MACH_EDB9312
+	bool "Cirrus Logic EDB9312"
+	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9312 Evaluation board
+
+endchoice
+
+if MACH_EDB9312
+
+config BOARDINFO
+	default "Cirrus Logic EDB9312"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x01f00000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 2
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0x00000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x02000000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0x04000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x02000000
+
+endif
+
+endif
+
+# ----------------------------------------------------------
+
+if ARCH_EP9315
+
+choice
+	prompt "EP9315 Board Type"
+
+config MACH_EDB9315
+	bool "Cirrus Logic EDB9315"
+	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9315 Evaluation board
+
+config MACH_EDB9315A
+	bool "Cirrus Logic EDB9315A"
+	select EP93XX_SDCE0_PHYS_OFFSET
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using Cirrus Logic's EDB9315A Evaluation board
+
+endchoice
+
+if MACH_EDB9315
+
+config BOARDINFO
+	default "Cirrus Logic EDB9315"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x01f00000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 2
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0x00000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x02000000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0x04000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x02000000
+
+endif
+
+if MACH_EDB9315A
+
+config BOARDINFO
+	default "Cirrus Logic EDB9315A"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xc1f00000
+
+config EP93XX_SDRAM_NUM_BANKS
+	int
+	default 2
+
+config EP93XX_SDRAM_BANK0_BASE
+	hex
+	default 0xc0000000
+
+config EP93XX_SDRAM_BANK0_SIZE
+	hex
+	default 0x02000000
+
+config EP93XX_SDRAM_BANK1_BASE
+	hex
+	default 0xc4000000
+
+config EP93XX_SDRAM_BANK1_SIZE
+	hex
+	default 0x02000000
+
+endif
+
+endif
+
+endif
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
new file mode 100644
index 0000000..d5786db
--- /dev/null
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -0,0 +1,3 @@
+obj-y += clocksource.o led.o
+
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
new file mode 100644
index 0000000..2a7d90e
--- /dev/null
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -0,0 +1,96 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+#include <mach/ep93xx-regs.h>
+
+#define TIMER_CLKSEL		(1 << 3)
+#define TIMER_MODE		(1 << 6)
+#define TIMER_ENABLE		(1 << 7)
+
+#define TIMER_FREQ		508469
+
+static uint64_t ep93xx_clocksource_read(void)
+{
+	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
+
+	return 0xffffffff - readl(&timer->timer3.value);
+}
+
+static struct clocksource cs = {
+	.read	= ep93xx_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 10,
+};
+
+static int clocksource_init(void)
+{
+	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
+
+	/* use timer 3 with 508KHz and free running */
+	writel(TIMER_CLKSEL,
+	       &timer->timer3.control);
+
+	/* load timer 3 with max value */
+	writel(0xffffffff, &timer->timer3.load);
+
+	/* enable timer 3 with 508KHz and periodic mode */
+	writel(TIMER_ENABLE | TIMER_MODE | TIMER_CLKSEL,
+	       &timer->timer3.control);
+
+	cs.mult = clocksource_hz2mult(TIMER_FREQ, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
+
+/*
+ * Reset the cpu
+ */
+void reset_cpu(ulong ignored)
+{
+	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
+	uint32_t value;
+
+	/* Unlock DeviceCfg and set SWRST */
+	writel(0xAA, &syscon->sysswlock);
+	value = readl(&syscon->devicecfg);
+	value |= SYSCON_DEVICECFG_SWRST;
+	writel(value, &syscon->devicecfg);
+
+	/* Unlock DeviceCfg and clear SWRST */
+	writel(0xAA, &syscon->sysswlock);
+	value = readl(&syscon->devicecfg);
+	value &= ~SYSCON_DEVICECFG_SWRST;
+	writel(value, &syscon->devicecfg);
+
+	/* Dying... */
+	while (1)
+		; /* noop */
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h b/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
new file mode 100644
index 0000000..50bb0eb
--- /dev/null
+++ b/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
@@ -0,0 +1,600 @@
+/* -----------------------------------------------------------------------------
+ * Cirrus Logic EP93xx register definitions.
+ *
+ * Copyright (C) 2009
+ * Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * Copyright (C) 2006
+ * Dominic Rath <Dominic.Rath@gmx.de>
+ *
+ * Copyright (C) 2004, 2005
+ * Cory T. Tusar, Videon Central, Inc., <ctusar@videon-central.com>
+ *
+ * Based in large part on linux/include/asm-arm/arch-ep93xx/regmap.h, which is
+ *
+ * Copyright (C) 2004 Ray Lehtiniemi
+ * Copyright (C) 2003 Cirrus Logic, Inc
+ * Copyright (C) 1999 ARM Limited.
+ *
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
+ * or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU General Public License
+ * for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#ifndef __ASSEMBLY__
+#include <linux/types.h>
+#endif
+
+#define EP93XX_AHB_BASE			0x80000000
+#define EP93XX_APB_BASE			0x80800000
+
+/* -----------------------------------------------------------------------------
+ * 0x80000000 - 0x8000FFFF: DMA
+ */
+#define DMA_OFFSET			0x000000
+#define DMA_BASE			(EP93XX_AHB_BASE | DMA_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct dma_channel {
+	uint32_t control;
+	uint32_t interrupt;
+	uint32_t ppalloc;
+	uint32_t status;
+	uint32_t reserved0;
+	uint32_t remain;
+	uint32_t reserved1[2];
+	uint32_t maxcnt0;
+	uint32_t base0;
+	uint32_t current0;
+	uint32_t reserved2;
+	uint32_t maxcnt1;
+	uint32_t base1;
+	uint32_t current1;
+	uint32_t reserved3;
+};
+
+struct dma_regs {
+	struct dma_channel m2p_channel_0;
+	struct dma_channel m2p_channel_1;
+	struct dma_channel m2p_channel_2;
+	struct dma_channel m2p_channel_3;
+	struct dma_channel m2m_channel_0;
+	struct dma_channel m2m_channel_1;
+	struct dma_channel reserved0[2];
+	struct dma_channel m2p_channel_5;
+	struct dma_channel m2p_channel_4;
+	struct dma_channel m2p_channel_7;
+	struct dma_channel m2p_channel_6;
+	struct dma_channel m2p_channel_9;
+	struct dma_channel m2p_channel_8;
+	uint32_t channel_arbitration;
+	uint32_t reserved[15];
+	uint32_t global_interrupt;
+};
+#endif
+
+/* -----------------------------------------------------------------------------
+ * 0x80010000 - 0x8001FFFF: Ethernet MAC
+ */
+#define MAC_OFFSET			0x010000
+#define MAC_BASE			(EP93XX_AHB_BASE | MAC_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct mac_queue {
+	uint32_t badd;
+	union { /* deal with half-word aligned registers */
+		uint32_t blen;
+		union {
+			uint16_t filler;
+			uint16_t curlen;
+		};
+	};
+	uint32_t curadd;
+};
+
+struct mac_regs {
+	uint32_t rxctl;
+	uint32_t txctl;
+	uint32_t testctl;
+	uint32_t reserved0;
+	uint32_t miicmd;
+	uint32_t miidata;
+	uint32_t miists;
+	uint32_t reserved1;
+	uint32_t selfctl;
+	uint32_t inten;
+	uint32_t intstsp;
+	uint32_t intstsc;
+	uint32_t reserved2[2];
+	uint32_t diagad;
+	uint32_t diagdata;
+	uint32_t gt;
+	uint32_t fct;
+	uint32_t fcf;
+	uint32_t afp;
+	union {
+		struct {
+			uint32_t indad;
+			uint32_t indad_upper;
+		};
+		uint32_t hashtbl;
+	};
+	uint32_t reserved3[2];
+	uint32_t giintsts;
+	uint32_t giintmsk;
+	uint32_t giintrosts;
+	uint32_t giintfrc;
+	uint32_t txcollcnt;
+	uint32_t rxmissnct;
+	uint32_t rxruntcnt;
+	uint32_t reserved4;
+	uint32_t bmctl;
+	uint32_t bmsts;
+	uint32_t rxbca;
+	uint32_t reserved5;
+	struct mac_queue rxdq;
+	uint32_t rxdqenq;
+	struct mac_queue rxstsq;
+	uint32_t rxstsqenq;
+	struct mac_queue txdq;
+	uint32_t txdqenq;
+	struct mac_queue txstsq;
+	uint32_t reserved6;
+	uint32_t rxbufthrshld;
+	uint32_t txbufthrshld;
+	uint32_t rxststhrshld;
+	uint32_t txststhrshld;
+	uint32_t rxdthrshld;
+	uint32_t txdthrshld;
+	uint32_t maxfrmlen;
+	uint32_t maxhdrlen;
+};
+#endif
+
+#define SELFCTL_RWP		(1 << 7)
+#define SELFCTL_GPO0		(1 << 5)
+#define SELFCTL_PUWE		(1 << 4)
+#define SELFCTL_PDWE		(1 << 3)
+#define SELFCTL_MIIL		(1 << 2)
+#define SELFCTL_RESET		(1 << 0)
+
+#define INTSTS_RWI		(1 << 30)
+#define INTSTS_RXMI		(1 << 29)
+#define INTSTS_RXBI		(1 << 28)
+#define INTSTS_RXSQI		(1 << 27)
+#define INTSTS_TXLEI		(1 << 26)
+#define INTSTS_ECIE		(1 << 25)
+#define INTSTS_TXUHI		(1 << 24)
+#define INTSTS_MOI		(1 << 18)
+#define INTSTS_TXCOI		(1 << 17)
+#define INTSTS_RXROI		(1 << 16)
+#define INTSTS_MIII		(1 << 12)
+#define INTSTS_PHYI		(1 << 11)
+#define INTSTS_TI		(1 << 10)
+#define INTSTS_AHBE		(1 << 8)
+#define INTSTS_OTHER		(1 << 4)
+#define INTSTS_TXSQ		(1 << 3)
+#define INTSTS_RXSQ		(1 << 2)
+
+#define BMCTL_MT		(1 << 13)
+#define BMCTL_TT		(1 << 12)
+#define BMCTL_UNH		(1 << 11)
+#define BMCTL_TXCHR		(1 << 10)
+#define BMCTL_TXDIS		(1 << 9)
+#define BMCTL_TXEN		(1 << 8)
+#define BMCTL_EH2		(1 << 6)
+#define BMCTL_EH1		(1 << 5)
+#define BMCTL_EEOB		(1 << 4)
+#define BMCTL_RXCHR		(1 << 2)
+#define BMCTL_RXDIS		(1 << 1)
+#define BMCTL_RXEN		(1 << 0)
+
+#define BMSTS_TXACT		(1 << 7)
+#define BMSTS_TP		(1 << 4)
+#define BMSTS_RXACT		(1 << 3)
+#define BMSTS_QID_MASK		0x07
+#define BMSTS_QID_RXDATA	0x00
+#define BMSTS_QID_TXDATA	0x01
+#define BMSTS_QID_RXSTS		0x02
+#define BMSTS_QID_TXSTS		0x03
+#define BMSTS_QID_RXDESC	0x04
+#define BMSTS_QID_TXDESC	0x05
+
+#define AFP_MASK		0x07
+#define AFP_IAPRIMARY		0x00
+#define AFP_IASECONDARY1	0x01
+#define AFP_IASECONDARY2	0x02
+#define AFP_IASECONDARY3	0x03
+#define AFP_TX			0x06
+#define AFP_HASH		0x07
+
+#define RXCTL_PAUSEA		(1 << 20)
+#define RXCTL_RXFCE1		(1 << 19)
+#define RXCTL_RXFCE0		(1 << 18)
+#define RXCTL_BCRC		(1 << 17)
+#define RXCTL_SRXON		(1 << 16)
+#define RXCTL_RCRCA		(1 << 13)
+#define RXCTL_RA		(1 << 12)
+#define RXCTL_PA		(1 << 11)
+#define RXCTL_BA		(1 << 10)
+#define RXCTL_MA		(1 << 9)
+#define RXCTL_IAHA		(1 << 8)
+#define RXCTL_IA3		(1 << 3)
+#define RXCTL_IA2		(1 << 2)
+#define RXCTL_IA1		(1 << 1)
+#define RXCTL_IA0		(1 << 0)
+
+#define TXCTL_DEFDIS		(1 << 7)
+#define TXCTL_MBE		(1 << 6)
+#define TXCTL_ICRC		(1 << 5)
+#define TXCTL_TPD		(1 << 4)
+#define TXCTL_OCOLL		(1 << 3)
+#define TXCTL_SP		(1 << 2)
+#define TXCTL_PB		(1 << 1)
+#define TXCTL_STXON		(1 << 0)
+
+#define MIICMD_REGAD_MASK	(0x001F)
+#define MIICMD_PHYAD_MASK	(0x03E0)
+#define MIICMD_OPCODE_MASK	(0xC000)
+#define MIICMD_PHYAD_8950	(0x0000)
+#define MIICMD_OPCODE_READ	(0x8000)
+#define MIICMD_OPCODE_WRITE	(0x4000)
+
+#define MIISTS_BUSY		(1 << 0)
+
+/* -----------------------------------------------------------------------------
+ * 0x80020000 - 0x8002FFFF: USB OHCI
+ */
+#define USB_OFFSET			0x020000
+#define USB_BASE			(EP93XX_AHB_BASE | USB_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80030000 - 0x8003FFFF: Raster engine
+ */
+#if (defined(CONFIG_EP9307) || defined(CONFIG_EP9312) || defined(CONFIG_EP9315))
+#define RASTER_OFFSET			0x030000
+#define RASTER_BASE			(EP93XX_AHB_BASE | RASTER_OFFSET)
+#endif
+
+/* -----------------------------------------------------------------------------
+ * 0x80040000 - 0x8004FFFF: Graphics accelerator
+ */
+#if defined(CONFIG_EP9315)
+#define GFX_OFFSET			0x040000
+#define GFX_BASE			(EP93XX_AHB_BASE | GFX_OFFSET)
+#endif
+
+/* -----------------------------------------------------------------------------
+ * 0x80050000 - 0x8005FFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x80060000 - 0x8006FFFF: SDRAM controller
+ */
+#define SDRAM_OFFSET			0x060000
+#define SDRAM_BASE			(EP93XX_AHB_BASE | SDRAM_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct sdram_regs {
+	uint32_t reserved;
+	uint32_t glconfig;
+	uint32_t refrshtimr;
+	uint32_t bootsts;
+	uint32_t devcfg0;
+	uint32_t devcfg1;
+	uint32_t devcfg2;
+	uint32_t devcfg3;
+};
+#endif
+
+#define SDRAM_DEVCFG_EXTBUSWIDTH	(1 << 2)
+#define SDRAM_DEVCFG_BANKCOUNT		(1 << 3)
+#define SDRAM_DEVCFG_SROMLL		(1 << 5)
+#define SDRAM_DEVCFG_CASLAT_2		0x00010000
+#define SDRAM_DEVCFG_RASTOCAS_2		0x00200000
+
+#define GLCONFIG_INIT			(1 << 0)
+#define GLCONFIG_MRS			(1 << 1)
+#define GLCONFIG_SMEMBUSY		(1 << 5)
+#define GLCONFIG_LCR			(1 << 6)
+#define GLCONFIG_REARBEN		(1 << 7)
+#define GLCONFIG_CLKSHUTDOWN		(1 << 30)
+#define GLCONFIG_CKE			(1 << 31)
+
+/* -----------------------------------------------------------------------------
+ * 0x80070000 - 0x8007FFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x80080000 - 0x8008FFFF: SRAM controller & PCMCIA
+ */
+#define SMC_OFFSET			0x080000
+#define SMC_BASE			(EP93XX_AHB_BASE | SMC_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct smc_regs {
+	uint32_t bcr0;
+	uint32_t bcr1;
+	uint32_t bcr2;
+	uint32_t bcr3;
+	uint32_t reserved0[2];
+	uint32_t bcr6;
+	uint32_t bcr7;
+#if defined(CONFIG_EP9315)
+	uint32_t pcattribute;
+	uint32_t pccommon;
+	uint32_t pcio;
+	uint32_t reserved1[5];
+	uint32_t pcmciactrl;
+#endif
+};
+#endif
+
+#define SMC_BCR_IDCY_SHIFT	0
+#define SMC_BCR_WST1_SHIFT	5
+#define SMC_BCR_BLE		(1 << 10)
+#define SMC_BCR_WST2_SHIFT	11
+#define SMC_BCR_MW_SHIFT	28
+
+/* -----------------------------------------------------------------------------
+ * 0x80090000 - 0x8009FFFF: Boot ROM
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x800A0000 - 0x800AFFFF: IDE interface
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x800B0000 - 0x800BFFFF: VIC1
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x800C0000 - 0x800CFFFF: VIC2
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x800D0000 - 0x800FFFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x80800000 - 0x8080FFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x80810000 - 0x8081FFFF: Timers
+ */
+#define TIMER_OFFSET		0x010000
+#define TIMER_BASE		(EP93XX_APB_BASE | TIMER_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct timer {
+	uint32_t load;
+	uint32_t value;
+	uint32_t control;
+	uint32_t clear;
+};
+
+struct timer4 {
+	uint32_t value_low;
+	uint32_t value_high;
+};
+
+struct timer_regs {
+	struct timer timer1;
+	uint32_t reserved0[4];
+	struct timer timer2;
+	uint32_t reserved1[12];
+	struct timer4 timer4;
+	uint32_t reserved2[6];
+	struct timer timer3;
+};
+#endif
+
+/* -----------------------------------------------------------------------------
+ * 0x80820000 - 0x8082FFFF: I2S
+ */
+#define I2S_OFFSET		0x020000
+#define I2S_BASE		(EP93XX_APB_BASE | I2S_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80830000 - 0x8083FFFF: Security
+ */
+#define SECURITY_OFFSET		0x030000
+#define SECURITY_BASE		(EP93XX_APB_BASE | SECURITY_OFFSET)
+
+#define EXTENSIONID		(SECURITY_BASE + 0x2714)
+
+/* -----------------------------------------------------------------------------
+ * 0x80840000 - 0x8084FFFF: GPIO
+ */
+#define GPIO_OFFSET		0x040000
+#define GPIO_BASE		(EP93XX_APB_BASE | GPIO_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct gpio_int {
+	uint32_t inttype1;
+	uint32_t inttype2;
+	uint32_t eoi;
+	uint32_t inten;
+	uint32_t intsts;
+	uint32_t rawintsts;
+	uint32_t db;
+};
+
+struct gpio_regs {
+	uint32_t padr;
+	uint32_t pbdr;
+	uint32_t pcdr;
+	uint32_t pddr;
+	uint32_t paddr;
+	uint32_t pbddr;
+	uint32_t pcddr;
+	uint32_t pdddr;
+	uint32_t pedr;
+	uint32_t peddr;
+	uint32_t reserved0[2];
+	uint32_t pfdr;
+	uint32_t pfddr;
+	uint32_t pgdr;
+	uint32_t pgddr;
+	uint32_t phdr;
+	uint32_t phddr;
+	uint32_t reserved1;
+	uint32_t finttype1;
+	uint32_t finttype2;
+	uint32_t reserved2;
+	struct gpio_int pfint;
+	uint32_t reserved3[10];
+	struct gpio_int paint;
+	struct gpio_int pbint;
+	uint32_t eedrive;
+};
+#endif
+
+/* -----------------------------------------------------------------------------
+ * 0x80850000 - 0x8087FFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x80880000 - 0x8088FFFF: AAC
+ */
+#define AAC_OFFSET		0x080000
+#define AAC_BASE		(EP93XX_APB_BASE | AAC_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80890000 - 0x8089FFFF: Reserved
+ */
+
+/* -----------------------------------------------------------------------------
+ * 0x808A0000 - 0x808AFFFF: SPI
+ */
+#define SPI_OFFSET		0x0A0000
+#define SPI_BASE		(EP93XX_APB_BASE | SPI_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x808B0000 - 0x808BFFFF: IrDA
+ */
+#define IRDA_OFFSET		0x0B0000
+#define IRDA_BASE		(EP93XX_APB_BASE | IRDA_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x808C0000 - 0x808CFFFF: UART1
+ */
+#define UART1_OFFSET		0x0C0000
+#define UART1_BASE		(EP93XX_APB_BASE | UART1_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x808D0000 - 0x808DFFFF: UART2
+ */
+#define UART2_OFFSET		0x0D0000
+#define UART2_BASE		(EP93XX_APB_BASE | UART2_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x808E0000 - 0x808EFFFF: UART3
+ */
+#define UART3_OFFSET		0x0E0000
+#define UART3_BASE		(EP93XX_APB_BASE | UART3_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x808F0000 - 0x808FFFFF: Key Matrix
+ */
+#define KEY_OFFSET		0x0F0000
+#define KEY_BASE		(EP93XX_APB_BASE | KEY_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80900000 - 0x8090FFFF: Touchscreen
+ */
+#define TOUCH_OFFSET		0x900000
+#define TOUCH_BASE		(EP93XX_APB_BASE | TOUCH_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80910000 - 0x8091FFFF: Pulse Width Modulation
+ */
+#define PWM_OFFSET		0x910000
+#define PWM_BASE		(EP93XX_APB_BASE | PWM_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80920000 - 0x8092FFFF: Real time clock
+ */
+#define RTC_OFFSET		0x920000
+#define RTC_BASE		(EP93XX_APB_BASE | RTC_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80930000 - 0x8093FFFF: Syscon
+ */
+#define SYSCON_OFFSET		0x930000
+#define SYSCON_BASE		(EP93XX_APB_BASE | SYSCON_OFFSET)
+
+#ifndef __ASSEMBLY__
+struct syscon_regs {
+	uint32_t pwrsts;
+	uint32_t pwrcnt;
+	uint32_t halt;
+	uint32_t stby;
+	uint32_t reserved0[2];
+	uint32_t teoi;
+	uint32_t stfclr;
+	uint32_t clkset1;
+	uint32_t clkset2;
+	uint32_t reserved1[6];
+	uint32_t scratch0;
+	uint32_t scratch1;
+	uint32_t reserved2[2];
+	uint32_t apbwait;
+	uint32_t bustmstrarb;
+	uint32_t bootmodeclr;
+	uint32_t reserved3[9];
+	uint32_t devicecfg;
+	uint32_t vidclkdiv;
+	uint32_t mirclkdiv;
+	uint32_t i2sclkdiv;
+	uint32_t keytchclkdiv;
+	uint32_t chipid;
+	uint32_t syscfg;
+	uint32_t reserved4[8];
+	uint32_t sysswlock;
+};
+#else
+#define SYSCON_SCRATCH0		(SYSCON_BASE + 0x0040)
+#endif
+
+#define SYSCON_PWRCNT_UART_BAUD			(1 << 29)
+
+#define SYSCON_CLKSET_PLL_X2IPD_SHIFT		0
+#define SYSCON_CLKSET_PLL_X2FBD2_SHIFT		5
+#define SYSCON_CLKSET_PLL_X1FBD1_SHIFT		11
+#define SYSCON_CLKSET_PLL_PS_SHIFT		16
+#define SYSCON_CLKSET1_PCLK_DIV_SHIFT		18
+#define SYSCON_CLKSET1_HCLK_DIV_SHIFT		20
+#define SYSCON_CLKSET1_NBYP1			(1 << 23)
+#define SYSCON_CLKSET1_FCLK_DIV_SHIFT		25
+
+#define SYSCON_CLKSET2_PLL2_EN			(1 << 18)
+#define SYSCON_CLKSET2_NBYP2			(1 << 19)
+#define SYSCON_CLKSET2_USB_DIV_SHIFT		28
+
+#define SYSCON_CHIPID_REV_MASK			0xF0000000
+#define SYSCON_DEVICECFG_SWRST			(1 << 31)
+
+/* -----------------------------------------------------------------------------
+ * 0x80930000 - 0x8093FFFF: Watchdog Timer
+ */
+#define WATCHDOG_OFFSET		0x940000
+#define WATCHDOG_BASE		(EP93XX_APB_BASE | WATCHDOG_OFFSET)
+
+/* -----------------------------------------------------------------------------
+ * 0x80950000 - 0x9000FFFF: Reserved
+ */
+
diff --git a/arch/arm/mach-ep93xx/led.c b/arch/arm/mach-ep93xx/led.c
new file mode 100644
index 0000000..6d6b902
--- /dev/null
+++ b/arch/arm/mach-ep93xx/led.c
@@ -0,0 +1,62 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <mach/ep93xx-regs.h>
+
+#define GREEN_LED_POS		0x01
+#define RED_LED_POS		0x02
+
+inline void switch_LED_on(uint32_t bit_pos)
+{
+	register struct gpio_regs *gpio = (struct gpio_regs *)GPIO_BASE;
+
+	writel(readl(&gpio->pedr) | bit_pos, &gpio->pedr);
+}
+
+inline void switch_LED_off(uint32_t bit_pos)
+{
+	register struct gpio_regs *gpio = (struct gpio_regs *)GPIO_BASE;
+
+	writel(readl(&gpio->pedr) & ~bit_pos, &gpio->pedr);
+}
+
+void red_LED_on(void)
+{
+	switch_LED_on(RED_LED_POS);
+}
+
+void red_LED_off(void)
+{
+	switch_LED_off(RED_LED_POS);
+}
+
+void green_LED_on(void)
+{
+	switch_LED_on(GREEN_LED_POS);
+}
+
+void green_LED_off(void)
+{
+	switch_LED_off(GREEN_LED_POS);
+}
diff --git a/arch/arm/mach-ep93xx/led.h b/arch/arm/mach-ep93xx/led.h
new file mode 100644
index 0000000..db9512f
--- /dev/null
+++ b/arch/arm/mach-ep93xx/led.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+extern void red_LED_on(void);
+extern void red_LED_off(void);
+extern void green_LED_on(void);
+extern void green_LED_off(void);
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
new file mode 100644
index 0000000..27c2c90
--- /dev/null
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -0,0 +1,64 @@
+/*
+ * Low-level initialization for EP93xx
+ *
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * Copyright (C) 2006 Dominic Rath <Dominic.Rath@gmx.de>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <mach/ep93xx-regs.h>
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+	/* backup return address */
+	ldr r1, =SYSCON_SCRATCH0
+	str lr, [r1]
+
+	/* Turn on both LEDs */
+	bl red_LED_on
+	bl green_LED_on
+
+	/* Configure flash wait states before we switch to the PLL */
+	bl flash_cfg
+
+	/* Set up PLL */
+	bl pll_cfg
+
+	/* Turn off the Green LED and leave the Red LED on */
+	bl green_LED_off
+
+	/* Setup SDRAM */
+	bl sdram_cfg
+
+	/* Turn on Green LED, Turn off the Red LED */
+	bl green_LED_on
+	bl red_LED_off
+
+	/* switch to async mode */
+	mrc p15, 0, r0, c1, c0, 0
+	orr r0, r0, #0xc0000000
+	mcr p15, 0, r0, c1, c0, 0
+
+	/* restore return address */
+	ldr r1, =SYSCON_SCRATCH0
+	ldr lr, [r1]
+
+	mov pc, lr
-- 
1.6.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
