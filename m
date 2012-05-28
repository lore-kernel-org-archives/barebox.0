Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYv4R-0007yJ-6F
 for barebox@lists.infradead.org; Mon, 28 May 2012 08:12:57 +0000
Received: by lbbgg6 with SMTP id gg6so2338948lbb.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 01:12:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 28 May 2012 12:12:32 +0400
Message-Id: <1338192756-3688-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v20120528 1/5] ARM: initial Tegra support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                            |    6 +
 arch/arm/Makefile                           |    1 +
 arch/arm/mach-tegra/Kconfig                 |    7 +
 arch/arm/mach-tegra/Makefile                |    2 +
 arch/arm/mach-tegra/clock.c                 |   59 ++++++
 arch/arm/mach-tegra/include/mach/debug_ll.h |   45 +++++
 arch/arm/mach-tegra/include/mach/iomap.h    |  292 +++++++++++++++++++++++++++
 arch/arm/mach-tegra/reset.c                 |   42 ++++
 8 files changed, 454 insertions(+)
 create mode 100644 arch/arm/mach-tegra/Kconfig
 create mode 100644 arch/arm/mach-tegra/Makefile
 create mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-tegra/include/mach/iomap.h
 create mode 100644 arch/arm/mach-tegra/reset.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f465084..3eada5b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,6 +83,11 @@ config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
 
+config ARCH_TEGRA
+	bool "Nvidia Tegra-based boards"
+	select CPU_ARM926T
+	select HAS_DEBUG_LL
+
 endchoice
 
 source arch/arm/cpu/Kconfig
@@ -96,6 +101,7 @@ source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
+source arch/arm/mach-tegra/Kconfig
 
 config ARM_ASM_UNIFIED
 	bool
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 40291aa..ddff124 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -61,6 +61,7 @@ machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
+machine-$(CONFIG_ARCH_TEGRA)		:= tegra
 
 # Board directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
