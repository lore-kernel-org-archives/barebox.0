Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJjJ-000835-VB
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:44:17 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so2437214laa.36
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 02:44:13 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Fri, 18 May 2012 15:43:26 +0600
Message-Id: <1337334211-12576-3-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCHv4 2/7] Split S3C generic and S3C24xx specific code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/mach-samsung/Makefile                     |    5 +-
 arch/arm/mach-samsung/generic.c                    |  113 -------
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   22 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |    3 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   53 +---
 .../arm/mach-samsung/include/mach/s3c24xx-clocks.h |   24 ++
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |    6 +-
 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h |   69 +++++
 arch/arm/mach-samsung/lowlevel-init.S              |  317 --------------------
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  317 ++++++++++++++++++++
 arch/arm/mach-samsung/mem-s3c24x0.c                |  143 +++++++++
 11 files changed, 575 insertions(+), 497 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
 delete mode 100644 arch/arm/mach-samsung/lowlevel-init.S
 create mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
 create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 349ba9b..bde707f 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,4 @@
 obj-y += s3c-timer.o generic.o
-obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o
-obj-$(CONFIG_S3C_LOWLEVEL_INIT) += lowlevel-init.o
+obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
+obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o mem-s3c24x0.o
+obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 7706be2..7095294 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -25,65 +25,9 @@
 #include <config.h>
 #include <common.h>
 #include <init.h>
-#include <clock.h>
 #include <io.h>
-#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
-#include <mach/s3c-busctl.h>
-#include <mach/s3c24xx-gpio.h>
-
-/**
- * Calculate the amount of connected and available memory
- * @return Memory size in bytes
- */
-uint32_t s3c24xx_get_memory_size(void)
-{
-	uint32_t reg, size;
-
-	/*
-	 * detect the current memory size
-	 */
-	reg = readl(S3C_BANKSIZE);
-
-	switch (reg & 0x7) {
-	case 0:
-		size = SZ_32M;
-		break;
-	case 1:
-		size = SZ_64M;
-		break;
-	case 2:
-		size = SZ_128M;
-		break;
-	case 4:
-		size = SZ_2M;
-		break;
-	case 5:
-		size = SZ_4M;
-		break;
-	case 6:
-		size = SZ_8M;
-		break;
-	default:
-		size = SZ_16M;
-		break;
-	}
-
-	/*
-	 * Is bank7 also configured for SDRAM usage?
-	 */
-	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		size <<= 1;	/* also count this bank */
-
-	return size;
-}
-
-void s3c24xx_disable_second_sdram_bank(void)
-{
-	writel(readl(S3C_BANKCON7) & ~(0x3 << 15), S3C_BANKCON7);
-	writel(readl(S3C_MISCCR) | (1 << 18), S3C_MISCCR); /* disable its clock */
-}
 
 #define S3C_WTCON (S3C_WATCHDOG_BASE)
 #define S3C_WTDAT (S3C_WATCHDOG_BASE + 0x04)
@@ -105,60 +49,3 @@ void __noreturn reset_cpu(unsigned long addr)
 		;
 }
 EXPORT_SYMBOL(reset_cpu);
-
-/**
-
-@page dev_s3c24xx_arch Samsung's S3C24xx Platforms in barebox
-
-@section s3c24xx_boards Boards using S3C24xx Processors
-
-@li @subpage arch/arm/boards/a9m2410/a9m2410.c
-@li @subpage arch/arm/boards/a9m2440/a9m2440.c
-
-@section s3c24xx_arch Documentation for S3C24xx Architectures Files
-
-@li @subpage arch/arm/mach-s3c24xx/generic.c
-
-@section s3c24xx_mem_map SDRAM Memory Map
-
-SDRAM starts at address 0x3000.0000 up to the available amount of connected
-SDRAM memory. Physically this CPU can handle up to 256MiB (two areas with
-up to 128MiB each).
-
-@subsection s3c24xx_mem_generic_map Generic Map
-- 0x0000.0000 Start of the internal SRAM when booting from NAND flash memory or CS signal to a NOR flash memory.
-- 0x0800.0000 Start of I/O space.
-- 0x3000.0000 Start of SDRAM area.
-  - 0x3000.0100 Start of the TAG list area.
-  - 0x3000.8000 Start of the linux kernel (physical address).
-- 0x4000.0000 Start of internal SRAM, when booting from NOR flash memory
-- 0x4800.0000 Start of the internal I/O area
-
-@section s3c24xx_asm_arm include/asm-arm/arch-s3c24xx directory guidelines
-All S3C24xx common headers are located here.
-
-@note Do not add board specific header files/information here.
-*/
-
-/** @page dev_s3c24xx_mach Samsung's S3C24xx based platforms
-
-@par barebox Map
-
-The location of the @a barebox itself depends on the available amount of
-installed SDRAM memory:
-
-- 0x30fc.0000 Start of @a barebox when 16MiB SDRAM is available
-- 0x31fc.0000 Start of @a barebox when 32MiB SDRAM is available
-- 0x33fc.0000 Start of @a barebox when 64MiB SDRAM is available
-
-Adjust the @p CONFIG_TEXT_BASE/CONFIG_ARCH_TEXT_BASE symbol in accordance to
-the available memory.
-
-@note The RAM based filesystem and the stack resides always below the
-@a barebox start address.
-
-@li @subpage dev_s3c24xx_wd_handling
-@li @subpage dev_s3c24xx_pll_handling
-@li @subpage dev_s3c24xx_sdram_handling
-@li @subpage dev_s3c24xx_nandboot_handling
-*/
diff --git a/arch/arm/mach-samsung/include/mach/s3c-clocks.h b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
index 44b2a6c..b8894f8 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-clocks.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ * See file CREDITS for list of people who contributed to this
+ * project.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -10,22 +11,19 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
  */
 
 #ifndef __MACH_S3C_CLOCKS_H
-# define __MACH_S3C_CLOCKS_H
+#define __MACH_S3C_CLOCKS_H
 
 #ifdef CONFIG_ARCH_S3C24xx
-# define S3C_LOCKTIME (S3C_CLOCK_POWER_BASE)
-# define S3C_MPLLCON (S3C_CLOCK_POWER_BASE + 0x4)
-# define S3C_UPLLCON (S3C_CLOCK_POWER_BASE + 0x8)
-# define S3C_CLKCON (S3C_CLOCK_POWER_BASE + 0xc)
-# define S3C_CLKSLOW (S3C_CLOCK_POWER_BASE + 0x10)
-# define S3C_CLKDIVN (S3C_CLOCK_POWER_BASE + 0x14)
-
-# define S3C_MPLLCON_GET_MDIV(x) ((((x) >> 12) & 0xff) + 8)
-# define S3C_MPLLCON_GET_PDIV(x) ((((x) >> 4) & 0x3f) + 2)
-# define S3C_MPLLCON_GET_SDIV(x) ((x) & 0x3)
+# include <mach/s3c24xx-clocks.h>
 #endif
 
 #endif /* __MACH_S3C_CLOCKS_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 5d3808e..9d40ef8 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -33,6 +33,7 @@ uint32_t s3c_get_uclk(void);
 
 unsigned s3c_get_uart_clk(unsigned src);
 
+#ifdef CONFIG_ARCH_S3C24xx
 uint32_t s3c24xx_get_memory_size(void);
-
 void s3c24xx_disable_second_sdram_bank(void);
+#endif
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 60d44e3..87919cc 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ * See file CREDITS for list of people who contributed to this
+ * project.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -18,52 +19,6 @@
  *
  */
 
-/* S3C2410 device base addresses */
-#define S3C_MEMCTL_BASE			0x48000000
-#define S3C2410_USB_HOST_BASE		0x49000000
-#define S3C2410_INTERRUPT_BASE		0x4A000000
-#define S3C2410_DMA_BASE		0x4B000000
-#define S3C_CLOCK_POWER_BASE		0x4C000000
-#define S3C2410_LCD_BASE		0x4D000000
-#define S3C24X0_NAND_BASE		0x4E000000
-#define S3C_UART_BASE			0x50000000
-#define S3C_TIMER_BASE			0x51000000
-#define S3C2410_USB_DEVICE_BASE		0x52000140
-#define S3C_WATCHDOG_BASE		0x53000000
-#define S3C2410_I2C_BASE		0x54000000
-#define S3C2410_I2S_BASE		0x55000000
-#define S3C_GPIO_BASE			0x56000000
-#define S3C2410_RTC_BASE		0x57000000
-#define S3C2410_ADC_BASE		0x58000000
-#define S3C2410_SPI_BASE		0x59000000
-#define S3C2410_SDI_BASE		0x5A000000
-
-/* external IO space */
-#define S3C_CS0_BASE 0x00000000
-#define S3C_CS1_BASE 0x08000000
-#define S3C_CS2_BASE 0x10000000
-#define S3C_CS3_BASE 0x18000000
-#define S3C_CS4_BASE 0x20000000
-#define S3C_CS5_BASE 0x28000000
-#define S3C_CS6_BASE 0x30000000
-
-#define S3C_SDRAM_BASE S3C_CS6_BASE
-#define S3C_SDRAM_END (S3C_SDRAM_BASE + 0x10000000)
-
-/*
- * if we are booting from NAND, its internal SRAM occures at
- * a different address than without this feature
- */
-#ifdef CONFIG_S3C_NAND_BOOT
-# define NFC_RAM_AREA 0x00000000
-#else
-# define NFC_RAM_AREA 0x40000000
+#ifdef CONFIG_ARCH_S3C24xx
+# include <mach/s3c24xx-iomap.h>
 #endif