new file mode 100644
index 0000000..b0cc3cd
--- /dev/null
+++ b/arch/arm/mach-tegra/Kconfig
@@ -0,0 +1,7 @@
+if ARCH_TEGRA
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x31fc0000
+
+endif
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
new file mode 100644
index 0000000..11915e5
--- /dev/null
+++ b/arch/arm/mach-tegra/Makefile
@@ -0,0 +1,2 @@
+obj-y += clock.o
+obj-y += reset.o
diff --git a/arch/arm/mach-tegra/clock.c b/arch/arm/mach-tegra/clock.c
new file mode 100644
index 0000000..0881698
--- /dev/null
+++ b/arch/arm/mach-tegra/clock.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/**
+ * @file
+ * @brief Clocksource based on Tegra internal timer
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/iomap.h>
+
+static void __iomem *timer_reg_base = (void __iomem *) (TEGRA_TMR1_BASE);
+
+#define timer_writel(value, reg) \
+	__raw_writel(value, (u32)timer_reg_base + (reg))
+#define timer_readl(reg) \
+	__raw_readl((u32)timer_reg_base + (reg))
+
+static uint64_t tegra_clocksource_read(void)
+{
+	return timer_readl(0x10);
+}
+
+static struct clocksource cs = {
+	.read	= tegra_clocksource_read,
+	.mask	= 0xffffffff,
+};
+
+/* FIXME: here we have no initialization. All initialization made by U-Boot */
+static int clocksource_init(void)
+{
+	cs.mult = clocksource_hz2mult(1000000, cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+core_initcall(clocksource_init);
diff --git a/arch/arm/mach-tegra/include/mach/debug_ll.h b/arch/arm/mach-tegra/include/mach/debug_ll.h
new file mode 100644
index 0000000..bc7801a
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/debug_ll.h
@@ -0,0 +1,45 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/iomap.h>
+
+#define DEBUG_LL_UART_ADDR	TEGRA_UARTA_BASE
+#define DEBUG_LL_UART_RSHFT	2
+
+#define rbr		(0 << DEBUG_LL_UART_RSHFT)
+#define lsr		(5 << DEBUG_LL_UART_RSHFT)
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+
+static inline void putc(char ch)
+{
+	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE))
+		;
+
+	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
+}
+
+#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/arch/arm/mach-tegra/include/mach/iomap.h
new file mode 100644
index 0000000..ba478e7
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/iomap.h
@@ -0,0 +1,292 @@
+/*
+ * arch/arm/mach-tegra/include/mach/iomap.h
+ *
+ * Copyright (C) 2010 Google, Inc.
+ *
+ * Author:
+ *	Colin Cross <ccross@google.com>
+ *	Erik Gilling <konkers@google.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_TEGRA_IOMAP_H
+#define __MACH_TEGRA_IOMAP_H
+
+#include <sizes.h>
+
+#define TEGRA_IRAM_BASE			0x40000000
+#define TEGRA_IRAM_SIZE			SZ_256K
+
+#define TEGRA_HOST1X_BASE		0x50000000
+#define TEGRA_HOST1X_SIZE		0x24000
+
+#define TEGRA_ARM_PERIF_BASE		0x50040000
+#define TEGRA_ARM_PERIF_SIZE		SZ_8K
+
+#define TEGRA_ARM_PL310_BASE		0x50043000
+#define TEGRA_ARM_PL310_SIZE		SZ_4K
+
+#define TEGRA_ARM_INT_DIST_BASE		0x50041000
+#define TEGRA_ARM_INT_DIST_SIZE		SZ_4K
+
+#define TEGRA_MPE_BASE			0x54040000
+#define TEGRA_MPE_SIZE			SZ_256K
+
+#define TEGRA_VI_BASE			0x54080000
+#define TEGRA_VI_SIZE			SZ_256K
+
+#define TEGRA_ISP_BASE			0x54100000
+#define TEGRA_ISP_SIZE			SZ_256K
+
+#define TEGRA_DISPLAY_BASE		0x54200000
+#define TEGRA_DISPLAY_SIZE		SZ_256K
+
+#define TEGRA_DISPLAY2_BASE		0x54240000
+#define TEGRA_DISPLAY2_SIZE		SZ_256K
+
+#define TEGRA_HDMI_BASE			0x54280000
+#define TEGRA_HDMI_SIZE			SZ_256K
+
+#define TEGRA_GART_BASE			0x58000000
+#define TEGRA_GART_SIZE			SZ_32M
+
+#define TEGRA_RES_SEMA_BASE		0x60001000
+#define TEGRA_RES_SEMA_SIZE		SZ_4K
+
+#define TEGRA_HDMI_BASE			0x54280000
+#define TEGRA_HDMI_SIZE			SZ_256K
+
+#define TEGRA_GART_BASE			0x58000000
+#define TEGRA_GART_SIZE			SZ_32M
+
+#define TEGRA_RES_SEMA_BASE		0x60001000
+#define TEGRA_RES_SEMA_SIZE		SZ_4K
+
+#define TEGRA_ARB_SEMA_BASE		0x60002000
+#define TEGRA_ARB_SEMA_SIZE		SZ_4K
+
+#define TEGRA_PRIMARY_ICTLR_BASE	0x60004000
+#define TEGRA_PRIMARY_ICTLR_SIZE	64
+
+#define TEGRA_ARBGNT_ICTLR_BASE		0x60004040
+#define TEGRA_ARBGNT_ICTLR_SIZE		192
+
+#define TEGRA_SECONDARY_ICTLR_BASE	0x60004100
+#define TEGRA_SECONDARY_ICTLR_SIZE	64
+
+#define TEGRA_TERTIARY_ICTLR_BASE	0x60004200
+#define TEGRA_TERTIARY_ICTLR_SIZE	64
+
+#define TEGRA_QUATERNARY_ICTLR_BASE	0x60004300
+#define TEGRA_QUATERNARY_ICTLR_SIZE	64
+
+#define TEGRA_TMR1_BASE			0x60005000
+#define TEGRA_TMR1_SIZE			8
+
+#define TEGRA_TMR2_BASE			0x60005008
+#define TEGRA_TMR2_SIZE			8
+
+#define TEGRA_TMRUS_BASE		0x60005010
+#define TEGRA_TMRUS_SIZE		64
+
+#define TEGRA_TMR3_BASE			0x60005050
+#define TEGRA_TMR3_SIZE			8
+
+#define TEGRA_TMR4_BASE			0x60005058
+#define TEGRA_TMR4_SIZE			8
+
+#define TEGRA_CLK_RESET_BASE		0x60006000
+#define TEGRA_CLK_RESET_SIZE		SZ_4K
+
+#define TEGRA_FLOW_CTRL_BASE		0x60007000
+#define TEGRA_FLOW_CTRL_SIZE		20
+
+#define TEGRA_AHB_DMA_BASE		0x60008000
+#define TEGRA_AHB_DMA_SIZE		SZ_4K
+
+#define TEGRA_AHB_DMA_CH0_BASE		0x60009000
+#define TEGRA_AHB_DMA_CH0_SIZE		32
+
+#define TEGRA_APB_DMA_BASE		0x6000A000
+#define TEGRA_APB_DMA_SIZE		SZ_4K
+
+#define TEGRA_APB_DMA_CH0_BASE		0x6000B000
+#define TEGRA_APB_DMA_CH0_SIZE		32
+
+#define TEGRA_AHB_GIZMO_BASE		0x6000C004
+#define TEGRA_AHB_GIZMO_SIZE		0x10C
+
+#define TEGRA_STATMON_BASE		0x6000C400
+#define TEGRA_STATMON_SIZE		SZ_1K
+
+#define TEGRA_GPIO_BASE			0x6000D000
+#define TEGRA_GPIO_SIZE			SZ_4K
+
+#define TEGRA_EXCEPTION_VECTORS_BASE    0x6000F000
+#define TEGRA_EXCEPTION_VECTORS_SIZE    SZ_4K
+
+#define TEGRA_VDE_BASE		0x6001A000
+#define TEGRA_VDE_SIZE		(SZ_8K + SZ_4K - SZ_256)
+
+#define TEGRA_APB_MISC_BASE		0x70000000
+#define TEGRA_APB_MISC_SIZE		SZ_4K
+
+#define TEGRA_APB_MISC_DAS_BASE		0x70000c00
+#define TEGRA_APB_MISC_DAS_SIZE		SZ_128
+
+#define TEGRA_AC97_BASE			0x70002000
+#define TEGRA_AC97_SIZE			SZ_512
+
+#define TEGRA_SPDIF_BASE		0x70002400
+#define TEGRA_SPDIF_SIZE		SZ_512
+
+#define TEGRA_I2S1_BASE			0x70002800
+#define TEGRA_I2S1_SIZE			SZ_256
+
+#define TEGRA_I2S2_BASE			0x70002A00
+#define TEGRA_I2S2_SIZE			SZ_256
+
+#define TEGRA_UARTA_BASE		0x70006000
+#define TEGRA_UARTA_SIZE		64
+
+#define TEGRA_UARTB_BASE		0x70006040
+#define TEGRA_UARTB_SIZE		64
+
+#define TEGRA_UARTC_BASE		0x70006200
+#define TEGRA_UARTC_SIZE		SZ_256
+
+#define TEGRA_UARTD_BASE		0x70006300
+#define TEGRA_UARTD_SIZE		SZ_256
+
+#define TEGRA_UARTE_BASE		0x70006400
+#define TEGRA_UARTE_SIZE		SZ_256
+
+#define TEGRA_NAND_BASE			0x70008000
+#define TEGRA_NAND_SIZE			SZ_256
+
+#define TEGRA_HSMMC_BASE		0x70008500
+#define TEGRA_HSMMC_SIZE		SZ_256
+
+#define TEGRA_SNOR_BASE			0x70009000
+#define TEGRA_SNOR_SIZE			SZ_4K
+
+#define TEGRA_PWFM_BASE			0x7000A000
+#define TEGRA_PWFM_SIZE			SZ_256
+
+#define TEGRA_PWFM0_BASE		0x7000A000
+#define TEGRA_PWFM0_SIZE		4
+
+#define TEGRA_PWFM1_BASE		0x7000A010
+#define TEGRA_PWFM1_SIZE		4
+
+#define TEGRA_PWFM2_BASE		0x7000A020
+#define TEGRA_PWFM2_SIZE		4
+
+#define TEGRA_PWFM3_BASE		0x7000A030
+#define TEGRA_PWFM3_SIZE		4
+
+#define TEGRA_MIPI_BASE			0x7000B000
+#define TEGRA_MIPI_SIZE			SZ_256
+
+#define TEGRA_I2C_BASE			0x7000C000
+#define TEGRA_I2C_SIZE			SZ_256
+
+#define TEGRA_TWC_BASE			0x7000C100
+#define TEGRA_TWC_SIZE			SZ_256
+
+#define TEGRA_SPI_BASE			0x7000C380
+#define TEGRA_SPI_SIZE			48
+
+#define TEGRA_I2C2_BASE			0x7000C400
+#define TEGRA_I2C2_SIZE			SZ_256
+
+#define TEGRA_I2C3_BASE			0x7000C500
+#define TEGRA_I2C3_SIZE			SZ_256
+
+#define TEGRA_OWR_BASE			0x7000C600
+#define TEGRA_OWR_SIZE			80
+
+#define TEGRA_DVC_BASE			0x7000D000
+#define TEGRA_DVC_SIZE			SZ_512
+
+#define TEGRA_SPI1_BASE			0x7000D400
+#define TEGRA_SPI1_SIZE			SZ_512
+
+#define TEGRA_SPI2_BASE			0x7000D600
+#define TEGRA_SPI2_SIZE			SZ_512
+
+#define TEGRA_SPI3_BASE			0x7000D800
+#define TEGRA_SPI3_SIZE			SZ_512
+
+#define TEGRA_SPI4_BASE			0x7000DA00
+#define TEGRA_SPI4_SIZE			SZ_512
+
+#define TEGRA_RTC_BASE			0x7000E000
+#define TEGRA_RTC_SIZE			SZ_256
+
+#define TEGRA_KBC_BASE			0x7000E200
+#define TEGRA_KBC_SIZE			SZ_256
+
+#define TEGRA_PMC_BASE			0x7000E400
+#define TEGRA_PMC_SIZE			SZ_256
+
+#define TEGRA_MC_BASE			0x7000F000
+#define TEGRA_MC_SIZE			SZ_1K
+
+#define TEGRA_EMC_BASE			0x7000F400
+#define TEGRA_EMC_SIZE			SZ_1K
+
+#define TEGRA_FUSE_BASE			0x7000F800
+#define TEGRA_FUSE_SIZE			SZ_1K
+
+#define TEGRA_KFUSE_BASE		0x7000FC00
+#define TEGRA_KFUSE_SIZE		SZ_1K
+
+#define TEGRA_CSITE_BASE		0x70040000
+#define TEGRA_CSITE_SIZE		SZ_256K
+
+#define TEGRA_USB_BASE			0xC5000000
+#define TEGRA_USB_SIZE			SZ_16K
+
+#define TEGRA_USB2_BASE			0xC5004000
+#define TEGRA_USB2_SIZE			SZ_16K
+
+#define TEGRA_USB3_BASE			0xC5008000
+#define TEGRA_USB3_SIZE			SZ_16K
+
+#define TEGRA_SDMMC1_BASE		0xC8000000
+#define TEGRA_SDMMC1_SIZE		SZ_512
+
+#define TEGRA_SDMMC2_BASE		0xC8000200
+#define TEGRA_SDMMC2_SIZE		SZ_512
+
+#define TEGRA_SDMMC3_BASE		0xC8000400
+#define TEGRA_SDMMC3_SIZE		SZ_512
+
+#define TEGRA_SDMMC4_BASE		0xC8000600
+#define TEGRA_SDMMC4_SIZE		SZ_512
+
+#if defined(CONFIG_TEGRA_DEBUG_UART_NONE)
+# define TEGRA_DEBUG_UART_BASE 0
+#elif defined(CONFIG_TEGRA_DEBUG_UARTA)
+# define TEGRA_DEBUG_UART_BASE TEGRA_UARTA_BASE
+#elif defined(CONFIG_TEGRA_DEBUG_UARTB)
+# define TEGRA_DEBUG_UART_BASE TEGRA_UARTB_BASE
+#elif defined(CONFIG_TEGRA_DEBUG_UARTC)
+# define TEGRA_DEBUG_UART_BASE TEGRA_UARTC_BASE
+#elif defined(CONFIG_TEGRA_DEBUG_UARTD)
+# define TEGRA_DEBUG_UART_BASE TEGRA_UARTD_BASE
+#elif defined(CONFIG_TEGRA_DEBUG_UARTE)
+# define TEGRA_DEBUG_UART_BASE TEGRA_UARTE_BASE
+#endif
+
+#endif
diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
new file mode 100644
index 0000000..4dd7593
--- /dev/null
+++ b/arch/arm/mach-tegra/reset.c
@@ -0,0 +1,42 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/**
+ * @file
+ * @brief Resetting an malta board
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <mach/iomap.h>
+
+#define PRM_RSTCTRL		TEGRA_PMC_BASE
+
+void __noreturn reset_cpu(ulong addr)
+{
+	int rstctrl;
+
+	rstctrl = __raw_readl((char *)PRM_RSTCTRL);
+	rstctrl |= 0x10;
+	__raw_writel(rstctrl, (char *)PRM_RSTCTRL);
+
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