-#define NFC_RAM_SIZE 4096
-
-#define S3C_UART1_BASE (S3C_UART_BASE)
-#define S3C_UART1_SIZE 0x4000
-#define S3C_UART2_BASE (S3C_UART_BASE + 0x4000)
-#define S3C_UART2_SIZE 0x4000
-#define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
-#define S3C_UART3_SIZE 0x4000
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h b/arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
new file mode 100644
index 0000000..839dfe3
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
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
+# define S3C_LOCKTIME (S3C_CLOCK_POWER_BASE)
+# define S3C_MPLLCON (S3C_CLOCK_POWER_BASE + 0x4)
+# define S3C_UPLLCON (S3C_CLOCK_POWER_BASE + 0x8)
+# define S3C_CLKCON (S3C_CLOCK_POWER_BASE + 0xc)
+# define S3C_CLKSLOW (S3C_CLOCK_POWER_BASE + 0x10)
+# define S3C_CLKDIVN (S3C_CLOCK_POWER_BASE + 0x14)
+
+# define S3C_MPLLCON_GET_MDIV(x) ((((x) >> 12) & 0xff) + 8)
+# define S3C_MPLLCON_GET_PDIV(x) ((((x) >> 4) & 0x3f) + 2)
+# define S3C_MPLLCON_GET_SDIV(x) ((x) & 0x3)
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h b/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
index c835974..ffb57fb 100644
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
@@ -12,8 +12,8 @@
  * GNU General Public License for more details.
  */
 
-#ifndef __MACH_S3C24XX_GPIO_H
-# define __MACH_S3C24XX_GPIO_H
+#ifndef __MACH_GPIO_S3C24X0_H
+# define __MACH_GPIO_S3C24X0_H
 
 #define S3C_GPACON (S3C_GPIO_BASE)
 #define S3C_GPADAT (S3C_GPIO_BASE + 0x04)
@@ -74,4 +74,4 @@
 # define S3C_DSC1 (S3C_GPIO_BASE + 0xc8)
 #endif
 
-#endif /* __MACH_S3C24XX_GPIO_H */
+#endif /* __MACH_GPIO_S3C24X0_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h b/arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
new file mode 100644
index 0000000..60d44e3
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
@@ -0,0 +1,69 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+/* S3C2410 device base addresses */
+#define S3C_MEMCTL_BASE			0x48000000
+#define S3C2410_USB_HOST_BASE		0x49000000
+#define S3C2410_INTERRUPT_BASE		0x4A000000
+#define S3C2410_DMA_BASE		0x4B000000
+#define S3C_CLOCK_POWER_BASE		0x4C000000
+#define S3C2410_LCD_BASE		0x4D000000
+#define S3C24X0_NAND_BASE		0x4E000000
+#define S3C_UART_BASE			0x50000000
+#define S3C_TIMER_BASE			0x51000000
+#define S3C2410_USB_DEVICE_BASE		0x52000140
+#define S3C_WATCHDOG_BASE		0x53000000
+#define S3C2410_I2C_BASE		0x54000000
+#define S3C2410_I2S_BASE		0x55000000
+#define S3C_GPIO_BASE			0x56000000
+#define S3C2410_RTC_BASE		0x57000000
+#define S3C2410_ADC_BASE		0x58000000
+#define S3C2410_SPI_BASE		0x59000000
+#define S3C2410_SDI_BASE		0x5A000000
+
+/* external IO space */
+#define S3C_CS0_BASE 0x00000000
+#define S3C_CS1_BASE 0x08000000
+#define S3C_CS2_BASE 0x10000000
+#define S3C_CS3_BASE 0x18000000
+#define S3C_CS4_BASE 0x20000000
+#define S3C_CS5_BASE 0x28000000
+#define S3C_CS6_BASE 0x30000000
+
+#define S3C_SDRAM_BASE S3C_CS6_BASE
+#define S3C_SDRAM_END (S3C_SDRAM_BASE + 0x10000000)
+
+/*
+ * if we are booting from NAND, its internal SRAM occures at
+ * a different address than without this feature
+ */
+#ifdef CONFIG_S3C_NAND_BOOT
+# define NFC_RAM_AREA 0x00000000
+#else
+# define NFC_RAM_AREA 0x40000000
+#endif
+#define NFC_RAM_SIZE 4096
+
+#define S3C_UART1_BASE (S3C_UART_BASE)
+#define S3C_UART1_SIZE 0x4000
+#define S3C_UART2_BASE (S3C_UART_BASE + 0x4000)
+#define S3C_UART2_SIZE 0x4000
+#define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
+#define S3C_UART3_SIZE 0x4000
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
deleted file mode 100644
index e9471a5..0000000
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ /dev/null
@@ -1,317 +0,0 @@
-/*
- * (C) Copyright 2009
- * Juergen Beisert <kernel@pengutronix.de>
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
-#include <config.h>
-#include <mach/s3c-iomap.h>
-
-	.section ".text_bare_init.s3c24x0_disable_wd","ax"
-
-/*
- * Disable the watchdog, else it continues to bark
- */
-.globl s3c24x0_disable_wd
-s3c24x0_disable_wd:
-
-	ldr r0, =S3C_WATCHDOG_BASE
-	mov r1, #0x0
-	str r1, [r0]
-	mov pc, lr
-
-/**
-@page dev_s3c24xx_wd_handling Watchdog handling
-
-The watchdog must be disabled very early, because if it resets the system
-it is still active and will continue to reset the system. So, call this
-routine very early in your board_init_lowlevel routine.
-*/
-
-/*
- * S3C2410 PLL configuration
- * -------------------------
- *
- * Basic frequency calculation
- *
- *            m * REFclk         s = SDIV
- * PLLclk = ------------         p = PDIV + 2
- *             p * 2^s           m = MDIV + 8
- *
- * After reset the PLL of the s3c2410 processor uses:
- *
- *         MPLL   UPLL
- *  MDIV   0x5c   0x28
- *  PDIV   0x08   0x08
- *  SDIV   0x0    0x0
- *
- *            100 * 12MHz     1200MHz
- * MPLLclk = ------------- = -------- = 120MHz
- *             10 * 2^0         10
- *
- *            48 * 12MHz      576MHz
- * UPLLclk = ------------- = -------- = 57,6MHz
- *             10 * 2^0        10
- *
- * Note: Do not use "r10" here in this code
- */
-
-#ifdef CONFIG_S3C_PLL_INIT
-
-	.section ".text_bare_init.s3c24x0_pll_init","ax"
-
-.globl s3c24x0_pll_init
-s3c24x0_pll_init:
-
-	mov r0, #S3C_CLOCK_POWER_BASE
-
-	/* configure internal clock ratio */
-	mov r1, #BOARD_SPECIFIC_CLKDIVN
-	str r1, [r0, #20]
-
-	/* enable all devices on this chip */
-	mov r1, #0xFFFFFFF0
-	str r1, [r0, #12]
-
-	/* ??????? */
-#ifdef CONFIG_CPU_S3C2440
-	mov r1, #0xFFFFFFFF
-#endif
-#ifdef CONFIG_CPU_S3C2410
-	mov r1, #0x00FFFFFF
-#endif
-	str r1, [r0, #0]
-
-#ifdef CONFIG_CPU_S3C2440
-	/*
-	 * Most of the time HDIVN is not 0, so we must use the
-	 * asynchronous bus mode (refer datasheet "Clock and Power Management")
-	 */
-	mrc p15, 0, r1, c1, c0, 0
-	orr r1, r1, #0xc0000000
-	mcr p15, 0, r1, c1, c0, 0
-#endif
-
-	/* configure UPLL */
-	ldr r1, =BOARD_SPECIFIC_UPLL
-	str r1, [r0, #8]
-
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-
-	/* configure MPLL */
-	ldr r1, =BOARD_SPECIFIC_MPLL
-	str r1, [r0, #4]
-
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-	nop
-
-	mov pc, lr
-
-#endif
-
-/**
-@page dev_s3c24xx_pll_handling PLL clock handling
-
-To control the speed of your machine the PLLs must be reconfigured after reset.
-
-For example the S3C2410 CPU wakes up after reset at 120MHz main PLL speed,
-shared with all other system on chip components. Most of the time this
-configuration is to slow for the CPU and to fast for the other components.
-
-PLL reprogramming can be done in the machine specific manner very early when
-the CONFIG_S3C_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
-defined. The board must provide a board_init_lowlevel() assembler function in
-this case and calling the s3c24x0_pll_init() assembler function.
-
-If the s3c24x0_pll_init() is called a few further symbols must be defined to
-setup the correct values for the machine.
-
-Define in the machine specific config.h the following symbols:
-
-- S3C24XX_CLOCK_REFERENCE with the frequency in Hz of your reference crystal.
-- BOARD_SPECIFIC_CLKDIVN with the value for the main clock ratio register (CLKDIVN)
-- BOARD_SPECIFIC_MPLL with the value for the main PLL setup register
-- BOARD_SPECIFIC_UPLL with the value for the USB PLL setup register
-
-@note Valid values for the PLL settings can be found in the CPU manual.
-
-@par Background: PLL frequency calculation for the S3C2410 CPU (both PLLs) and S3C2440 (UPLL only)
-
-@f[
-	f_{PLL} = \frac{m * f_{Ref}}{p * 2^s}
-@f]
-
-With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
-
-@par Background: PLL frequency calculation for the S3C2440 CPU (MPLL only)
-
-@f[
-	f_{PLL} = \frac{2 * m * f_{Ref}}{p * 2^s}
-@f]
-
-With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
-
-@note This routine can be used for the S3C2410 and the S3C2440 CPU.
-
-*/
-
-/* ----------------------------------------------------------------------- */
-
-#ifdef CONFIG_S3C_SDRAM_INIT
-
-	.section ".text_bare_init.s3c24x0_sdram_init","ax"
-
-	.globl s3c24x0_sdram_init
-s3c24x0_sdram_init:
-
-	adr r0, SDRAMDATA	/* get the current relative address of the table */
-	mov r1, #S3C_MEMCTL_BASE
-	mov r2, #6		/* we *know* it contains 6 entries */
-
-	ldr r3, [r0], #4	/* write BSWCON first */
-	str r3, [r1], #0x1c	/* post add register offset for bank6 */
-/*
- * Initializing the SDRAM controller is very simple:
- * Just write some useful values into the SDRAM controller.
- */
-0:	ldr r3, [r0], #4
-	str r3, [r1], #4
-	subs r2, r2, #1
-	bne 0b
-
-	mov pc, lr
-
-SDRAMDATA:
-	.word BOARD_SPECIFIC_BWSCON
-	.word BOARD_SPECIFIC_BANKCON6
-	.word BOARD_SPECIFIC_BANKCON7
-	.word BOARD_SPECIFIC_REFRESH
-	.word BOARD_SPECIFIC_BANKSIZE
-	.word BOARD_SPECIFIC_MRSRB6
-	.word BOARD_SPECIFIC_MRSRB7
-
-#endif
-
-/**
-@page dev_s3c24xx_sdram_handling SDRAM controller initialisation
-
-The SDRAM controller is very simple and its initialisation requires only a
-few steps. barebox provides a generic routine to do this step.
-
-Enable CONFIG_S3C_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
-to call the generic s3c24x0_sdram_init() assembler function from within the
-machine specific board_init_lowlevel() assembler function.
-
-To use the s3c24x0_sdram_init() assembler function a few symbols must be
-defined to setup correct values for the machine.
-
-Define in the machine specific config.h the following list of symbols:
-
-- BOARD_SPECIFIC_BWSCON with the values for SDRAM banks 6 and 7
-- BOARD_SPECIFIC_BANKCON6 with the value for the BANKCON6 register
-- BOARD_SPECIFIC_BANKCON7 with the value for the BANKCON7 register
-- BOARD_SPECIFIC_REFRESH with the value for the REFRESH register
-- BOARD_SPECIFIC_BANKSIZE with the value for the BANKSIZE register
-- BOARD_SPECIFIC_MRSRB6 with the value for the MRSRB6 register
-- BOARD_SPECIFIC_MRSRB7 with the value for the MRSRB7 register
-*/
-
-/* ----------------------------------------------------------------------- */
-
-#ifdef CONFIG_S3C_NAND_BOOT
-
-	.section ".text_bare_init.s3c24x0_nand_boot","ax"
-
-	.globl s3c24x0_nand_boot
-s3c24x0_nand_boot:
-/*
- * In the case of NOR boot we are running from the same address space.
- * Detect this case to handle it correctly.
- */
-	mov r1, #S3C_MEMCTL_BASE
-	ldr r3, [r1]
-	and r3, r3, #0x6
-	cmp r3, #0x0	/* check for NAND case */
-	beq 2f
-	mov pc, lr	/* NOR case: nothing to do here */
-
-2:	ldr sp, =TEXT_BASE	/* Setup a temporary stack in SDRAM */
-/*
- * We still run at a location we are not linked to. But lets still running
- * from the internal SRAM, this may speed up the boot
- */
-	push {lr}
-	bl nand_boot
-	pop {lr}
-/*
- * Adjust the return address to the correct address in SDRAM
- */
-	ldr r1, =TEXT_BASE
-	add lr, lr, r1
-
-	mov pc, lr
-
-#endif
-
-/**
-@page dev_s3c24xx_nandboot_handling Booting from NAND
-
-To be able to boot from NAND memory only, enable the S3C24x0 NAND driver. Also
-enable CONFIG_S3C_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
-able to call the s3c24x0_nand_boot() assembler routine from within the
-machine specific board_init_lowlevel() assembler function.
-
-@note This routine assumes an already working SDRAM controller and
-an initialized stack pointer.
-
-@note Basicly this routine runs from inside the internal SRAM. After load of
-the whole barebox image from the NAND flash memory into the SDRAM it adjusts
-the link register to the final SDRAM adress and returns.
-
-@note In the NAND boot mode, ECC is not checked. So, the first x KBytes used
-by barebox should have no bit error.
-
-Due to the fact the code to load the whole barebox from NAND must fit into
-the first 4kiB of the barebox image, the shrinked NAND driver is very
-minimalistic. Setup the NAND access timing is done in a safe manner, what
-means: Slowest possible values are used. If you want to increase the speed you
-should define the BOARD_DEFAULT_NAND_TIMING to a valid setting into the
-NFCONF register and add it to your board specific config.h. Refer S3C24x0's
-datasheet for further details. The macro #CALC_NFCONF_TIMING could help to
-calculate the register setting in a hardware independent manner.
-
-@note The regular NAND driver uses a platform data structure to define the
-NAND access timings.
-
-@note Its still possible to boot this image from NOR memory. If this routine
-detects it is running from NOR instead of the internal SRAM it skips any
-loading and returns immediately.
-
-*/
diff --git a/arch/arm/mach-samsung/lowlevel-s3c24x0.S b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
new file mode 100644
index 0000000..e9471a5
--- /dev/null
+++ b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
@@ -0,0 +1,317 @@
+/*
+ * (C) Copyright 2009
+ * Juergen Beisert <kernel@pengutronix.de>
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
+#include <config.h>
+#include <mach/s3c-iomap.h>
+
+	.section ".text_bare_init.s3c24x0_disable_wd","ax"
+
+/*
+ * Disable the watchdog, else it continues to bark
+ */
+.globl s3c24x0_disable_wd
+s3c24x0_disable_wd:
+
+	ldr r0, =S3C_WATCHDOG_BASE
+	mov r1, #0x0
+	str r1, [r0]
+	mov pc, lr
+
+/**
+@page dev_s3c24xx_wd_handling Watchdog handling
+
+The watchdog must be disabled very early, because if it resets the system
+it is still active and will continue to reset the system. So, call this
+routine very early in your board_init_lowlevel routine.
+*/
+
+/*
+ * S3C2410 PLL configuration
+ * -------------------------
+ *
+ * Basic frequency calculation
+ *
+ *            m * REFclk         s = SDIV
+ * PLLclk = ------------         p = PDIV + 2
+ *             p * 2^s           m = MDIV + 8
+ *
+ * After reset the PLL of the s3c2410 processor uses:
+ *
+ *         MPLL   UPLL
+ *  MDIV   0x5c   0x28
+ *  PDIV   0x08   0x08
+ *  SDIV   0x0    0x0
+ *
+ *            100 * 12MHz     1200MHz
+ * MPLLclk = ------------- = -------- = 120MHz
+ *             10 * 2^0         10
+ *
+ *            48 * 12MHz      576MHz
+ * UPLLclk = ------------- = -------- = 57,6MHz
+ *             10 * 2^0        10
+ *
+ * Note: Do not use "r10" here in this code
+ */
+
+#ifdef CONFIG_S3C_PLL_INIT
+
+	.section ".text_bare_init.s3c24x0_pll_init","ax"
+
+.globl s3c24x0_pll_init
+s3c24x0_pll_init:
+
+	mov r0, #S3C_CLOCK_POWER_BASE
+
+	/* configure internal clock ratio */
+	mov r1, #BOARD_SPECIFIC_CLKDIVN
+	str r1, [r0, #20]
+
+	/* enable all devices on this chip */
+	mov r1, #0xFFFFFFF0
+	str r1, [r0, #12]
+
+	/* ??????? */
+#ifdef CONFIG_CPU_S3C2440
+	mov r1, #0xFFFFFFFF
+#endif
+#ifdef CONFIG_CPU_S3C2410
+	mov r1, #0x00FFFFFF
+#endif
+	str r1, [r0, #0]
+
+#ifdef CONFIG_CPU_S3C2440
+	/*
+	 * Most of the time HDIVN is not 0, so we must use the
+	 * asynchronous bus mode (refer datasheet "Clock and Power Management")
+	 */
+	mrc p15, 0, r1, c1, c0, 0
+	orr r1, r1, #0xc0000000
+	mcr p15, 0, r1, c1, c0, 0
+#endif
+
+	/* configure UPLL */
+	ldr r1, =BOARD_SPECIFIC_UPLL
+	str r1, [r0, #8]
+
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+
+	/* configure MPLL */
+	ldr r1, =BOARD_SPECIFIC_MPLL
+	str r1, [r0, #4]
+
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+	nop
+
+	mov pc, lr
+
+#endif
+
+/**
+@page dev_s3c24xx_pll_handling PLL clock handling
+
+To control the speed of your machine the PLLs must be reconfigured after reset.
+
+For example the S3C2410 CPU wakes up after reset at 120MHz main PLL speed,
+shared with all other system on chip components. Most of the time this
+configuration is to slow for the CPU and to fast for the other components.
+
+PLL reprogramming can be done in the machine specific manner very early when
+the CONFIG_S3C_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
+defined. The board must provide a board_init_lowlevel() assembler function in
+this case and calling the s3c24x0_pll_init() assembler function.
+
+If the s3c24x0_pll_init() is called a few further symbols must be defined to
+setup the correct values for the machine.
+
+Define in the machine specific config.h the following symbols:
+
+- S3C24XX_CLOCK_REFERENCE with the frequency in Hz of your reference crystal.
+- BOARD_SPECIFIC_CLKDIVN with the value for the main clock ratio register (CLKDIVN)
+- BOARD_SPECIFIC_MPLL with the value for the main PLL setup register
+- BOARD_SPECIFIC_UPLL with the value for the USB PLL setup register
+
+@note Valid values for the PLL settings can be found in the CPU manual.
+
+@par Background: PLL frequency calculation for the S3C2410 CPU (both PLLs) and S3C2440 (UPLL only)
+
+@f[
+	f_{PLL} = \frac{m * f_{Ref}}{p * 2^s}
+@f]
+
+With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
+
+@par Background: PLL frequency calculation for the S3C2440 CPU (MPLL only)
+
+@f[
+	f_{PLL} = \frac{2 * m * f_{Ref}}{p * 2^s}
+@f]
+
+With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
+
+@note This routine can be used for the S3C2410 and the S3C2440 CPU.
+
+*/
+
+/* ----------------------------------------------------------------------- */
+
+#ifdef CONFIG_S3C_SDRAM_INIT
+
+	.section ".text_bare_init.s3c24x0_sdram_init","ax"
+
+	.globl s3c24x0_sdram_init
+s3c24x0_sdram_init:
+
+	adr r0, SDRAMDATA	/* get the current relative address of the table */
+	mov r1, #S3C_MEMCTL_BASE
+	mov r2, #6		/* we *know* it contains 6 entries */
+
+	ldr r3, [r0], #4	/* write BSWCON first */
+	str r3, [r1], #0x1c	/* post add register offset for bank6 */
+/*
+ * Initializing the SDRAM controller is very simple:
+ * Just write some useful values into the SDRAM controller.
+ */
+0:	ldr r3, [r0], #4
+	str r3, [r1], #4
+	subs r2, r2, #1
+	bne 0b
+
+	mov pc, lr
+
+SDRAMDATA:
+	.word BOARD_SPECIFIC_BWSCON
+	.word BOARD_SPECIFIC_BANKCON6
+	.word BOARD_SPECIFIC_BANKCON7
+	.word BOARD_SPECIFIC_REFRESH
+	.word BOARD_SPECIFIC_BANKSIZE
+	.word BOARD_SPECIFIC_MRSRB6
+	.word BOARD_SPECIFIC_MRSRB7
+
+#endif
+
+/**
+@page dev_s3c24xx_sdram_handling SDRAM controller initialisation
+
+The SDRAM controller is very simple and its initialisation requires only a
+few steps. barebox provides a generic routine to do this step.
+
+Enable CONFIG_S3C_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
+to call the generic s3c24x0_sdram_init() assembler function from within the
+machine specific board_init_lowlevel() assembler function.
+
+To use the s3c24x0_sdram_init() assembler function a few symbols must be
+defined to setup correct values for the machine.
+
+Define in the machine specific config.h the following list of symbols:
+
+- BOARD_SPECIFIC_BWSCON with the values for SDRAM banks 6 and 7
+- BOARD_SPECIFIC_BANKCON6 with the value for the BANKCON6 register
+- BOARD_SPECIFIC_BANKCON7 with the value for the BANKCON7 register
+- BOARD_SPECIFIC_REFRESH with the value for the REFRESH register
+- BOARD_SPECIFIC_BANKSIZE with the value for the BANKSIZE register
+- BOARD_SPECIFIC_MRSRB6 with the value for the MRSRB6 register
+- BOARD_SPECIFIC_MRSRB7 with the value for the MRSRB7 register
+*/
+
+/* ----------------------------------------------------------------------- */
+
+#ifdef CONFIG_S3C_NAND_BOOT
+
+	.section ".text_bare_init.s3c24x0_nand_boot","ax"
+
+	.globl s3c24x0_nand_boot
+s3c24x0_nand_boot:
+/*
+ * In the case of NOR boot we are running from the same address space.
+ * Detect this case to handle it correctly.
+ */
+	mov r1, #S3C_MEMCTL_BASE
+	ldr r3, [r1]
+	and r3, r3, #0x6
+	cmp r3, #0x0	/* check for NAND case */
+	beq 2f
+	mov pc, lr	/* NOR case: nothing to do here */
+
+2:	ldr sp, =TEXT_BASE	/* Setup a temporary stack in SDRAM */
+/*
+ * We still run at a location we are not linked to. But lets still running
+ * from the internal SRAM, this may speed up the boot
+ */
+	push {lr}
+	bl nand_boot
+	pop {lr}
+/*
+ * Adjust the return address to the correct address in SDRAM
+ */
+	ldr r1, =TEXT_BASE
+	add lr, lr, r1
+
+	mov pc, lr
+
+#endif
+
+/**
+@page dev_s3c24xx_nandboot_handling Booting from NAND
+
+To be able to boot from NAND memory only, enable the S3C24x0 NAND driver. Also
+enable CONFIG_S3C_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
+able to call the s3c24x0_nand_boot() assembler routine from within the
+machine specific board_init_lowlevel() assembler function.
+
+@note This routine assumes an already working SDRAM controller and
+an initialized stack pointer.
+
+@note Basicly this routine runs from inside the internal SRAM. After load of
+the whole barebox image from the NAND flash memory into the SDRAM it adjusts
+the link register to the final SDRAM adress and returns.
+
+@note In the NAND boot mode, ECC is not checked. So, the first x KBytes used
+by barebox should have no bit error.
+
+Due to the fact the code to load the whole barebox from NAND must fit into
+the first 4kiB of the barebox image, the shrinked NAND driver is very
+minimalistic. Setup the NAND access timing is done in a safe manner, what
+means: Slowest possible values are used. If you want to increase the speed you
+should define the BOARD_DEFAULT_NAND_TIMING to a valid setting into the
+NFCONF register and add it to your board specific config.h. Refer S3C24x0's
+datasheet for further details. The macro #CALC_NFCONF_TIMING could help to
+calculate the register setting in a hardware independent manner.
+
+@note The regular NAND driver uses a platform data structure to define the
+NAND access timings.
+
+@note Its still possible to boot this image from NOR memory. If this routine
+detects it is running from NOR instead of the internal SRAM it skips any
+loading and returns immediately.
+
+*/
diff --git a/arch/arm/mach-samsung/mem-s3c24x0.c b/arch/arm/mach-samsung/mem-s3c24x0.c
new file mode 100644
index 0000000..6fae72b
--- /dev/null
+++ b/arch/arm/mach-samsung/mem-s3c24x0.c
@@ -0,0 +1,143 @@
+/*
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
+/**
+ * @file
+ * @brief Basic clock, sdram and timer handling for S3C24xx CPUs
+ */
+
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <sizes.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
+
+/**
+ * Calculate the amount of connected and available memory
+ * @return Memory size in bytes
+ */
+uint32_t s3c24xx_get_memory_size(void)
+{
+	uint32_t reg, size;
+
+	/*
+	 * detect the current memory size
+	 */
+	reg = readl(S3C_BANKSIZE);
+
+	switch (reg & 0x7) {
+	case 0:
+		size = SZ_32M;
+		break;
+	case 1:
+		size = SZ_64M;
+		break;
+	case 2:
+		size = SZ_128M;
+		break;
+	case 4:
+		size = SZ_2M;
+		break;
+	case 5:
+		size = SZ_4M;
+		break;
+	case 6:
+		size = SZ_8M;
+		break;
+	default:
+		size = SZ_16M;
+		break;
+	}
+
+	/*
+	 * Is bank7 also configured for SDRAM usage?
+	 */
+	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		size <<= 1;	/* also count this bank */
+
+	return size;
+}
+
+void s3c24xx_disable_second_sdram_bank(void)
+{
+	writel(readl(S3C_BANKCON7) & ~(0x3 << 15), S3C_BANKCON7);
+	writel(readl(S3C_MISCCR) | (1 << 18), S3C_MISCCR); /* disable its clock */
+}
+
+/**
+
+@page dev_s3c24xx_arch Samsung's S3C24xx Platforms in barebox
+
+@section s3c24xx_boards Boards using S3C24xx Processors
+
+@li @subpage arch/arm/boards/a9m2410/a9m2410.c
+@li @subpage arch/arm/boards/a9m2440/a9m2440.c
+
+@section s3c24xx_arch Documentation for S3C24xx Architectures Files
+
+@li @subpage arch/arm/mach-s3c24xx/generic.c
+
+@section s3c24xx_mem_map SDRAM Memory Map
+
+SDRAM starts at address 0x3000.0000 up to the available amount of connected
+SDRAM memory. Physically this CPU can handle up to 256MiB (two areas with
+up to 128MiB each).
+
+@subsection s3c24xx_mem_generic_map Generic Map
+- 0x0000.0000 Start of the internal SRAM when booting from NAND flash memory or CS signal to a NOR flash memory.
+- 0x0800.0000 Start of I/O space.
+- 0x3000.0000 Start of SDRAM area.
+  - 0x3000.0100 Start of the TAG list area.
+  - 0x3000.8000 Start of the linux kernel (physical address).
+- 0x4000.0000 Start of internal SRAM, when booting from NOR flash memory
+- 0x4800.0000 Start of the internal I/O area
+
+@section s3c24xx_asm_arm include/asm-arm/arch-s3c24xx directory guidelines
+All S3C24xx common headers are located here.
+
+@note Do not add board specific header files/information here.
+*/
+
+/** @page dev_s3c24xx_mach Samsung's S3C24xx based platforms
+
+@par barebox Map
+
+The location of the @a barebox itself depends on the available amount of
+installed SDRAM memory:
+
+- 0x30fc.0000 Start of @a barebox when 16MiB SDRAM is available
+- 0x31fc.0000 Start of @a barebox when 32MiB SDRAM is available
+- 0x33fc.0000 Start of @a barebox when 64MiB SDRAM is available
+
+Adjust the @p CONFIG_TEXT_BASE/CONFIG_ARCH_TEXT_BASE symbol in accordance to
+the available memory.
+
+@note The RAM based filesystem and the stack resides always below the
+@a barebox start address.
+
+@li @subpage dev_s3c24xx_wd_handling
+@li @subpage dev_s3c24xx_pll_handling
+@li @subpage dev_s3c24xx_sdram_handling
+@li @subpage dev_s3c24xx_nandboot_handling
+*/
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
