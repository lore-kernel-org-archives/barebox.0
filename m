Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ReuqH-0000El-06
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:25 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000h6-A0
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001LK-8N
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:24 +0100
Message-Id: <1324845517-4601-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/14] MACH SAMSUNG: Rename the whole mach to add more CPUs in
 future
To: barebox@lists.infradead.org

The S3Cxxxx family consists of ARMv4, ARMv5 and ARMv6 types of CPU cores. The
S3C24xx sub family is only one of it. To be able to handle all CPUs in one mach
directory, use a more generic name for it.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig                                   |    3 +-
 arch/arm/Makefile                                  |    2 +-
 arch/arm/mach-s3c24xx/Kconfig                      |  108 -----
 arch/arm/mach-s3c24xx/Makefile                     |    2 -
 arch/arm/mach-s3c24xx/generic.c                    |  297 --------------
 arch/arm/mach-s3c24xx/gpio-s3c24x0.c               |  169 --------
 arch/arm/mach-s3c24xx/include/mach/fb.h            |   59 ---
 arch/arm/mach-s3c24xx/include/mach/gpio.h          |   31 --
 arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h |  426 --------------------
 arch/arm/mach-s3c24xx/include/mach/mci.h           |   46 ---
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |  177 --------
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h  |   54 ---
 .../mach-s3c24xx/include/mach/s3c24xx-generic.h    |   33 --
 arch/arm/mach-s3c24xx/lowlevel-init.S              |  317 ---------------
 arch/arm/mach-samsung/Kconfig                      |  117 ++++++
 arch/arm/mach-samsung/Makefile                     |    2 +
 arch/arm/mach-samsung/generic.c                    |  297 ++++++++++++++
 arch/arm/mach-samsung/gpio-s3c24x0.c               |  169 ++++++++
 arch/arm/mach-samsung/include/mach/fb.h            |   59 +++
 arch/arm/mach-samsung/include/mach/gpio.h          |   31 ++
 arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h |  426 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/mci.h           |   46 +++
 arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h |  177 ++++++++
 arch/arm/mach-samsung/include/mach/s3c24x0-nand.h  |   54 +++
 .../mach-samsung/include/mach/s3c24xx-generic.h    |   33 ++
 arch/arm/mach-samsung/lowlevel-init.S              |  317 +++++++++++++++
 26 files changed, 1731 insertions(+), 1721 deletions(-)
 delete mode 100644 arch/arm/mach-s3c24xx/Kconfig
 delete mode 100644 arch/arm/mach-s3c24xx/Makefile
 delete mode 100644 arch/arm/mach-s3c24xx/generic.c
 delete mode 100644 arch/arm/mach-s3c24xx/gpio-s3c24x0.c
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/mci.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
 delete mode 100644 arch/arm/mach-s3c24xx/lowlevel-init.S
 create mode 100644 arch/arm/mach-samsung/Kconfig
 create mode 100644 arch/arm/mach-samsung/Makefile
 create mode 100644 arch/arm/mach-samsung/generic.c
 create mode 100644 arch/arm/mach-samsung/gpio-s3c24x0.c
 create mode 100644 arch/arm/mach-samsung/include/mach/fb.h
 create mode 100644 arch/arm/mach-samsung/include/mach/gpio.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/mci.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
 create mode 100644 arch/arm/mach-samsung/lowlevel-init.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 40677a3..b600179 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -68,6 +68,7 @@ config ARCH_PXA
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
+	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
@@ -86,7 +87,7 @@ source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
-source arch/arm/mach-s3c24xx/Kconfig
+source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
 
 config ARM_ASM_UNIFIED
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a3e12e6..0f9bb64 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,7 +52,7 @@ machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
-machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
+machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 
 # Board directory name.  This list is sorted alphanumerically
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
deleted file mode 100644
index 80b65fb..0000000
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ /dev/null
@@ -1,108 +0,0 @@
-if ARCH_S3C24xx
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x31fc0000
-
-config BOARDINFO
-	default "Mini 2440"    if MACH_MINI2440
-	default "Digi A9M2440" if MACH_A9M2440
-	default "Digi A9M2410" if MACH_A9M2410
-
-config CPU_S3C2410
-	bool
-
-config CPU_S3C2440
-	bool
-
-choice
-
-	prompt "S3C24xx Board Type"
-
-config MACH_A9M2410
-	bool "Digi A9M2410"
-	select CPU_S3C2410
-	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
-	help
-	  Say Y here if you are using Digi's Connect Core 9M equipped
-	  with a Samsung S3C2410 Processor
-
-config MACH_A9M2440
-	bool "Digi A9M2440"
-	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	help
-	  Say Y here if you are using Digi's Connect Core 9M equipped
-	  with a Samsung S3C2440 Processor
-
-config MACH_MINI2440
-	bool "Mini 2440"
-	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
-	select HAS_DM9000
-	help
-	  Say Y here if you are using Mini 2440 dev board equipped
-	  with a Samsung S3C2440 Processor
-
-endchoice
-
-menu "Board specific settings       "
-
-choice
-	prompt "A9M2440 baseboard"
-	depends on MACH_A9M2440
-
-config MACH_A9M2410DEV
-	bool
-	prompt "A9M2410dev"
-	select HAS_CS8900
-	help
-	  Digi's evaluation board.
-
-endchoice
-
-source arch/arm/boards/mini2440/Kconfig 
-
-endmenu
-
-menu "S3C24X0 Features              "
-
-config S3C24XX_LOW_LEVEL_INIT
-	bool
-
-config S3C24XX_PLL_INIT
-	bool
-	prompt "Reconfigure PLL"
-	select S3C24XX_LOW_LEVEL_INIT
-	help
-	  This adds generic code to reconfigure the internal PLL very early
-	  after reset.
-
-config S3C24XX_SDRAM_INIT
-	bool
-	prompt "Initialize SDRAM"
-	select S3C24XX_LOW_LEVEL_INIT
-	help
-	  This adds generic code to configure the SDRAM controller after reset.
-	  The initialisation will be skipped if the code is already running
-	  from SDRAM.
-
-config S3C24XX_NAND_BOOT
-	bool
-	prompt "Booting from NAND"
-	select MTD
-	select NAND
-	select NAND_S3C24X0
-	help
-	  Add generic support to boot from NAND flash. Image loading will be
-	  skipped if the code is running from NOR or already from SDRAM.
-
-endmenu
-
-endif
diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-s3c24xx/Makefile
deleted file mode 100644
index 88d45fe..0000000
--- a/arch/arm/mach-s3c24xx/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-obj-y += generic.o gpio-s3c24x0.o
-obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
deleted file mode 100644
index d2f2ac7..0000000
--- a/arch/arm/mach-s3c24xx/generic.c
+++ /dev/null
@@ -1,297 +0,0 @@
-/*
- * See file CREDITS for list of people who contributed to this
- * project.
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
-/**
- * @file
- * @brief Basic clock, sdram and timer handling for S3C24xx CPUs
- */
-
-#include <config.h>
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <io.h>
-#include <mach/s3c24x0-iomap.h>
-
-/**
- * Calculate the current M-PLL clock.
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_mpllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(MPLLCON);
-	m = ((reg_val & 0xFF000) >> 12) + 8;
-	p = ((reg_val & 0x003F0) >> 4) + 2;
-	s = reg_val & 0x3;
-#ifdef CONFIG_CPU_S3C2410
-	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	return 2 * m * (S3C24XX_CLOCK_REFERENCE / (p << s));
-#endif
-}
-
-/**
- * Calculate the current U-PLL clock
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_upllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(UPLLCON);
-	m = ((reg_val & 0xFF000) >> 12) + 8;
-	p = ((reg_val & 0x003F0) >> 4) + 2;
-	s = reg_val & 0x3;
-
-	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
-}
-
-/**
- * Calculate the FCLK frequency used for the ARM CPU core
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_fclk(void)
-{
-	return s3c24xx_get_mpllclk();
-}
-
-/**
- * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_hclk(void)
-{
-	uint32_t f_clk;
-
-	f_clk = s3c24xx_get_fclk();
-#ifdef CONFIG_CPU_S3C2410
-	if (readl(CLKDIVN) & 0x02)
-		return f_clk >> 1;
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	switch(readl(CLKDIVN) & 0x06) {
-	case 2:
-		return f_clk >> 1;
-	case 4:
-		return f_clk >> 2;	/* TODO consider CAMDIVN */
-	case 6:
-		return f_clk / 3;	/* TODO consider CAMDIVN */
-	}
-#endif
-	return f_clk;
-}
-
-/**
- * Calculate the PCLK frequency used for the slower peripherals
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_pclk(void)
-{
-	uint32_t p_clk;
-
-	p_clk = s3c24xx_get_hclk();
-	if (readl(CLKDIVN) & 0x01)
-		return p_clk >> 1;
-	return p_clk;
-}
-
-/**
- * Calculate the UCLK frequency used by the USB host device
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_uclk(void)
-{
-    return s3c24xx_get_upllclk();
-}
-
-/**
- * Calculate the amount of connected and available memory
- * @return Memory size in bytes
- */
-uint32_t s3c24x0_get_memory_size(void)
-{
-	uint32_t reg, size;
-
-	/*
-	 * detect the current memory size
-	 */
-	reg = readl(BANKSIZE);
-
-	switch (reg & 0x7) {
-	case 0:
-		size = 32 * 1024 * 1024;
-		break;
-	case 1:
-		size = 64 * 1024 * 1024;
-		break;
-	case 2:
-		size = 128 * 1024 * 1024;
-		break;
-	case 4:
-		size = 2 * 1024 * 1024;
-		break;
-	case 5:
-		size = 4 * 1024 * 1024;
-		break;
-	case 6:
-		size = 8 * 1024 * 1024;
-		break;
-	default:
-		size = 16 * 1024 * 1024;
-		break;
-	}
-
-	/*
-	 * Is bank7 also configured for SDRAM usage?
-	 */
-	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		size <<= 1;	/* also count this bank */
-
-	return size;
-}
-
-/**
- * Show the user the current clock settings
- */
-int s3c24xx_dump_clocks(void)
-{
-	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
-	printf("mpll:    %7d kHz\n", s3c24xx_get_mpllclk() / 1000);
-	printf("upll:    %7d kHz\n", s3c24xx_get_upllclk() / 1000);
-	printf("fclk:    %7d kHz\n", s3c24xx_get_fclk() / 1000);
-	printf("hclk:    %7d kHz\n", s3c24xx_get_hclk() / 1000);
-	printf("pclk:    %7d kHz\n", s3c24xx_get_pclk() / 1000);
-	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c24xx_get_hclk() / 1000000);
-	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
-			s3c24xx_get_hclk() / 1000000);
-	return 0;
-}
-
-late_initcall(s3c24xx_dump_clocks);
-
-static uint64_t s3c24xx_clocksource_read(void)
-{
-	/* note: its a down counter */
-	return 0xFFFF - readw(TCNTO4);
-}
-
-static struct clocksource cs = {
-	.read	= s3c24xx_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(16),
-	.shift	= 10,
-};
-
-static int clocksource_init (void)
-{
-	uint32_t p_clk = s3c24xx_get_pclk();
-
-	writel(0x00000000, TCON);	/* stop all timers */
-	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
-	writel(0x00030000, TCFG1);	/* /16 */
-
-	writew(0xffff, TCNTB4);		/* reload value is TOP */
-
-	writel(0x00600000, TCON);	/* force a first reload */
-	writel(0x00400000, TCON);
-	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
-
-	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
-	init_clock(&cs);
-
-	return 0;
-}
-core_initcall(clocksource_init);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	/* Disable watchdog */
-	writew(0x0000, WTCON);
-
-	/* Initialize watchdog timer count register */
-	writew(0x0001, WTCNT);
-
-	/* Enable watchdog timer; assert reset at timer timeout */
-	writew(0x0021, WTCON);
-
-	/* loop forever and wait for reset to happen */
-	while(1)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
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
diff --git a/arch/arm/mach-s3c24xx/gpio-s3c24x0.c b/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
deleted file mode 100644
index 946ec33..0000000
--- a/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
+++ /dev/null
@@ -1,169 +0,0 @@
-/*
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
-#include <errno.h>
-#include <io.h>
-#include <mach/s3c24x0-iomap.h>
-#include <mach/gpio.h>
-
-static const unsigned char group_offset[] =
-{
-	0x00,	/* GPA */
-	0x10,	/* GPB */
-	0x20,	/* GPC */
-	0x30,	/* GPD */
-	0x40,	/* GPE */
-	0x50,	/* GPF */
-	0x60,	/* GPG */
-	0x70,	/* GPH */
-#ifdef CONFIG_CPU_S3C2440
-	0xd0,	/* GPJ */
-#endif
-};
-
-void gpio_set_value(unsigned gpio, int value)
-{
-	unsigned group = gpio >> 5;
-	unsigned bit = gpio % 32;
-	unsigned offset;
-	uint32_t reg;
-
-	offset = group_offset[group];
-
-	reg = readl(GPADAT + offset);
-	reg &= ~(1 << bit);
-	reg |= (!!value) << bit;
-	writel(reg, GPADAT + offset);
-}
-
-int gpio_direction_input(unsigned gpio)
-{
-	unsigned group = gpio >> 5;
-	unsigned bit = gpio % 32;
-	unsigned offset;
-	uint32_t reg;
-
-	offset = group_offset[group];
-
-	reg = readl(GPACON + offset);
-	reg &= ~(0x3 << (bit << 1));
-	writel(reg, GPACON + offset);
-
-	return 0;
-}
-
-
-int gpio_direction_output(unsigned gpio, int value)
-{
-	unsigned group = gpio >> 5;
-	unsigned bit = gpio % 32;
-	unsigned offset;
-	uint32_t reg;
-
-	offset = group_offset[group];
-
-	/* value */
-	gpio_set_value(gpio,value);
-	/* direction */
-	if (group == 0) {	/* GPA is special */
-		reg = readl(GPACON);
-		reg &= ~(1 << bit);
-		writel(reg, GPACON);
-	} else {
-		reg = readl(GPACON + offset);
-		reg &= ~(0x3 << (bit << 1));
-		reg |= 0x1 << (bit << 1);
-		writel(reg, GPACON + offset);
-	}
-
-	return 0;
-}
-
-int gpio_get_value(unsigned gpio)
-{
-	unsigned group = gpio >> 5;
-	unsigned bit = gpio % 32;
-	unsigned offset;
-	uint32_t reg;
-
-	if (group == 0)	/* GPA is special: no input mode available */
-		return -ENODEV;
-
-	offset = group_offset[group];
-
-	/* value */
-	reg = readl(GPADAT + offset);
-
-	return !!(reg & (1 << bit));
-}
-
-void s3c_gpio_mode(unsigned gpio_mode)
-{
-	unsigned group, func, bit, offset, gpio;
-	uint32_t reg;
-
-	group = GET_GROUP(gpio_mode);
-	func = GET_FUNC(gpio_mode);
-	bit = GET_BIT(gpio_mode);
-	gpio = GET_GPIO_NO(gpio_mode);
-
-	if (group == 0) {
-		/* GPA is special */
-		switch (func) {
-		case 0:		/* GPIO input */
-			pr_debug("Cannot set GPA pin to GPIO input\n");
-			break;
-		case 1:		/* GPIO output */
-			gpio_direction_output(bit, GET_GPIOVAL(gpio_mode));
-			break;
-		default:
-			reg = readl(GPACON);
-			reg |= 1 << bit;
-			writel(reg, GPACON);
-			break;
-		}
-		return;
-	}
-
-	offset = group_offset[group];
-
-	if (PU_PRESENT(gpio_mode)) {
-		reg = readl(GPACON + offset + 8);
-		if (GET_PU(gpio_mode))
-			reg |= (1 << bit);	/* set means _disabled_ */
-		else
-			reg &= ~(1 << bit);
-		writel(reg, GPACON + offset + 8);
-	}
-
-	switch (func) {
-	case 0: /* input */
-		gpio_direction_input(gpio);
-		break;
-	case 1:	/* output */
-		gpio_direction_output(gpio, GET_GPIOVAL(gpio_mode));
-		break;
-	case 2: /* function one */
-	case 3: /* function two */
-		reg = readl(GPACON + offset);
-		reg &= ~(0x3 << (bit << 1));
-		reg |= func << (bit << 1);
-		writel(reg, GPACON + offset);
-		break;
-	}
-}
diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h b/arch/arm/mach-s3c24xx/include/mach/fb.h
deleted file mode 100644
index 05e013a..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/fb.h
+++ /dev/null
@@ -1,59 +0,0 @@
-/*
- * Copyright (C) 2010 Juergen Beisert
- * Copyright (C) 2011 Alexey Galakhov
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
- *
- */
-
-#ifndef __MACH_FB_H_
-# define __MACH_FB_H_
-
-#include <fb.h>
-
-/** Proprietary flags corresponding to  S3C24x0 LCDCON5 register */
-
-/** ! INVVDEN - DE active high */
-#define FB_SYNC_DE_HIGH_ACT	(1 << 23)
-/** INVVCLK - invert CLK signal */
-#define FB_SYNC_CLK_INVERT	(1 << 24)
-/** INVVD - invert data */
-#define FB_SYNC_DATA_INVERT	(1 << 25)
-/** INVPWREN - use PWREN signal */
-#define FB_SYNC_INVERT_PWREN	(1 << 26)
-/** INVLEND - use LEND signal */
-#define FB_SYNC_INVERT_LEND	(1 << 27)
-/** PWREN - use PWREN signal */
-#define FB_SYNC_USE_PWREN	(1 << 28)
-/** ENLEND - use LEND signal */
-#define FB_SYNC_USE_LEND	(1 << 29)
-/** BSWP - swap bytes */
-#define FB_SYNC_SWAP_BYTES	(1 << 30)
-/** HWSWP - swap half words */
-#define FB_SYNC_SWAP_HW		(1 << 31)
-
-struct s3c_fb_platform_data {
-	struct fb_videomode *mode_list;
-	unsigned mode_cnt;
-
-	unsigned bits_per_pixel;
-	int passive_display;	/**< enable support for STN or CSTN displays */
-
-	/** hook to enable backlight and stuff */
-	void (*enable)(int enable);
-};
-
-#endif /* __MACH_FB_H_ */
diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio.h b/arch/arm/mach-s3c24xx/include/mach/gpio.h
deleted file mode 100644
index 37db4f5..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/gpio.h
+++ /dev/null
@@ -1,31 +0,0 @@
-/*
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
-#ifndef __ASM_MACH_GPIO_H
-#define __ASM_MACH_GPIO_H
-
-#if defined(CONFIG_CPU_S3C2440) || defined(CONFIG_CPU_S3C2410)
-# include <mach/iomux-s3c24x0.h>
-#endif
-
-void gpio_set_value(unsigned, int);
-int gpio_direction_input(unsigned);
-int gpio_direction_output(unsigned, int);
-int gpio_get_value(unsigned);
-void s3c_gpio_mode(unsigned);
-
-#endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h b/arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h
deleted file mode 100644
index 2c64a97..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h
+++ /dev/null
@@ -1,426 +0,0 @@
-/*
- * Copyright (C) 2010 Juergen Beisert
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
-#ifndef __MACH_IOMUX_S3C24x0_H
-#define __MACH_IOMUX_S3C24x0_H
-
-/* 3322222222221111111111
- * 10987654321098765432109876543210
- *                            ^^^^^_ Bit offset
- *                        ^^^^______ Group Number
- *                    ^^____________ Function
- *                   ^______________ initial GPIO out value
- *                  ^_______________ Pull up feature present
- *                 ^________________ initial pull up setting
- */
-
-
-#define PIN(group,bit) (group * 32 + bit)
-#define FUNC(x) (((x) & 0x3) << 11)
-#define GET_FUNC(x) (((x) >> 11) & 0x3)
-#define GET_GROUP(x) (((x) >> 5) & 0xf)
-#define GET_BIT(x) (((x) & 0x1ff) % 32)
-#define GET_GPIOVAL(x) (((x) >> 13) & 0x1)
-#define GET_GPIO_NO(x) ((x & 0x1ff))
-#define GPIO_OUT FUNC(1)
-#define GPIO_IN FUNC(0)
-#define GPIO_VAL(x) ((!!(x)) << 13)
-#define PU (1 << 14)
-#define PU_PRESENT(x) (!!((x) & (1 << 14)))
-#define ENABLE_PU (0 << 15)
-#define DISABLE_PU (1 << 15)
-#define GET_PU(x) (!!((x) & DISABLE_PU))
-
-/*
- * Group 0: GPIO 0...31
- * Used GPIO: 0...22
- * These pins can also act as GPIO outputs
- */
-#define GPA0_ADDR0		(PIN(0,0) | FUNC(2))
-#define GPA0_ADDR0_GPIO		(PIN(0,0) | FUNC(0))
-#define GPA1_ADDR16		(PIN(0,1) | FUNC(2))
-#define GPA1_ADDR16_GPIO	(PIN(0,1) | FUNC(0))
-#define GPA2_ADDR17		(PIN(0,2) | FUNC(2))
-#define GPA2_ADDR17_GPIO	(PIN(0,2) | FUNC(0))
-#define GPA3_ADDR18		(PIN(0,3) | FUNC(2))
-#define GPA3_ADDR18_GPIO	(PIN(0,3) | FUNC(0))
-#define GPA4_ADDR19		(PIN(0,4) | FUNC(2))
-#define GPA4_ADDR19_GPIO	(PIN(0,4) | FUNC(0))
-#define GPA5_ADDR20		(PIN(0,5) | FUNC(2))
-#define GPA5_ADDR20_GPIO	(PIN(0,5) | FUNC(0))
-#define GPA6_ADDR21		(PIN(0,6) | FUNC(2))
-#define GPA6_ADDR21_GPIO	(PIN(0,6) | FUNC(0))
-#define GPA7_ADDR22		(PIN(0,7) | FUNC(2))
-#define GPA7_ADDR22_GPIO	(PIN(0,7) | FUNC(0))
-#define GPA8_ADDR23		(PIN(0,8) | FUNC(2))
-#define GPA8_ADDR23_GPIO	(PIN(0,8) | FUNC(0))
-#define GPA9_ADDR24		(PIN(0,9) | FUNC(2))
-#define GPA9_ADDR24_GPIO	(PIN(0,9) | FUNC(0))
-#define GPA10_ADDR25		(PIN(0,10) | FUNC(2))
-#define GPA10_ADDR25_GPIO	(PIN(0,10) | FUNC(0))
-#define GPA11_ADDR26		(PIN(0,11) | FUNC(2))
-#define GPA11_ADDR26_GPIO	(PIN(0,11) | FUNC(0))
-#define GPA12_NGCS1		(PIN(0,12) | FUNC(2))
-#define GPA12_NGCS1_GPIO	(PIN(0,12) | FUNC(0))
-#define GPA13_NGCS2		(PIN(0,13) | FUNC(2))
-#define GPA13_NGCS2_GPIO	(PIN(0,13) | FUNC(0))
-#define GPA14_NGCS3		(PIN(0,14) | FUNC(2))
-#define GPA14_NGCS3_GPIO	(PIN(0,14) | FUNC(0))
-#define GPA15_NGCS4		(PIN(0,15) | FUNC(2))
-#define GPA15_NGCS4_GPIO	(PIN(0,15) | FUNC(0))
-#define GPA16_NGCS5		(PIN(0,16) | FUNC(2))
-#define GPA16_NGCS5_GPIO	(PIN(0,16) | FUNC(0))
-#define GPA17_CLE		(PIN(0,17) | FUNC(2))
-#define GPA17_CLE_GPIO		(PIN(0,17) | FUNC(0))
-#define GPA18_ALE		(PIN(0,18) | FUNC(2))
-#define GPA18_ALE_GPIO		(PIN(0,18) | FUNC(0))
-#define GPA19_NFWE		(PIN(0,19) | FUNC(2))
-#define GPA19_NFWE_GPIO		(PIN(0,19) | FUNC(0))
-#define GPA20_NFRE		(PIN(0,20) | FUNC(2))
-#define GPA20_NFRE_GPIO		(PIN(0,20) | FUNC(0))
-#define GPA21_NRSTOUT		(PIN(0,21) | FUNC(2))
-#define GPA21_NRSTOUT_GPIO	(PIN(0,21) | FUNC(0))
-#define GPA22_NFCE		(PIN(0,22) | FUNC(2))
-#define GPA22_NFCE_GPIO		(PIN(0,22) | FUNC(0))
-
-/*
- * Group 1: GPIO 32...63
- * Used GPIO: 0...10
- * these pins can also act as GPIO inputs/outputs
- */
-#define GPB0_TOUT0	(PIN(1,0) | FUNC(2) | PU)
-#define GPB0_GPIO	(PIN(1,0) | FUNC(0) | PU)
-#define GPB1_TOUT1	(PIN(1,1) | FUNC(2) | PU)
-#define GPB1_GPIO	(PIN(1,1) | FUNC(0) | PU)
-#define GPB2_TOUT2	(PIN(1,2) | FUNC(2) | PU)
-#define GPB2_GPIO	(PIN(1,2) | FUNC(0) | PU)
-#define GPB3_TOUT3	(PIN(1,3) | FUNC(2) | PU)
-#define GPB3_GPIO	(PIN(1,3) | FUNC(0) | PU)
-#define GPB4_TCLK0	(PIN(1,4) | FUNC(2) | PU)
-#define GPB4_GPIO	(PIN(1,4) | FUNC(0) | PU)
-#define GPB5_NXBACK	(PIN(1,5) | FUNC(2) | PU)
-#define GPB5_GPIO	(PIN(1,5) | FUNC(0) | PU)
-#define GPB6_NXBREQ	(PIN(1,6) | FUNC(2) | PU)
-#define GPB6_GPIO	(PIN(1,6) | FUNC(0) | PU)
-#define GPB7_NXDACK1	(PIN(1,7) | FUNC(2) | PU)
-#define GPB7_GPIO	(PIN(1,7) | FUNC(0) | PU)
-#define GPB8_NXDREQ1	(PIN(1,8) | FUNC(2) | PU)
-#define GPB8_GPIO	(PIN(1,8) | FUNC(0) | PU)
-#define GPB9_NXDACK0	(PIN(1,9) | FUNC(2) | PU)
-#define GPB9_GPIO	(PIN(1,9) | FUNC(0) | PU)
-#define GPB10_NXDREQ0	(PIN(1,10) | FUNC(2) | PU)
-#define GPB10_GPIO	(PIN(1,10) | FUNC(0) | PU)
-
-/*
- * Group 1: GPIO 64...95
- * Used GPIO: 0...15
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPC0_LEND	(PIN(2,0) | FUNC(2) | PU)
-#define GPC0_GPIO	(PIN(2,0) | FUNC(0) | PU)
-#define GPC1_VCLK	(PIN(2,1) | FUNC(2) | PU)
-#define GPC1_GPIO	(PIN(2,1) | FUNC(0) | PU)
-#define GPC2_VLINE	(PIN(2,2) | FUNC(2) | PU)
-#define GPC2_GPIO	(PIN(2,2) | FUNC(0) | PU)
-#define GPC3_VFRAME	(PIN(2,3) | FUNC(2) | PU)
-#define GPC3_GPIO	(PIN(2,3) | FUNC(0) | PU)
-#define GPC4_VM		(PIN(2,4) | FUNC(2) | PU)
-#define GPC4_GPIO	(PIN(2,4) | FUNC(0) | PU)
-#define GPC5_LPCOE	(PIN(2,5) | FUNC(2) | PU)
-#define GPC5_GPIO	(PIN(2,5) | FUNC(0) | PU)
-#define GPC6_LPCREV	(PIN(2,6) | FUNC(2) | PU)
-#define GPC6_GPIO	(PIN(2,6) | FUNC(0) | PU)
-#define GPC7_LPCREVB	(PIN(2,7) | FUNC(2) | PU)
-#define GPC7_GPIO	(PIN(2,7) | FUNC(0) | PU)
-#define GPC8_VD0	(PIN(2,8) | FUNC(2) | PU)
-#define GPC8_GPIO	(PIN(2,8) | FUNC(0) | PU)
-#define GPC9_VD1	(PIN(2,9) | FUNC(2) | PU)
-#define GPC9_GPIO	(PIN(2,9) | FUNC(0) | PU)
-#define GPC10_VD2	(PIN(2,10) | FUNC(2) | PU)
-#define GPC10_GPIO	(PIN(2,10) | FUNC(0) | PU)
-#define GPC11_VD3	(PIN(2,11) | FUNC(2) | PU)
-#define GPC11_GPIO	(PIN(2,11) | FUNC(0) | PU)
-#define GPC12_VD4	(PIN(2,12) | FUNC(2) | PU)
-#define GPC12_GPIO	(PIN(2,12) | FUNC(0) | PU)
-#define GPC13_VD5	(PIN(2,13) | FUNC(2) | PU)
-#define GPC13_GPIO	(PIN(2,13) | FUNC(0) | PU)
-#define GPC14_VD6	(PIN(2,14) | FUNC(2) | PU)
-#define GPC14_GPIO	(PIN(2,14) | FUNC(0) | PU)
-#define GPC15_VD7	(PIN(2,15) | FUNC(2) | PU)
-#define GPC15_GPIO	(PIN(2,15) | FUNC(0) | PU)
-
-/*
- * Group 1: GPIO 96...127
- * Used GPIO: 0...15
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPD0_VD8	(PIN(3,0) | FUNC(2) | PU)
-#define GPD0_GPIO	(PIN(3,0) | FUNC(0) | PU)
-#define GPD1_VD9	(PIN(3,1) | FUNC(2) | PU)
-#define GPD1_GPIO	(PIN(3,1) | FUNC(0) | PU)
-#define GPD2_VD10	(PIN(3,2) | FUNC(2) | PU)
-#define GPD2_GPIO	(PIN(3,2) | FUNC(0) | PU)
-#define GPD3_VD11	(PIN(3,3) | FUNC(2) | PU)
-#define GPD3_GPIO	(PIN(3,3) | FUNC(0) | PU)
-#define GPD4_VD12	(PIN(3,4) | FUNC(2) | PU)
-#define GPD4_GPIO	(PIN(3,4) | FUNC(0) | PU)
-#define GPD5_VD13	(PIN(3,5) | FUNC(2) | PU)
-#define GPD5_GPIO	(PIN(3,5) | FUNC(0) | PU)
-#define GPD6_VD14	(PIN(3,6) | FUNC(2) | PU)
-#define GPD6_GPIO	(PIN(3,6) | FUNC(0) | PU)
-#define GPD7_VD15	(PIN(3,7) | FUNC(2) | PU)
-#define GPD7_GPIO	(PIN(3,7) | FUNC(0) | PU)
-#define GPD8_VD16	(PIN(3,8) | FUNC(2) | PU)
-#define GPD8_GPIO	(PIN(3,8) | FUNC(0) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPD8_SPIMISO1	(PIN(3,8) | FUNC(3) | PU)
-#endif
-#define GPD9_VD17	(PIN(3,9) | FUNC(2) | PU)
-#define GPD9_GPIO	(PIN(3,9) | FUNC(0) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPD9_SPIMOSI1	(PIN(3,9) | FUNC(3) | PU)
-#endif
-#define GPD10_VD18	(PIN(3,10) | FUNC(2) | PU)
-#define GPD10_GPIO	(PIN(3,10) | FUNC(0) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPD10_SPICLK	(PIN(3,10) | FUNC(3) | PU)
-#endif
-#define GPD11_VD19	(PIN(3,11) | FUNC(2) | PU)
-#define GPD11_GPIO	(PIN(3,11) | FUNC(0) | PU)
-#define GPD12_VD20	(PIN(3,12) | FUNC(2) | PU)
-#define GPD12_GPIO	(PIN(3,12) | FUNC(0) | PU)
-#define GPD13_VD21	(PIN(3,13) | FUNC(2) | PU)
-#define GPD13_GPIO	(PIN(3,13) | FUNC(0) | PU)
-#define GPD14_VD22	(PIN(3,14) | FUNC(2) | PU)
-#define GPD14_GPIO	(PIN(3,14) | FUNC(0) | PU)
-#define GPD14_NSS1	(PIN(3,14) | FUNC(3) | PU)
-#define GPD15_VD23	(PIN(3,15) | FUNC(2) | PU)
-#define GPD15_GPIO	(PIN(3,15) | FUNC(0) | PU)
-#define GPD15_NSS0	(PIN(3,15) | FUNC(3) | PU)
-
-/*
- * Group 1: GPIO 128...159
- * Used GPIO: 0...15
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPE0_I2SLRCK	(PIN(4,0) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPE0_AC_SYNC	(PIN(4,0) | FUNC(3) | PU)
-#endif
-#define GPE0_GPIO	(PIN(4,0) | FUNC(0) | PU)
-#define GPE1_I2SSCLK	(PIN(4,1) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPE1_AC_BIT_CLK (PIN(4,1) | FUNC(3) | PU)
-#endif
-#define GPE1_GPIO	(PIN(4,1) | FUNC(0) | PU)
-#define GPE2_CDCLK	(PIN(4,2) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPE2_AC_NRESET	(PIN(4,2) | FUNC(3) | PU)
-#endif
-#define GPE2_GPIO	(PIN(4,2) | FUNC(0) | PU)
-#define GPE3_I2SDI	(PIN(4,3) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPE3_AC_SDATA_IN (PIN(4,3) | FUNC(3) | PU)
-#endif
-#ifdef CONFIG_CPU_S3C2410
-# define GPE_NSS0	(PIN(4,3) | FUNC(3) | PU)
-#endif
-#define GPE3_GPIO	(PIN(4,3) | FUNC(0) | PU)
-#define GPE4_I2SDO	(PIN(4,4) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPE4_AC_SDATA_OUT (PIN(4,4) | FUNC(3) | PU)
-#endif
-#ifdef CONFIG_CPU_S3C2440
-# define GPE4_I2SSDI	(PIN(4,4) | FUNC(3) | PU)
-#endif
-#define GPE4_GPIO	(PIN(4,4) | FUNC(0) | PU)
-#define GPE5_SDCLK	(PIN(4,5) | FUNC(2) | PU)
-#define GPE5_GPIO	(PIN(4,5) | FUNC(0) | PU)
-#define GPE6_SDCMD	(PIN(4,6) | FUNC(2) | PU)
-#define GPE6_GPIO	(PIN(4,6) | FUNC(0) | PU)
-#define GPE7_SDDAT0	(PIN(4,7) | FUNC(2) | PU)
-#define GPE7_GPIO	(PIN(4,7) | FUNC(0) | PU)
-#define GPE8_SDDAT1	(PIN(4,8) | FUNC(2) | PU)
-#define GPE8_GPIO	(PIN(4,8) | FUNC(0) | PU)
-#define GPE9_SDDAT2	(PIN(4,9) | FUNC(2) | PU)
-#define GPE9_GPIO	(PIN(4,9) | FUNC(0) | PU)
-#define GPE10_SDDAT3	(PIN(4,10) | FUNC(2) | PU)
-#define GPE10_GPIO	(PIN(4,10) | FUNC(0) | PU)
-#define GPE11_SPIMISO0	(PIN(4,11) | FUNC(2) | PU)
-#define GPE11_GPIO	(PIN(4,11) | FUNC(0) | PU)
-#define GPE12_SPIMOSI0	(PIN(4,12) | FUNC(2) | PU)
-#define GPE12_GPIO	(PIN(4,12) | FUNC(0) | PU)
-#define GPE13_SPICLK0	(PIN(4,13) | FUNC(2) | PU)
-#define GPE13_GPIO	(PIN(4,13) | FUNC(0) | PU)
-#define GPE14_IICSCL	(PIN(4,14) | FUNC(2))	/* no pullup option */
-#define GPE14_GPIO	(PIN(4,14) | FUNC(0))	/* no pullup option */
-#define GPE15_IICSDA	(PIN(4,15) | FUNC(2))	/* no pullup option */
-#define GPE15_GPIO	(PIN(4,15) | FUNC(0))	/* no pullup option */
-
-/*
- * Group 1: GPIO 160...191
- * Used GPIO: 0...7
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPF0_EINT0	(PIN(5,0) | FUNC(2) | PU)
-#define GPF0_GPIO	(PIN(5,0) | FUNC(0) | PU)
-#define GPF1_EINT1	(PIN(5,1) | FUNC(2) | PU)
-#define GPF1_GPIO	(PIN(5,1) | FUNC(0) | PU)
-#define GPF2_EINT2	(PIN(5,2) | FUNC(2) | PU)
-#define GPF2_GPIO	(PIN(5,2) | FUNC(0) | PU)
-#define GPF3_EINT3	(PIN(5,3) | FUNC(2) | PU)
-#define GPF3_GPIO	(PIN(5,3) | FUNC(0) | PU)
-#define GPF4_EINT4	(PIN(5,4) | FUNC(2) | PU)
-#define GPF4_GPIO	(PIN(5,4) | FUNC(0) | PU)
-#define GPF5_EINT5	(PIN(5,5) | FUNC(2) | PU)
-#define GPF5_GPIO	(PIN(5,5) | FUNC(0) | PU)
-#define GPF6_EINT6	(PIN(5,6) | FUNC(2) | PU)
-#define GPF6_GPIO	(PIN(5,6) | FUNC(0) | PU)
-#define GPF7_EINT7	(PIN(5,7) | FUNC(2) | PU)
-#define GPF7_GPIO	(PIN(5,7) | FUNC(0) | PU)
-
-/*
- * Group 1: GPIO 192..223
- * Used GPIO: 0...15
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPG0_EINT8	(PIN(6,0) | FUNC(2) | PU)
-#define GPG0_GPIO	(PIN(6,0) | FUNC(0) | PU)
-#define GPG1_EINT9	(PIN(6,1) | FUNC(2) | PU)
-#define GPG1_GPIO	(PIN(6,1) | FUNC(0) | PU)
-#define GPG2_EINT10	(PIN(6,2) | FUNC(2) | PU)
-#define GPG2_NSS0	(PIN(6,2) | FUNC(3) | PU)
-#define GPG2_GPIO	(PIN(6,2) | FUNC(0) | PU)
-#define GPG3_EINT11	(PIN(6,3) | FUNC(2) | PU)
-#define GPG3_NSS1	(PIN(6,3) | FUNC(3) | PU)
-#define GPG3_GPIO	(PIN(6,3) | FUNC(0) | PU)
-#define GPG4_EINT12	(PIN(6,4) | FUNC(2) | PU)
-#define GPG4_LCD_PWREN	(PIN(6,4) | FUNC(3) | PU)
-#define GPG4_GPIO	(PIN(6,4) | FUNC(0) | PU)
-#define GPG5_EINT13	(PIN(6,5) | FUNC(2) | PU)
-#define GPG5_SPIMISO1	(PIN(6,5) | FUNC(3) | PU)
-#define GPG5_GPIO	(PIN(6,5) | FUNC(0) | PU)
-#define GPG6_EINT14	(PIN(6,6) | FUNC(2) | PU)
-#define GPG6_SPIMOSI1	(PIN(6,6) | FUNC(3) | PU)
-#define GPG6_GPIO	(PIN(6,6) | FUNC(0) | PU)
-#define GPG7_EINT15	(PIN(6,7) | FUNC(2) | PU)
-#define GPG7_SPICLK1	(PIN(6,7) | FUNC(3) | PU)
-#define GPG7_GPIO	(PIN(6,7) | FUNC(0) | PU)
-#define GPG8_EINT16	(PIN(6,8) | FUNC(2) | PU)
-#define GPG8_GPIO	(PIN(6,8) | FUNC(0) | PU)
-#define GPG9_EINT17	(PIN(6,9) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPG9_NRTS1	(PIN(6,9) | FUNC(3) | PU)
-#endif
-#define GPG9_GPIO	(PIN(6,9) | FUNC(0) | PU)
-#define GPG10_EINT18	(PIN(6,10) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2440
-# define GPG10_NCTS1	(PIN(6,10) | FUNC(3) | PU)
-#endif
-#define GPG10_GPIO	(PIN(6,10) | FUNC(0) | PU)
-#define GPG11_EINT19	(PIN(6,11) | FUNC(2) | PU)
-#define GPG11_TCLK	(PIN(6,11) | FUNC(3) | PU)
-#define GPG11_GPIO	(PIN(6,11) | FUNC(0) | PU)
-#define GPG12_EINT20	(PIN(6,12) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2410
-# define GPG12_XMON	(PIN(6,12) | FUNC(3) | PU)
-#endif
-#define GPG12_GPIO	(PIN(6,12) | FUNC(0) | PU)
-#define GPG13_EINT21	(PIN(6,13) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2410
-# define GPG13_NXPON	(PIN(6,13) | FUNC(3) | PU)
-#endif
-#define GPG13_GPIO	(PIN(6,13) | FUNC(0) | PU)	/* must be input in NAND boot mode */
-#define GPG14_EINT22	(PIN(6,14) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2410
-# define GPG14_YMON	(PIN(6,14) | FUNC(3) | PU)
-#endif
-#define GPG14_GPIO	(PIN(6,14) | FUNC(0) | PU)	/* must be input in NAND boot mode */
-#define GPG15_EINT23	(PIN(6,15) | FUNC(2) | PU)
-#ifdef CONFIG_CPU_S3C2410
-# define GPG15_YPON	(PIN(6,15) | FUNC(3) | PU)
-#endif
-#define GPG15_GPIO	(PIN(6,15) | FUNC(0) | PU)	/* must be input in NAND boot mode */
-
-/*
- * Group 1: GPIO 224..255
- * Used GPIO: 0...15
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPH0_NCTS0	(PIN(7,0) | FUNC(2) | PU)
-#define GPH0_GPIO	(PIN(7,0) | FUNC(0) | PU)
-#define GPH1_NRTS0	(PIN(7,1) | FUNC(2) | PU)
-#define GPH1_GPIO	(PIN(7,1) | FUNC(0) | PU)
-#define GPH2_TXD0	(PIN(7,2) | FUNC(2) | PU)
-#define GPH2_GPIO	(PIN(7,2) | FUNC(0) | PU)
-#define GPH3_RXD0	(PIN(7,3) | FUNC(2) | PU)
-#define GPH3_GPIO	(PIN(7,3) | FUNC(0) | PU)
-#define GPH4_TXD1	(PIN(7,4) | FUNC(2) | PU)
-#define GPH4_GPIO	(PIN(7,4) | FUNC(0) | PU)
-#define GPH5_RXD1	(PIN(7,5) | FUNC(2) | PU)
-#define GPH5_GPIO	(PIN(7,5) | FUNC(0) | PU)
-#define GPH6_TXD2	(PIN(7,6) | FUNC(2) | PU)
-#define GPH6_NRTS1	(PIN(7,6) | FUNC(3) | PU)
-#define GPH6_GPIO	(PIN(7,6) | FUNC(0) | PU)
-#define GPH7_RXD2	(PIN(7,7) | FUNC(2) | PU)
-#define GPH7_NCTS1	(PIN(7,7) | FUNC(3) | PU)
-#define GPH7_GPIO	(PIN(7,7) | FUNC(0) | PU)
-#define GPH8_UEXTCLK	(PIN(7,8) | FUNC(2) | PU)
-#define GPH8_GPIO	(PIN(7,8) | FUNC(0) | PU)
-#define GPH9_CLOCKOUT0	(PIN(7,9) | FUNC(2) | PU)
-#define GPH9_GPIO	(PIN(7,9) | FUNC(0) | PU)
-#define GPH10_CLKOUT1	(PIN(7,10) | FUNC(2) | PU)
-#define GPH10_GPIO	(PIN(7,10) | FUNC(0) | PU)
-
-#ifdef CONFIG_CPU_S3C2440
-/*
- * Group 1: GPIO 256..287
- * Used GPIO: 0...12
- * These pins can also act as GPIO inputs/outputs
- */
-#define GPJ0_CAMDATA0	(PIN(8,0) | FUNC(2) | PU)
-#define GPJ0_GPIO	(PIN(8,0) | FUNC(0) | PU)
-#define GPJ1_CAMDATA1	(PIN(8,1) | FUNC(2) | PU)
-#define GPJ1_GPIO	(PIN(8,1) | FUNC(0) | PU)
-#define GPJ2_CAMDATA2	(PIN(8,2) | FUNC(2) | PU)
-#define GPJ2_GPIO	(PIN(8,2) | FUNC(0) | PU)
-#define GPJ3_CAMDATA3	(PIN(8,3) | FUNC(2) | PU)
-#define GPJ3_GPIO	(PIN(8,3) | FUNC(0) | PU)
-#define GPJ4_CAMDATA4	(PIN(8,4) | FUNC(2) | PU)
-#define GPJ4_GPIO	(PIN(8,4) | FUNC(0) | PU)
-#define GPJ5_CAMDATA5	(PIN(8,5) | FUNC(2) | PU)
-#define GPJ5_GPIO	(PIN(8,5) | FUNC(0) | PU)
-#define GPJ6_CAMDATA6	(PIN(8,6) | FUNC(2) | PU)
-#define GPJ6_GPIO	(PIN(8,6) | FUNC(0) | PU)
-#define GPJ7_CAMDATA7	(PIN(8,7) | FUNC(2) | PU)
-#define GPJ7_GPIO	(PIN(8,7) | FUNC(0) | PU)
-#define GPJ8_CAMPCLK	(PIN(8,8) | FUNC(2) | PU)
-#define GPJ8_GPIO	(PIN(8,8) | FUNC(0) | PU)
-#define GPJ9_CAMVSYNC	(PIN(8,9) | FUNC(2) | PU)
-#define GPJ9_GPIO	(PIN(8,9) | FUNC(0) | PU)
-#define GPJ10_CAMHREF	(PIN(8,10) | FUNC(2) | PU)
-#define GPJ10_GPIO	(PIN(8,10) | FUNC(0) | PU)
-#define GPJ11_CAMCLKOUT	(PIN(8,11) | FUNC(2) | PU)
-#define GPJ11_GPIO	(PIN(8,11) | FUNC(0) | PU)
-#define GPJ12_CAMRESET	(PIN(8,12) | FUNC(0) | PU)
-#define GPJ12_GPIO	(PIN(8,12) | FUNC(0) | PU)
-
-#endif
-
-#endif /* __MACH_IOMUX_S3C24x0_H */
diff --git a/arch/arm/mach-s3c24xx/include/mach/mci.h b/arch/arm/mach-s3c24xx/include/mach/mci.h
deleted file mode 100644
index 6ba8961..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/mci.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert, Pengutronix
- *
- * This code is partially based on u-boot code:
- *
- * Copyright 2008, Freescale Semiconductor, Inc
- * Andy Fleming
- *
- * Based (loosely) on the Linux code
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
-#ifndef __MACH_MMC_H_
-#define __MACH_MMC_H_
-
-struct s3c_mci_platform_data {
-	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
-	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
-	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
-	unsigned f_max;	/**< max operating frequency in Hz (0 -> no limit) */
-	/* TODO */
-	/* function to modify the voltage */
-	/* function to switch the voltage */
-	/* function to detect the presence of a SD card in the socket */
-	unsigned gpio_detect;
-	unsigned detect_invert;
-};
-
-#endif /* __MACH_MMC_H_ */
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
deleted file mode 100644
index a990d80..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
+++ /dev/null
@@ -1,177 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
- *
- */
-
-/* S3C2410 device base addresses */
-#define S3C24X0_SDRAM_BASE		0x30000000
-#define S3C24X0_SDRAM_END		0x40000000
-#define S3C24X0_MEMCTL_BASE		0x48000000
-#define S3C2410_USB_HOST_BASE		0x49000000
-#define S3C2410_INTERRUPT_BASE		0x4A000000
-#define S3C2410_DMA_BASE		0x4B000000
-#define S3C24X0_CLOCK_POWER_BASE	0x4C000000
-#define S3C2410_LCD_BASE		0x4D000000
-#define S3C24X0_NAND_BASE		0x4E000000
-#define S3C24X0_UART_BASE		0x50000000
-#define S3C24X0_TIMER_BASE		0x51000000
-#define S3C2410_USB_DEVICE_BASE		0x52000140
-#define S3C24X0_WATCHDOG_BASE		0x53000000
-#define S3C2410_I2C_BASE		0x54000000
-#define S3C2410_I2S_BASE		0x55000000
-#define S3C24X0_GPIO_BASE		0x56000000
-#define S3C2410_RTC_BASE		0x57000000
-#define S3C2410_ADC_BASE		0x58000000
-#define S3C2410_SPI_BASE		0x59000000
-#define S3C2410_SDI_BASE		0x5A000000
-
-/* Clock control (direct access) */
-
-#define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
-#define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
-#define UPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x8)
-#define CLKCON (S3C24X0_CLOCK_POWER_BASE + 0xc)
-#define CLKSLOW (S3C24X0_CLOCK_POWER_BASE + 0x10)
-#define CLKDIVN (S3C24X0_CLOCK_POWER_BASE + 0x14)
-
-/* Timer (direct access) */
-#define TCFG0 (S3C24X0_TIMER_BASE + 0x00)
-#define TCFG1 (S3C24X0_TIMER_BASE + 0x04)
-#define TCON (S3C24X0_TIMER_BASE + 0x08)
-#define TCNTB0 (S3C24X0_TIMER_BASE + 0x0c)
-#define TCMPB0 (S3C24X0_TIMER_BASE + 0x10)
-#define TCNTO0 (S3C24X0_TIMER_BASE + 0x14)
-#define TCNTB1 (S3C24X0_TIMER_BASE + 0x18)
-#define TCMPB1 (S3C24X0_TIMER_BASE + 0x1c)
-#define TCNTO1 (S3C24X0_TIMER_BASE + 0x20)
-#define TCNTB2 (S3C24X0_TIMER_BASE + 0x24)
-#define TCMPB2 (S3C24X0_TIMER_BASE + 0x28)
-#define TCNTO2 (S3C24X0_TIMER_BASE + 0x2c)
-#define TCNTB3 (S3C24X0_TIMER_BASE + 0x30)
-#define TCMPB3 (S3C24X0_TIMER_BASE + 0x34)
-#define TCNTO3 (S3C24X0_TIMER_BASE + 0x38)
-#define TCNTB4 (S3C24X0_TIMER_BASE + 0x3c)
-#define TCNTO4 (S3C24X0_TIMER_BASE + 0x40)
-
-/* Watchdog (direct access) */
-#define WTCON (S3C24X0_WATCHDOG_BASE)
-#define WTDAT (S3C24X0_WATCHDOG_BASE + 0x04)
-#define WTCNT (S3C24X0_WATCHDOG_BASE + 0x08)
-
-/*
- * if we are booting from NAND, its internal SRAM occures at
- * a different address than without this feature
- */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-# define NFC_RAM_AREA 0x00000000
-#else
-# define NFC_RAM_AREA 0x40000000
-#endif
-#define NFC_RAM_SIZE 4096
-
-/* internal UARTs (driver based) */
-#define UART1_BASE (S3C24X0_UART_BASE)
-#define UART1_SIZE 0x4000
-#define UART2_BASE (S3C24X0_UART_BASE + 0x4000)
-#define UART2_SIZE 0x4000
-#define UART3_BASE (S3C24X0_UART_BASE + 0x8000)
-#define UART3_SIZE 0x4000
-
-/* CS configuration (direct access) */
-#define BWSCON (S3C24X0_MEMCTL_BASE)
-#define BANKCON0 (S3C24X0_MEMCTL_BASE + 0x04)
-#define BANKCON1 (S3C24X0_MEMCTL_BASE + 0x08)
-#define BANKCON2 (S3C24X0_MEMCTL_BASE + 0x0c)
-#define BANKCON3 (S3C24X0_MEMCTL_BASE + 0x10)
-#define BANKCON4 (S3C24X0_MEMCTL_BASE + 0x14)
-#define BANKCON5 (S3C24X0_MEMCTL_BASE + 0x18)
-#define BANKCON6 (S3C24X0_MEMCTL_BASE + 0x1c)
-#define BANKCON7 (S3C24X0_MEMCTL_BASE + 0x20)
-#define REFRESH (S3C24X0_MEMCTL_BASE + 0x24)
-#define BANKSIZE (S3C24X0_MEMCTL_BASE + 0x28)
-#define MRSRB6 (S3C24X0_MEMCTL_BASE + 0x2c)
-#define MRSRB7 (S3C24X0_MEMCTL_BASE + 0x30)
-
-/* GPIO registers (direct access) */
-#define GPACON (S3C24X0_GPIO_BASE)
-#define GPADAT (S3C24X0_GPIO_BASE + 0x04)
-
-#define GPBCON (S3C24X0_GPIO_BASE + 0x10)
-#define GPBDAT (S3C24X0_GPIO_BASE + 0x14)
-#define GPBUP (S3C24X0_GPIO_BASE + 0x18)
-
-#define GPCCON (S3C24X0_GPIO_BASE + 0x20)
-#define GPCDAT (S3C24X0_GPIO_BASE + 0x24)
-#define GPCUP (S3C24X0_GPIO_BASE + 0x28)
-
-#define GPDCON (S3C24X0_GPIO_BASE + 0x30)
-#define GPDDAT (S3C24X0_GPIO_BASE + 0x34)
-#define GPDUP (S3C24X0_GPIO_BASE + 0x38)
-
-#define GPECON (S3C24X0_GPIO_BASE + 0x40)
-#define GPEDAT (S3C24X0_GPIO_BASE + 0x44)
-#define GPEUP (S3C24X0_GPIO_BASE + 0x48)
-
-#define GPFCON (S3C24X0_GPIO_BASE + 0x50)
-#define GPFDAT (S3C24X0_GPIO_BASE + 0x54)
-#define GPFUP (S3C24X0_GPIO_BASE + 0x58)
-
-#define GPGCON (S3C24X0_GPIO_BASE + 0x60)
-#define GPGDAT (S3C24X0_GPIO_BASE + 0x64)
-#define GPGUP (S3C24X0_GPIO_BASE + 0x68)
-
-#define GPHCON (S3C24X0_GPIO_BASE + 0x70)
-#define GPHDAT (S3C24X0_GPIO_BASE + 0x74)
-#define GPHUP (S3C24X0_GPIO_BASE + 0x78)
-
-#ifdef CONFIG_CPU_S3C2440
-# define GPJCON (S3C24X0_GPIO_BASE + 0xd0)
-# define GPJDAT (S3C24X0_GPIO_BASE + 0xd4)
-# define GPJUP (S3C24X0_GPIO_BASE + 0xd8)
-#endif
-
-#define MISCCR  (S3C24X0_GPIO_BASE + 0x80)
-#define DCLKCON (S3C24X0_GPIO_BASE + 0x84)
-#define EXTINT0 (S3C24X0_GPIO_BASE + 0x88)
-#define EXTINT1 (S3C24X0_GPIO_BASE + 0x8c)
-#define EXTINT2 (S3C24X0_GPIO_BASE + 0x90)
-#define EINTFLT0 (S3C24X0_GPIO_BASE + 0x94)
-#define EINTFLT1 (S3C24X0_GPIO_BASE + 0x98)
-#define EINTFLT2 (S3C24X0_GPIO_BASE + 0x9c)
-#define EINTFLT3 (S3C24X0_GPIO_BASE + 0xa0)
-#define EINTMASK (S3C24X0_GPIO_BASE + 0xa4)
-#define EINTPEND (S3C24X0_GPIO_BASE + 0xa8)
-#define GSTATUS0 (S3C24X0_GPIO_BASE + 0xac)
-#define GSTATUS1 (S3C24X0_GPIO_BASE + 0xb0)
-#define GSTATUS2 (S3C24X0_GPIO_BASE + 0xb4)
-#define GSTATUS3 (S3C24X0_GPIO_BASE + 0xb8)
-#define GSTATUS4 (S3C24X0_GPIO_BASE + 0xbc)
-
-#ifdef CONFIG_CPU_S3C2440
-# define DSC0 (S3C24X0_GPIO_BASE + 0xc4)
-# define DSC1 (S3C24X0_GPIO_BASE + 0xc8)
-#endif
-
-/* external IO space */
-#define CS0_BASE 0x00000000
-#define CS1_BASE 0x08000000
-#define CS2_BASE 0x10000000
-#define CS3_BASE 0x18000000
-#define CS4_BASE 0x20000000
-#define CS5_BASE 0x28000000
-#define CS6_BASE 0x30000000
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
deleted file mode 100644
index 7610b4e..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
+++ /dev/null
@@ -1,54 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
- *
- */
-
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-extern void s3c24x0_nand_load_image(void*, int, int);
-#endif
-
-/**
- * Locate the timing bits for the NFCONF register
- * @param setup is the TACLS clock count
- * @param access is the TWRPH0 clock count
- * @param hold is the TWRPH1 clock count
- *
- * @note A clock count of 0 means always 1 HCLK clock.
- * @note Clock count settings depend on the NAND flash requirements and the current HCLK speed
- */
-#ifdef CONFIG_CPU_S3C2410
-# define CALC_NFCONF_TIMING(setup, access, hold) \
-	((setup << 8) + (access << 4) + (hold << 0))
-#endif
-#ifdef CONFIG_CPU_S3C2440
-# define CALC_NFCONF_TIMING(setup, access, hold) \
-	((setup << 12) + (access << 8) + (hold << 4))
-#endif
-
-/**
- * Define platform specific data for the NAND controller and its device
- */
-struct s3c24x0_nand_platform_data {
-	uint32_t nand_timing;	/**< value for the NFCONF register (timing bits only) */
-	char flash_bbt;	/**< force a flash based BBT */
-};
-
-/**
- * @file
- * @brief Basic declaration to use the s3c24x0 NAND driver
- */
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h b/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
deleted file mode 100644
index b8abcf1..0000000
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
+++ /dev/null
@@ -1,33 +0,0 @@
-/*
- * (C) Copyright 2009
- * Juergen Beisert, Pengutronix
- *
- * (C) Copyright 2001-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * (C) Copyright 2002
- * David Mueller, ELSOFT AG, d.mueller@elsoft.ch
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
-uint32_t s3c24xx_get_mpllclk(void);
-uint32_t s3c24xx_get_upllclk(void);
-uint32_t s3c24xx_get_fclk(void);
-uint32_t s3c24xx_get_hclk(void);
-uint32_t s3c24xx_get_pclk(void);
-uint32_t s3c24xx_get_uclk(void);
-uint32_t s3c24x0_get_memory_size(void);
diff --git a/arch/arm/mach-s3c24xx/lowlevel-init.S b/arch/arm/mach-s3c24xx/lowlevel-init.S
deleted file mode 100644
index e8004e5..0000000
--- a/arch/arm/mach-s3c24xx/lowlevel-init.S
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
-#include <mach/s3c24x0-iomap.h>
-
-	.section ".text_bare_init.s3c24x0_disable_wd","ax"
-
-/*
- * Disable the watchdog, else it continues to bark
- */
-.globl s3c24x0_disable_wd
-s3c24x0_disable_wd:
-
-	ldr r0, =S3C24X0_WATCHDOG_BASE
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
-#ifdef CONFIG_S3C24XX_PLL_INIT
-
-	.section ".text_bare_init.s3c24x0_pll_init","ax"
-
-.globl s3c24x0_pll_init
-s3c24x0_pll_init:
-
-	mov r0, #S3C24X0_CLOCK_POWER_BASE
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
-the CONFIG_S3C24XX_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
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
-#ifdef CONFIG_S3C24XX_SDRAM_INIT
-
-	.section ".text_bare_init.s3c24x0_sdram_init","ax"
-
-	.globl s3c24x0_sdram_init
-s3c24x0_sdram_init:
-
-	adr r0, SDRAMDATA	/* get the current relative address of the table */
-	mov r1, #S3C24X0_MEMCTL_BASE
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
-Enable CONFIG_S3C24XX_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
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
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-
-	.section ".text_bare_init.s3c24x0_nand_boot","ax"
-
-	.globl s3c24x0_nand_boot
-s3c24x0_nand_boot:
-/*
- * In the case of NOR boot we are running from the same address space.
- * Detect this case to handle it correctly.
- */
-	mov r1, #S3C24X0_MEMCTL_BASE
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
-enable CONFIG_S3C24XX_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
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
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
new file mode 100644
index 0000000..a800cb8
--- /dev/null
+++ b/arch/arm/mach-samsung/Kconfig
@@ -0,0 +1,117 @@
+config ARCH_SAMSUNG
+	bool
+
+if ARCH_SAMSUNG
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x31fc0000 if MACH_MINI2440
+	default 0x31fc0000 if MACH_A9M2440
+	default 0x31fc0000 if MACH_A9M2410
+
+config BOARDINFO
+	default "Mini 2440"    if MACH_MINI2440
+	default "Digi A9M2440" if MACH_A9M2440
+	default "Digi A9M2410" if MACH_A9M2410
+
+if ARCH_S3C24xx
+
+config CPU_S3C2410
+	bool
+
+config CPU_S3C2440
+	bool
+
+choice
+
+	prompt "S3C24xx Board Type"
+
+config MACH_A9M2410
+	bool "Digi A9M2410"
+	select CPU_S3C2410
+	select MACH_HAS_LOWLEVEL_INIT
+	select S3C24XX_PLL_INIT
+	select S3C24XX_SDRAM_INIT
+	help
+	  Say Y here if you are using Digi's Connect Core 9M equipped
+	  with a Samsung S3C2410 Processor
+
+config MACH_A9M2440
+	bool "Digi A9M2440"
+	select CPU_S3C2440
+	select MACH_HAS_LOWLEVEL_INIT
+	select S3C24XX_PLL_INIT
+	help
+	  Say Y here if you are using Digi's Connect Core 9M equipped
+	  with a Samsung S3C2440 Processor
+
+config MACH_MINI2440
+	bool "Mini 2440"
+	select CPU_S3C2440
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+	select S3C24XX_PLL_INIT
+	select S3C24XX_SDRAM_INIT
+	select HAS_DM9000
+	help
+	  Say Y here if you are using Mini 2440 dev board equipped
+	  with a Samsung S3C2440 Processor
+
+endchoice
+
+menu "Board specific settings       "
+
+choice
+	prompt "A9M2440 baseboard"
+	depends on MACH_A9M2440
+
+config MACH_A9M2410DEV
+	bool
+	prompt "A9M2410dev"
+	select HAS_CS8900
+	help
+	  Digi's evaluation board.
+
+endchoice
+
+source arch/arm/boards/mini2440/Kconfig
+
+endmenu
+
+menu "S3C24X0 Features              "
+
+config S3C24XX_LOW_LEVEL_INIT
+	bool
+
+config S3C24XX_PLL_INIT
+	bool
+	prompt "Reconfigure PLL"
+	select S3C24XX_LOW_LEVEL_INIT
+	help
+	  This adds generic code to reconfigure the internal PLL very early
+	  after reset.
+
+config S3C24XX_SDRAM_INIT
+	bool
+	prompt "Initialize SDRAM"
+	select S3C24XX_LOW_LEVEL_INIT
+	help
+	  This adds generic code to configure the SDRAM controller after reset.
+	  The initialisation will be skipped if the code is already running
+	  from SDRAM.
+
+config S3C24XX_NAND_BOOT
+	bool
+	prompt "Booting from NAND"
+	select MTD
+	select NAND
+	select NAND_S3C24X0
+	help
+	  Add generic support to boot from NAND flash. Image loading will be
+	  skipped if the code is running from NOR or already from SDRAM.
+
+endmenu
+
+endif
+
+endif
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
new file mode 100644
index 0000000..88d45fe
--- /dev/null
+++ b/arch/arm/mach-samsung/Makefile
@@ -0,0 +1,2 @@
+obj-y += generic.o gpio-s3c24x0.o
+obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
new file mode 100644
index 0000000..d2f2ac7
--- /dev/null
+++ b/arch/arm/mach-samsung/generic.c
@@ -0,0 +1,297 @@
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
+#include <mach/s3c24x0-iomap.h>
+
+/**
+ * Calculate the current M-PLL clock.
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_mpllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(MPLLCON);
+	m = ((reg_val & 0xFF000) >> 12) + 8;
+	p = ((reg_val & 0x003F0) >> 4) + 2;
+	s = reg_val & 0x3;
+#ifdef CONFIG_CPU_S3C2410
+	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	return 2 * m * (S3C24XX_CLOCK_REFERENCE / (p << s));
+#endif
+}
+
+/**
+ * Calculate the current U-PLL clock
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_upllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(UPLLCON);
+	m = ((reg_val & 0xFF000) >> 12) + 8;
+	p = ((reg_val & 0x003F0) >> 4) + 2;
+	s = reg_val & 0x3;
+
+	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
+}
+
+/**
+ * Calculate the FCLK frequency used for the ARM CPU core
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_fclk(void)
+{
+	return s3c24xx_get_mpllclk();
+}
+
+/**
+ * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_hclk(void)
+{
+	uint32_t f_clk;
+
+	f_clk = s3c24xx_get_fclk();
+#ifdef CONFIG_CPU_S3C2410
+	if (readl(CLKDIVN) & 0x02)
+		return f_clk >> 1;
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	switch(readl(CLKDIVN) & 0x06) {
+	case 2:
+		return f_clk >> 1;
+	case 4:
+		return f_clk >> 2;	/* TODO consider CAMDIVN */
+	case 6:
+		return f_clk / 3;	/* TODO consider CAMDIVN */
+	}
+#endif
+	return f_clk;
+}
+
+/**
+ * Calculate the PCLK frequency used for the slower peripherals
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_pclk(void)
+{
+	uint32_t p_clk;
+
+	p_clk = s3c24xx_get_hclk();
+	if (readl(CLKDIVN) & 0x01)
+		return p_clk >> 1;
+	return p_clk;
+}
+
+/**
+ * Calculate the UCLK frequency used by the USB host device
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24xx_get_uclk(void)
+{
+    return s3c24xx_get_upllclk();
+}
+
+/**
+ * Calculate the amount of connected and available memory
+ * @return Memory size in bytes
+ */
+uint32_t s3c24x0_get_memory_size(void)
+{
+	uint32_t reg, size;
+
+	/*
+	 * detect the current memory size
+	 */
+	reg = readl(BANKSIZE);
+
+	switch (reg & 0x7) {
+	case 0:
+		size = 32 * 1024 * 1024;
+		break;
+	case 1:
+		size = 64 * 1024 * 1024;
+		break;
+	case 2:
+		size = 128 * 1024 * 1024;
+		break;
+	case 4:
+		size = 2 * 1024 * 1024;
+		break;
+	case 5:
+		size = 4 * 1024 * 1024;
+		break;
+	case 6:
+		size = 8 * 1024 * 1024;
+		break;
+	default:
+		size = 16 * 1024 * 1024;
+		break;
+	}
+
+	/*
+	 * Is bank7 also configured for SDRAM usage?
+	 */
+	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		size <<= 1;	/* also count this bank */
+
+	return size;
+}
+
+/**
+ * Show the user the current clock settings
+ */
+int s3c24xx_dump_clocks(void)
+{
+	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
+	printf("mpll:    %7d kHz\n", s3c24xx_get_mpllclk() / 1000);
+	printf("upll:    %7d kHz\n", s3c24xx_get_upllclk() / 1000);
+	printf("fclk:    %7d kHz\n", s3c24xx_get_fclk() / 1000);
+	printf("hclk:    %7d kHz\n", s3c24xx_get_hclk() / 1000);
+	printf("pclk:    %7d kHz\n", s3c24xx_get_pclk() / 1000);
+	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c24xx_get_hclk() / 1000000);
+	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
+			s3c24xx_get_hclk() / 1000000);
+	return 0;
+}
+
+late_initcall(s3c24xx_dump_clocks);
+
+static uint64_t s3c24xx_clocksource_read(void)
+{
+	/* note: its a down counter */
+	return 0xFFFF - readw(TCNTO4);
+}
+
+static struct clocksource cs = {
+	.read	= s3c24xx_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(16),
+	.shift	= 10,
+};
+
+static int clocksource_init (void)
+{
+	uint32_t p_clk = s3c24xx_get_pclk();
+
+	writel(0x00000000, TCON);	/* stop all timers */
+	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
+	writel(0x00030000, TCFG1);	/* /16 */
+
+	writew(0xffff, TCNTB4);		/* reload value is TOP */
+
+	writel(0x00600000, TCON);	/* force a first reload */
+	writel(0x00400000, TCON);
+	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
+
+	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+core_initcall(clocksource_init);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	/* Disable watchdog */
+	writew(0x0000, WTCON);
+
+	/* Initialize watchdog timer count register */
+	writew(0x0001, WTCNT);
+
+	/* Enable watchdog timer; assert reset at timer timeout */
+	writew(0x0021, WTCON);
+
+	/* loop forever and wait for reset to happen */
+	while(1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
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
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
new file mode 100644
index 0000000..946ec33
--- /dev/null
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -0,0 +1,169 @@
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <mach/s3c24x0-iomap.h>
+#include <mach/gpio.h>
+
+static const unsigned char group_offset[] =
+{
+	0x00,	/* GPA */
+	0x10,	/* GPB */
+	0x20,	/* GPC */
+	0x30,	/* GPD */
+	0x40,	/* GPE */
+	0x50,	/* GPF */
+	0x60,	/* GPG */
+	0x70,	/* GPH */
+#ifdef CONFIG_CPU_S3C2440
+	0xd0,	/* GPJ */
+#endif
+};
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	unsigned group = gpio >> 5;
+	unsigned bit = gpio % 32;
+	unsigned offset;
+	uint32_t reg;
+
+	offset = group_offset[group];
+
+	reg = readl(GPADAT + offset);
+	reg &= ~(1 << bit);
+	reg |= (!!value) << bit;
+	writel(reg, GPADAT + offset);
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	unsigned group = gpio >> 5;
+	unsigned bit = gpio % 32;
+	unsigned offset;
+	uint32_t reg;
+
+	offset = group_offset[group];
+
+	reg = readl(GPACON + offset);
+	reg &= ~(0x3 << (bit << 1));
+	writel(reg, GPACON + offset);
+
+	return 0;
+}
+
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	unsigned group = gpio >> 5;
+	unsigned bit = gpio % 32;
+	unsigned offset;
+	uint32_t reg;
+
+	offset = group_offset[group];
+
+	/* value */
+	gpio_set_value(gpio,value);
+	/* direction */
+	if (group == 0) {	/* GPA is special */
+		reg = readl(GPACON);
+		reg &= ~(1 << bit);
+		writel(reg, GPACON);
+	} else {
+		reg = readl(GPACON + offset);
+		reg &= ~(0x3 << (bit << 1));
+		reg |= 0x1 << (bit << 1);
+		writel(reg, GPACON + offset);
+	}
+
+	return 0;
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	unsigned group = gpio >> 5;
+	unsigned bit = gpio % 32;
+	unsigned offset;
+	uint32_t reg;
+
+	if (group == 0)	/* GPA is special: no input mode available */
+		return -ENODEV;
+
+	offset = group_offset[group];
+
+	/* value */
+	reg = readl(GPADAT + offset);
+
+	return !!(reg & (1 << bit));
+}
+
+void s3c_gpio_mode(unsigned gpio_mode)
+{
+	unsigned group, func, bit, offset, gpio;
+	uint32_t reg;
+
+	group = GET_GROUP(gpio_mode);
+	func = GET_FUNC(gpio_mode);
+	bit = GET_BIT(gpio_mode);
+	gpio = GET_GPIO_NO(gpio_mode);
+
+	if (group == 0) {
+		/* GPA is special */
+		switch (func) {
+		case 0:		/* GPIO input */
+			pr_debug("Cannot set GPA pin to GPIO input\n");
+			break;
+		case 1:		/* GPIO output */
+			gpio_direction_output(bit, GET_GPIOVAL(gpio_mode));
+			break;
+		default:
+			reg = readl(GPACON);
+			reg |= 1 << bit;
+			writel(reg, GPACON);
+			break;
+		}
+		return;
+	}
+
+	offset = group_offset[group];
+
+	if (PU_PRESENT(gpio_mode)) {
+		reg = readl(GPACON + offset + 8);
+		if (GET_PU(gpio_mode))
+			reg |= (1 << bit);	/* set means _disabled_ */
+		else
+			reg &= ~(1 << bit);
+		writel(reg, GPACON + offset + 8);
+	}
+
+	switch (func) {
+	case 0: /* input */
+		gpio_direction_input(gpio);
+		break;
+	case 1:	/* output */
+		gpio_direction_output(gpio, GET_GPIOVAL(gpio_mode));
+		break;
+	case 2: /* function one */
+	case 3: /* function two */
+		reg = readl(GPACON + offset);
+		reg &= ~(0x3 << (bit << 1));
+		reg |= func << (bit << 1);
+		writel(reg, GPACON + offset);
+		break;
+	}
+}
diff --git a/arch/arm/mach-samsung/include/mach/fb.h b/arch/arm/mach-samsung/include/mach/fb.h
new file mode 100644
index 0000000..05e013a
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/fb.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert
+ * Copyright (C) 2011 Alexey Galakhov
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
+#ifndef __MACH_FB_H_
+# define __MACH_FB_H_
+
+#include <fb.h>
+
+/** Proprietary flags corresponding to  S3C24x0 LCDCON5 register */
+
+/** ! INVVDEN - DE active high */
+#define FB_SYNC_DE_HIGH_ACT	(1 << 23)
+/** INVVCLK - invert CLK signal */
+#define FB_SYNC_CLK_INVERT	(1 << 24)
+/** INVVD - invert data */
+#define FB_SYNC_DATA_INVERT	(1 << 25)
+/** INVPWREN - use PWREN signal */
+#define FB_SYNC_INVERT_PWREN	(1 << 26)
+/** INVLEND - use LEND signal */
+#define FB_SYNC_INVERT_LEND	(1 << 27)
+/** PWREN - use PWREN signal */
+#define FB_SYNC_USE_PWREN	(1 << 28)
+/** ENLEND - use LEND signal */
+#define FB_SYNC_USE_LEND	(1 << 29)
+/** BSWP - swap bytes */
+#define FB_SYNC_SWAP_BYTES	(1 << 30)
+/** HWSWP - swap half words */
+#define FB_SYNC_SWAP_HW		(1 << 31)
+
+struct s3c_fb_platform_data {
+	struct fb_videomode *mode_list;
+	unsigned mode_cnt;
+
+	unsigned bits_per_pixel;
+	int passive_display;	/**< enable support for STN or CSTN displays */
+
+	/** hook to enable backlight and stuff */
+	void (*enable)(int enable);
+};
+
+#endif /* __MACH_FB_H_ */
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
new file mode 100644
index 0000000..37db4f5
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/gpio.h
@@ -0,0 +1,31 @@
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
+#if defined(CONFIG_CPU_S3C2440) || defined(CONFIG_CPU_S3C2410)
+# include <mach/iomux-s3c24x0.h>
+#endif
+
+void gpio_set_value(unsigned, int);
+int gpio_direction_input(unsigned);
+int gpio_direction_output(unsigned, int);
+int gpio_get_value(unsigned);
+void s3c_gpio_mode(unsigned);
+
+#endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h b/arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
new file mode 100644
index 0000000..2c64a97
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
@@ -0,0 +1,426 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert
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
+#ifndef __MACH_IOMUX_S3C24x0_H
+#define __MACH_IOMUX_S3C24x0_H
+
+/* 3322222222221111111111
+ * 10987654321098765432109876543210
+ *                            ^^^^^_ Bit offset
+ *                        ^^^^______ Group Number
+ *                    ^^____________ Function
+ *                   ^______________ initial GPIO out value
+ *                  ^_______________ Pull up feature present
+ *                 ^________________ initial pull up setting
+ */
+
+
+#define PIN(group,bit) (group * 32 + bit)
+#define FUNC(x) (((x) & 0x3) << 11)
+#define GET_FUNC(x) (((x) >> 11) & 0x3)
+#define GET_GROUP(x) (((x) >> 5) & 0xf)
+#define GET_BIT(x) (((x) & 0x1ff) % 32)
+#define GET_GPIOVAL(x) (((x) >> 13) & 0x1)
+#define GET_GPIO_NO(x) ((x & 0x1ff))
+#define GPIO_OUT FUNC(1)
+#define GPIO_IN FUNC(0)
+#define GPIO_VAL(x) ((!!(x)) << 13)
+#define PU (1 << 14)
+#define PU_PRESENT(x) (!!((x) & (1 << 14)))
+#define ENABLE_PU (0 << 15)
+#define DISABLE_PU (1 << 15)
+#define GET_PU(x) (!!((x) & DISABLE_PU))
+
+/*
+ * Group 0: GPIO 0...31
+ * Used GPIO: 0...22
+ * These pins can also act as GPIO outputs
+ */
+#define GPA0_ADDR0		(PIN(0,0) | FUNC(2))
+#define GPA0_ADDR0_GPIO		(PIN(0,0) | FUNC(0))
+#define GPA1_ADDR16		(PIN(0,1) | FUNC(2))
+#define GPA1_ADDR16_GPIO	(PIN(0,1) | FUNC(0))
+#define GPA2_ADDR17		(PIN(0,2) | FUNC(2))
+#define GPA2_ADDR17_GPIO	(PIN(0,2) | FUNC(0))
+#define GPA3_ADDR18		(PIN(0,3) | FUNC(2))
+#define GPA3_ADDR18_GPIO	(PIN(0,3) | FUNC(0))
+#define GPA4_ADDR19		(PIN(0,4) | FUNC(2))
+#define GPA4_ADDR19_GPIO	(PIN(0,4) | FUNC(0))
+#define GPA5_ADDR20		(PIN(0,5) | FUNC(2))
+#define GPA5_ADDR20_GPIO	(PIN(0,5) | FUNC(0))
+#define GPA6_ADDR21		(PIN(0,6) | FUNC(2))
+#define GPA6_ADDR21_GPIO	(PIN(0,6) | FUNC(0))
+#define GPA7_ADDR22		(PIN(0,7) | FUNC(2))
+#define GPA7_ADDR22_GPIO	(PIN(0,7) | FUNC(0))
+#define GPA8_ADDR23		(PIN(0,8) | FUNC(2))
+#define GPA8_ADDR23_GPIO	(PIN(0,8) | FUNC(0))
+#define GPA9_ADDR24		(PIN(0,9) | FUNC(2))
+#define GPA9_ADDR24_GPIO	(PIN(0,9) | FUNC(0))
+#define GPA10_ADDR25		(PIN(0,10) | FUNC(2))
+#define GPA10_ADDR25_GPIO	(PIN(0,10) | FUNC(0))
+#define GPA11_ADDR26		(PIN(0,11) | FUNC(2))
+#define GPA11_ADDR26_GPIO	(PIN(0,11) | FUNC(0))
+#define GPA12_NGCS1		(PIN(0,12) | FUNC(2))
+#define GPA12_NGCS1_GPIO	(PIN(0,12) | FUNC(0))
+#define GPA13_NGCS2		(PIN(0,13) | FUNC(2))
+#define GPA13_NGCS2_GPIO	(PIN(0,13) | FUNC(0))
+#define GPA14_NGCS3		(PIN(0,14) | FUNC(2))
+#define GPA14_NGCS3_GPIO	(PIN(0,14) | FUNC(0))
+#define GPA15_NGCS4		(PIN(0,15) | FUNC(2))
+#define GPA15_NGCS4_GPIO	(PIN(0,15) | FUNC(0))
+#define GPA16_NGCS5		(PIN(0,16) | FUNC(2))
+#define GPA16_NGCS5_GPIO	(PIN(0,16) | FUNC(0))
+#define GPA17_CLE		(PIN(0,17) | FUNC(2))
+#define GPA17_CLE_GPIO		(PIN(0,17) | FUNC(0))
+#define GPA18_ALE		(PIN(0,18) | FUNC(2))
+#define GPA18_ALE_GPIO		(PIN(0,18) | FUNC(0))
+#define GPA19_NFWE		(PIN(0,19) | FUNC(2))
+#define GPA19_NFWE_GPIO		(PIN(0,19) | FUNC(0))
+#define GPA20_NFRE		(PIN(0,20) | FUNC(2))
+#define GPA20_NFRE_GPIO		(PIN(0,20) | FUNC(0))
+#define GPA21_NRSTOUT		(PIN(0,21) | FUNC(2))
+#define GPA21_NRSTOUT_GPIO	(PIN(0,21) | FUNC(0))
+#define GPA22_NFCE		(PIN(0,22) | FUNC(2))
+#define GPA22_NFCE_GPIO		(PIN(0,22) | FUNC(0))
+
+/*
+ * Group 1: GPIO 32...63
+ * Used GPIO: 0...10
+ * these pins can also act as GPIO inputs/outputs
+ */
+#define GPB0_TOUT0	(PIN(1,0) | FUNC(2) | PU)
+#define GPB0_GPIO	(PIN(1,0) | FUNC(0) | PU)
+#define GPB1_TOUT1	(PIN(1,1) | FUNC(2) | PU)
+#define GPB1_GPIO	(PIN(1,1) | FUNC(0) | PU)
+#define GPB2_TOUT2	(PIN(1,2) | FUNC(2) | PU)
+#define GPB2_GPIO	(PIN(1,2) | FUNC(0) | PU)
+#define GPB3_TOUT3	(PIN(1,3) | FUNC(2) | PU)
+#define GPB3_GPIO	(PIN(1,3) | FUNC(0) | PU)
+#define GPB4_TCLK0	(PIN(1,4) | FUNC(2) | PU)
+#define GPB4_GPIO	(PIN(1,4) | FUNC(0) | PU)
+#define GPB5_NXBACK	(PIN(1,5) | FUNC(2) | PU)
+#define GPB5_GPIO	(PIN(1,5) | FUNC(0) | PU)
+#define GPB6_NXBREQ	(PIN(1,6) | FUNC(2) | PU)
+#define GPB6_GPIO	(PIN(1,6) | FUNC(0) | PU)
+#define GPB7_NXDACK1	(PIN(1,7) | FUNC(2) | PU)
+#define GPB7_GPIO	(PIN(1,7) | FUNC(0) | PU)
+#define GPB8_NXDREQ1	(PIN(1,8) | FUNC(2) | PU)
+#define GPB8_GPIO	(PIN(1,8) | FUNC(0) | PU)
+#define GPB9_NXDACK0	(PIN(1,9) | FUNC(2) | PU)
+#define GPB9_GPIO	(PIN(1,9) | FUNC(0) | PU)
+#define GPB10_NXDREQ0	(PIN(1,10) | FUNC(2) | PU)
+#define GPB10_GPIO	(PIN(1,10) | FUNC(0) | PU)
+
+/*
+ * Group 1: GPIO 64...95
+ * Used GPIO: 0...15
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPC0_LEND	(PIN(2,0) | FUNC(2) | PU)
+#define GPC0_GPIO	(PIN(2,0) | FUNC(0) | PU)
+#define GPC1_VCLK	(PIN(2,1) | FUNC(2) | PU)
+#define GPC1_GPIO	(PIN(2,1) | FUNC(0) | PU)
+#define GPC2_VLINE	(PIN(2,2) | FUNC(2) | PU)
+#define GPC2_GPIO	(PIN(2,2) | FUNC(0) | PU)
+#define GPC3_VFRAME	(PIN(2,3) | FUNC(2) | PU)
+#define GPC3_GPIO	(PIN(2,3) | FUNC(0) | PU)
+#define GPC4_VM		(PIN(2,4) | FUNC(2) | PU)
+#define GPC4_GPIO	(PIN(2,4) | FUNC(0) | PU)
+#define GPC5_LPCOE	(PIN(2,5) | FUNC(2) | PU)
+#define GPC5_GPIO	(PIN(2,5) | FUNC(0) | PU)
+#define GPC6_LPCREV	(PIN(2,6) | FUNC(2) | PU)
+#define GPC6_GPIO	(PIN(2,6) | FUNC(0) | PU)
+#define GPC7_LPCREVB	(PIN(2,7) | FUNC(2) | PU)
+#define GPC7_GPIO	(PIN(2,7) | FUNC(0) | PU)
+#define GPC8_VD0	(PIN(2,8) | FUNC(2) | PU)
+#define GPC8_GPIO	(PIN(2,8) | FUNC(0) | PU)
+#define GPC9_VD1	(PIN(2,9) | FUNC(2) | PU)
+#define GPC9_GPIO	(PIN(2,9) | FUNC(0) | PU)
+#define GPC10_VD2	(PIN(2,10) | FUNC(2) | PU)
+#define GPC10_GPIO	(PIN(2,10) | FUNC(0) | PU)
+#define GPC11_VD3	(PIN(2,11) | FUNC(2) | PU)
+#define GPC11_GPIO	(PIN(2,11) | FUNC(0) | PU)
+#define GPC12_VD4	(PIN(2,12) | FUNC(2) | PU)
+#define GPC12_GPIO	(PIN(2,12) | FUNC(0) | PU)
+#define GPC13_VD5	(PIN(2,13) | FUNC(2) | PU)
+#define GPC13_GPIO	(PIN(2,13) | FUNC(0) | PU)
+#define GPC14_VD6	(PIN(2,14) | FUNC(2) | PU)
+#define GPC14_GPIO	(PIN(2,14) | FUNC(0) | PU)
+#define GPC15_VD7	(PIN(2,15) | FUNC(2) | PU)
+#define GPC15_GPIO	(PIN(2,15) | FUNC(0) | PU)
+
+/*
+ * Group 1: GPIO 96...127
+ * Used GPIO: 0...15
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPD0_VD8	(PIN(3,0) | FUNC(2) | PU)
+#define GPD0_GPIO	(PIN(3,0) | FUNC(0) | PU)
+#define GPD1_VD9	(PIN(3,1) | FUNC(2) | PU)
+#define GPD1_GPIO	(PIN(3,1) | FUNC(0) | PU)
+#define GPD2_VD10	(PIN(3,2) | FUNC(2) | PU)
+#define GPD2_GPIO	(PIN(3,2) | FUNC(0) | PU)
+#define GPD3_VD11	(PIN(3,3) | FUNC(2) | PU)
+#define GPD3_GPIO	(PIN(3,3) | FUNC(0) | PU)
+#define GPD4_VD12	(PIN(3,4) | FUNC(2) | PU)
+#define GPD4_GPIO	(PIN(3,4) | FUNC(0) | PU)
+#define GPD5_VD13	(PIN(3,5) | FUNC(2) | PU)
+#define GPD5_GPIO	(PIN(3,5) | FUNC(0) | PU)
+#define GPD6_VD14	(PIN(3,6) | FUNC(2) | PU)
+#define GPD6_GPIO	(PIN(3,6) | FUNC(0) | PU)
+#define GPD7_VD15	(PIN(3,7) | FUNC(2) | PU)
+#define GPD7_GPIO	(PIN(3,7) | FUNC(0) | PU)
+#define GPD8_VD16	(PIN(3,8) | FUNC(2) | PU)
+#define GPD8_GPIO	(PIN(3,8) | FUNC(0) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPD8_SPIMISO1	(PIN(3,8) | FUNC(3) | PU)
+#endif
+#define GPD9_VD17	(PIN(3,9) | FUNC(2) | PU)
+#define GPD9_GPIO	(PIN(3,9) | FUNC(0) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPD9_SPIMOSI1	(PIN(3,9) | FUNC(3) | PU)
+#endif
+#define GPD10_VD18	(PIN(3,10) | FUNC(2) | PU)
+#define GPD10_GPIO	(PIN(3,10) | FUNC(0) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPD10_SPICLK	(PIN(3,10) | FUNC(3) | PU)
+#endif
+#define GPD11_VD19	(PIN(3,11) | FUNC(2) | PU)
+#define GPD11_GPIO	(PIN(3,11) | FUNC(0) | PU)
+#define GPD12_VD20	(PIN(3,12) | FUNC(2) | PU)
+#define GPD12_GPIO	(PIN(3,12) | FUNC(0) | PU)
+#define GPD13_VD21	(PIN(3,13) | FUNC(2) | PU)
+#define GPD13_GPIO	(PIN(3,13) | FUNC(0) | PU)
+#define GPD14_VD22	(PIN(3,14) | FUNC(2) | PU)
+#define GPD14_GPIO	(PIN(3,14) | FUNC(0) | PU)
+#define GPD14_NSS1	(PIN(3,14) | FUNC(3) | PU)
+#define GPD15_VD23	(PIN(3,15) | FUNC(2) | PU)
+#define GPD15_GPIO	(PIN(3,15) | FUNC(0) | PU)
+#define GPD15_NSS0	(PIN(3,15) | FUNC(3) | PU)
+
+/*
+ * Group 1: GPIO 128...159
+ * Used GPIO: 0...15
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPE0_I2SLRCK	(PIN(4,0) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPE0_AC_SYNC	(PIN(4,0) | FUNC(3) | PU)
+#endif
+#define GPE0_GPIO	(PIN(4,0) | FUNC(0) | PU)
+#define GPE1_I2SSCLK	(PIN(4,1) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPE1_AC_BIT_CLK (PIN(4,1) | FUNC(3) | PU)
+#endif
+#define GPE1_GPIO	(PIN(4,1) | FUNC(0) | PU)
+#define GPE2_CDCLK	(PIN(4,2) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPE2_AC_NRESET	(PIN(4,2) | FUNC(3) | PU)
+#endif
+#define GPE2_GPIO	(PIN(4,2) | FUNC(0) | PU)
+#define GPE3_I2SDI	(PIN(4,3) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPE3_AC_SDATA_IN (PIN(4,3) | FUNC(3) | PU)
+#endif
+#ifdef CONFIG_CPU_S3C2410
+# define GPE_NSS0	(PIN(4,3) | FUNC(3) | PU)
+#endif
+#define GPE3_GPIO	(PIN(4,3) | FUNC(0) | PU)
+#define GPE4_I2SDO	(PIN(4,4) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPE4_AC_SDATA_OUT (PIN(4,4) | FUNC(3) | PU)
+#endif
+#ifdef CONFIG_CPU_S3C2440
+# define GPE4_I2SSDI	(PIN(4,4) | FUNC(3) | PU)
+#endif
+#define GPE4_GPIO	(PIN(4,4) | FUNC(0) | PU)
+#define GPE5_SDCLK	(PIN(4,5) | FUNC(2) | PU)
+#define GPE5_GPIO	(PIN(4,5) | FUNC(0) | PU)
+#define GPE6_SDCMD	(PIN(4,6) | FUNC(2) | PU)
+#define GPE6_GPIO	(PIN(4,6) | FUNC(0) | PU)
+#define GPE7_SDDAT0	(PIN(4,7) | FUNC(2) | PU)
+#define GPE7_GPIO	(PIN(4,7) | FUNC(0) | PU)
+#define GPE8_SDDAT1	(PIN(4,8) | FUNC(2) | PU)
+#define GPE8_GPIO	(PIN(4,8) | FUNC(0) | PU)
+#define GPE9_SDDAT2	(PIN(4,9) | FUNC(2) | PU)
+#define GPE9_GPIO	(PIN(4,9) | FUNC(0) | PU)
+#define GPE10_SDDAT3	(PIN(4,10) | FUNC(2) | PU)
+#define GPE10_GPIO	(PIN(4,10) | FUNC(0) | PU)
+#define GPE11_SPIMISO0	(PIN(4,11) | FUNC(2) | PU)
+#define GPE11_GPIO	(PIN(4,11) | FUNC(0) | PU)
+#define GPE12_SPIMOSI0	(PIN(4,12) | FUNC(2) | PU)
+#define GPE12_GPIO	(PIN(4,12) | FUNC(0) | PU)
+#define GPE13_SPICLK0	(PIN(4,13) | FUNC(2) | PU)
+#define GPE13_GPIO	(PIN(4,13) | FUNC(0) | PU)
+#define GPE14_IICSCL	(PIN(4,14) | FUNC(2))	/* no pullup option */
+#define GPE14_GPIO	(PIN(4,14) | FUNC(0))	/* no pullup option */
+#define GPE15_IICSDA	(PIN(4,15) | FUNC(2))	/* no pullup option */
+#define GPE15_GPIO	(PIN(4,15) | FUNC(0))	/* no pullup option */
+
+/*
+ * Group 1: GPIO 160...191
+ * Used GPIO: 0...7
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPF0_EINT0	(PIN(5,0) | FUNC(2) | PU)
+#define GPF0_GPIO	(PIN(5,0) | FUNC(0) | PU)
+#define GPF1_EINT1	(PIN(5,1) | FUNC(2) | PU)
+#define GPF1_GPIO	(PIN(5,1) | FUNC(0) | PU)
+#define GPF2_EINT2	(PIN(5,2) | FUNC(2) | PU)
+#define GPF2_GPIO	(PIN(5,2) | FUNC(0) | PU)
+#define GPF3_EINT3	(PIN(5,3) | FUNC(2) | PU)
+#define GPF3_GPIO	(PIN(5,3) | FUNC(0) | PU)
+#define GPF4_EINT4	(PIN(5,4) | FUNC(2) | PU)
+#define GPF4_GPIO	(PIN(5,4) | FUNC(0) | PU)
+#define GPF5_EINT5	(PIN(5,5) | FUNC(2) | PU)
+#define GPF5_GPIO	(PIN(5,5) | FUNC(0) | PU)
+#define GPF6_EINT6	(PIN(5,6) | FUNC(2) | PU)
+#define GPF6_GPIO	(PIN(5,6) | FUNC(0) | PU)
+#define GPF7_EINT7	(PIN(5,7) | FUNC(2) | PU)
+#define GPF7_GPIO	(PIN(5,7) | FUNC(0) | PU)
+
+/*
+ * Group 1: GPIO 192..223
+ * Used GPIO: 0...15
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPG0_EINT8	(PIN(6,0) | FUNC(2) | PU)
+#define GPG0_GPIO	(PIN(6,0) | FUNC(0) | PU)
+#define GPG1_EINT9	(PIN(6,1) | FUNC(2) | PU)
+#define GPG1_GPIO	(PIN(6,1) | FUNC(0) | PU)
+#define GPG2_EINT10	(PIN(6,2) | FUNC(2) | PU)
+#define GPG2_NSS0	(PIN(6,2) | FUNC(3) | PU)
+#define GPG2_GPIO	(PIN(6,2) | FUNC(0) | PU)
+#define GPG3_EINT11	(PIN(6,3) | FUNC(2) | PU)
+#define GPG3_NSS1	(PIN(6,3) | FUNC(3) | PU)
+#define GPG3_GPIO	(PIN(6,3) | FUNC(0) | PU)
+#define GPG4_EINT12	(PIN(6,4) | FUNC(2) | PU)
+#define GPG4_LCD_PWREN	(PIN(6,4) | FUNC(3) | PU)
+#define GPG4_GPIO	(PIN(6,4) | FUNC(0) | PU)
+#define GPG5_EINT13	(PIN(6,5) | FUNC(2) | PU)
+#define GPG5_SPIMISO1	(PIN(6,5) | FUNC(3) | PU)
+#define GPG5_GPIO	(PIN(6,5) | FUNC(0) | PU)
+#define GPG6_EINT14	(PIN(6,6) | FUNC(2) | PU)
+#define GPG6_SPIMOSI1	(PIN(6,6) | FUNC(3) | PU)
+#define GPG6_GPIO	(PIN(6,6) | FUNC(0) | PU)
+#define GPG7_EINT15	(PIN(6,7) | FUNC(2) | PU)
+#define GPG7_SPICLK1	(PIN(6,7) | FUNC(3) | PU)
+#define GPG7_GPIO	(PIN(6,7) | FUNC(0) | PU)
+#define GPG8_EINT16	(PIN(6,8) | FUNC(2) | PU)
+#define GPG8_GPIO	(PIN(6,8) | FUNC(0) | PU)
+#define GPG9_EINT17	(PIN(6,9) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPG9_NRTS1	(PIN(6,9) | FUNC(3) | PU)
+#endif
+#define GPG9_GPIO	(PIN(6,9) | FUNC(0) | PU)
+#define GPG10_EINT18	(PIN(6,10) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2440
+# define GPG10_NCTS1	(PIN(6,10) | FUNC(3) | PU)
+#endif
+#define GPG10_GPIO	(PIN(6,10) | FUNC(0) | PU)
+#define GPG11_EINT19	(PIN(6,11) | FUNC(2) | PU)
+#define GPG11_TCLK	(PIN(6,11) | FUNC(3) | PU)
+#define GPG11_GPIO	(PIN(6,11) | FUNC(0) | PU)
+#define GPG12_EINT20	(PIN(6,12) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2410
+# define GPG12_XMON	(PIN(6,12) | FUNC(3) | PU)
+#endif
+#define GPG12_GPIO	(PIN(6,12) | FUNC(0) | PU)
+#define GPG13_EINT21	(PIN(6,13) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2410
+# define GPG13_NXPON	(PIN(6,13) | FUNC(3) | PU)
+#endif
+#define GPG13_GPIO	(PIN(6,13) | FUNC(0) | PU)	/* must be input in NAND boot mode */
+#define GPG14_EINT22	(PIN(6,14) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2410
+# define GPG14_YMON	(PIN(6,14) | FUNC(3) | PU)
+#endif
+#define GPG14_GPIO	(PIN(6,14) | FUNC(0) | PU)	/* must be input in NAND boot mode */
+#define GPG15_EINT23	(PIN(6,15) | FUNC(2) | PU)
+#ifdef CONFIG_CPU_S3C2410
+# define GPG15_YPON	(PIN(6,15) | FUNC(3) | PU)
+#endif
+#define GPG15_GPIO	(PIN(6,15) | FUNC(0) | PU)	/* must be input in NAND boot mode */
+
+/*
+ * Group 1: GPIO 224..255
+ * Used GPIO: 0...15
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPH0_NCTS0	(PIN(7,0) | FUNC(2) | PU)
+#define GPH0_GPIO	(PIN(7,0) | FUNC(0) | PU)
+#define GPH1_NRTS0	(PIN(7,1) | FUNC(2) | PU)
+#define GPH1_GPIO	(PIN(7,1) | FUNC(0) | PU)
+#define GPH2_TXD0	(PIN(7,2) | FUNC(2) | PU)
+#define GPH2_GPIO	(PIN(7,2) | FUNC(0) | PU)
+#define GPH3_RXD0	(PIN(7,3) | FUNC(2) | PU)
+#define GPH3_GPIO	(PIN(7,3) | FUNC(0) | PU)
+#define GPH4_TXD1	(PIN(7,4) | FUNC(2) | PU)
+#define GPH4_GPIO	(PIN(7,4) | FUNC(0) | PU)
+#define GPH5_RXD1	(PIN(7,5) | FUNC(2) | PU)
+#define GPH5_GPIO	(PIN(7,5) | FUNC(0) | PU)
+#define GPH6_TXD2	(PIN(7,6) | FUNC(2) | PU)
+#define GPH6_NRTS1	(PIN(7,6) | FUNC(3) | PU)
+#define GPH6_GPIO	(PIN(7,6) | FUNC(0) | PU)
+#define GPH7_RXD2	(PIN(7,7) | FUNC(2) | PU)
+#define GPH7_NCTS1	(PIN(7,7) | FUNC(3) | PU)
+#define GPH7_GPIO	(PIN(7,7) | FUNC(0) | PU)
+#define GPH8_UEXTCLK	(PIN(7,8) | FUNC(2) | PU)
+#define GPH8_GPIO	(PIN(7,8) | FUNC(0) | PU)
+#define GPH9_CLOCKOUT0	(PIN(7,9) | FUNC(2) | PU)
+#define GPH9_GPIO	(PIN(7,9) | FUNC(0) | PU)
+#define GPH10_CLKOUT1	(PIN(7,10) | FUNC(2) | PU)
+#define GPH10_GPIO	(PIN(7,10) | FUNC(0) | PU)
+
+#ifdef CONFIG_CPU_S3C2440
+/*
+ * Group 1: GPIO 256..287
+ * Used GPIO: 0...12
+ * These pins can also act as GPIO inputs/outputs
+ */
+#define GPJ0_CAMDATA0	(PIN(8,0) | FUNC(2) | PU)
+#define GPJ0_GPIO	(PIN(8,0) | FUNC(0) | PU)
+#define GPJ1_CAMDATA1	(PIN(8,1) | FUNC(2) | PU)
+#define GPJ1_GPIO	(PIN(8,1) | FUNC(0) | PU)
+#define GPJ2_CAMDATA2	(PIN(8,2) | FUNC(2) | PU)
+#define GPJ2_GPIO	(PIN(8,2) | FUNC(0) | PU)
+#define GPJ3_CAMDATA3	(PIN(8,3) | FUNC(2) | PU)
+#define GPJ3_GPIO	(PIN(8,3) | FUNC(0) | PU)
+#define GPJ4_CAMDATA4	(PIN(8,4) | FUNC(2) | PU)
+#define GPJ4_GPIO	(PIN(8,4) | FUNC(0) | PU)
+#define GPJ5_CAMDATA5	(PIN(8,5) | FUNC(2) | PU)
+#define GPJ5_GPIO	(PIN(8,5) | FUNC(0) | PU)
+#define GPJ6_CAMDATA6	(PIN(8,6) | FUNC(2) | PU)
+#define GPJ6_GPIO	(PIN(8,6) | FUNC(0) | PU)
+#define GPJ7_CAMDATA7	(PIN(8,7) | FUNC(2) | PU)
+#define GPJ7_GPIO	(PIN(8,7) | FUNC(0) | PU)
+#define GPJ8_CAMPCLK	(PIN(8,8) | FUNC(2) | PU)
+#define GPJ8_GPIO	(PIN(8,8) | FUNC(0) | PU)
+#define GPJ9_CAMVSYNC	(PIN(8,9) | FUNC(2) | PU)
+#define GPJ9_GPIO	(PIN(8,9) | FUNC(0) | PU)
+#define GPJ10_CAMHREF	(PIN(8,10) | FUNC(2) | PU)
+#define GPJ10_GPIO	(PIN(8,10) | FUNC(0) | PU)
+#define GPJ11_CAMCLKOUT	(PIN(8,11) | FUNC(2) | PU)
+#define GPJ11_GPIO	(PIN(8,11) | FUNC(0) | PU)
+#define GPJ12_CAMRESET	(PIN(8,12) | FUNC(0) | PU)
+#define GPJ12_GPIO	(PIN(8,12) | FUNC(0) | PU)
+
+#endif
+
+#endif /* __MACH_IOMUX_S3C24x0_H */
diff --git a/arch/arm/mach-samsung/include/mach/mci.h b/arch/arm/mach-samsung/include/mach/mci.h
new file mode 100644
index 0000000..6ba8961
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/mci.h
@@ -0,0 +1,46 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert, Pengutronix
+ *
+ * This code is partially based on u-boot code:
+ *
+ * Copyright 2008, Freescale Semiconductor, Inc
+ * Andy Fleming
+ *
+ * Based (loosely) on the Linux code
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
+#ifndef __MACH_MMC_H_
+#define __MACH_MMC_H_
+
+struct s3c_mci_platform_data {
+	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
+	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
+	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
+	unsigned f_max;	/**< max operating frequency in Hz (0 -> no limit) */
+	/* TODO */
+	/* function to modify the voltage */
+	/* function to switch the voltage */
+	/* function to detect the presence of a SD card in the socket */
+	unsigned gpio_detect;
+	unsigned detect_invert;
+};
+
+#endif /* __MACH_MMC_H_ */
diff --git a/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h b/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
new file mode 100644
index 0000000..a990d80
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
@@ -0,0 +1,177 @@
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
+#define S3C24X0_SDRAM_BASE		0x30000000
+#define S3C24X0_SDRAM_END		0x40000000
+#define S3C24X0_MEMCTL_BASE		0x48000000
+#define S3C2410_USB_HOST_BASE		0x49000000
+#define S3C2410_INTERRUPT_BASE		0x4A000000
+#define S3C2410_DMA_BASE		0x4B000000
+#define S3C24X0_CLOCK_POWER_BASE	0x4C000000
+#define S3C2410_LCD_BASE		0x4D000000
+#define S3C24X0_NAND_BASE		0x4E000000
+#define S3C24X0_UART_BASE		0x50000000
+#define S3C24X0_TIMER_BASE		0x51000000
+#define S3C2410_USB_DEVICE_BASE		0x52000140
+#define S3C24X0_WATCHDOG_BASE		0x53000000
+#define S3C2410_I2C_BASE		0x54000000
+#define S3C2410_I2S_BASE		0x55000000
+#define S3C24X0_GPIO_BASE		0x56000000
+#define S3C2410_RTC_BASE		0x57000000
+#define S3C2410_ADC_BASE		0x58000000
+#define S3C2410_SPI_BASE		0x59000000
+#define S3C2410_SDI_BASE		0x5A000000
+
+/* Clock control (direct access) */
+
+#define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
+#define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
+#define UPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x8)
+#define CLKCON (S3C24X0_CLOCK_POWER_BASE + 0xc)
+#define CLKSLOW (S3C24X0_CLOCK_POWER_BASE + 0x10)
+#define CLKDIVN (S3C24X0_CLOCK_POWER_BASE + 0x14)
+
+/* Timer (direct access) */
+#define TCFG0 (S3C24X0_TIMER_BASE + 0x00)
+#define TCFG1 (S3C24X0_TIMER_BASE + 0x04)
+#define TCON (S3C24X0_TIMER_BASE + 0x08)
+#define TCNTB0 (S3C24X0_TIMER_BASE + 0x0c)
+#define TCMPB0 (S3C24X0_TIMER_BASE + 0x10)
+#define TCNTO0 (S3C24X0_TIMER_BASE + 0x14)
+#define TCNTB1 (S3C24X0_TIMER_BASE + 0x18)
+#define TCMPB1 (S3C24X0_TIMER_BASE + 0x1c)
+#define TCNTO1 (S3C24X0_TIMER_BASE + 0x20)
+#define TCNTB2 (S3C24X0_TIMER_BASE + 0x24)
+#define TCMPB2 (S3C24X0_TIMER_BASE + 0x28)
+#define TCNTO2 (S3C24X0_TIMER_BASE + 0x2c)
+#define TCNTB3 (S3C24X0_TIMER_BASE + 0x30)
+#define TCMPB3 (S3C24X0_TIMER_BASE + 0x34)
+#define TCNTO3 (S3C24X0_TIMER_BASE + 0x38)
+#define TCNTB4 (S3C24X0_TIMER_BASE + 0x3c)
+#define TCNTO4 (S3C24X0_TIMER_BASE + 0x40)
+
+/* Watchdog (direct access) */
+#define WTCON (S3C24X0_WATCHDOG_BASE)
+#define WTDAT (S3C24X0_WATCHDOG_BASE + 0x04)
+#define WTCNT (S3C24X0_WATCHDOG_BASE + 0x08)
+
+/*
+ * if we are booting from NAND, its internal SRAM occures at
+ * a different address than without this feature
+ */
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+# define NFC_RAM_AREA 0x00000000
+#else
+# define NFC_RAM_AREA 0x40000000
+#endif
+#define NFC_RAM_SIZE 4096
+
+/* internal UARTs (driver based) */
+#define UART1_BASE (S3C24X0_UART_BASE)
+#define UART1_SIZE 0x4000
+#define UART2_BASE (S3C24X0_UART_BASE + 0x4000)
+#define UART2_SIZE 0x4000
+#define UART3_BASE (S3C24X0_UART_BASE + 0x8000)
+#define UART3_SIZE 0x4000
+
+/* CS configuration (direct access) */
+#define BWSCON (S3C24X0_MEMCTL_BASE)
+#define BANKCON0 (S3C24X0_MEMCTL_BASE + 0x04)
+#define BANKCON1 (S3C24X0_MEMCTL_BASE + 0x08)
+#define BANKCON2 (S3C24X0_MEMCTL_BASE + 0x0c)
+#define BANKCON3 (S3C24X0_MEMCTL_BASE + 0x10)
+#define BANKCON4 (S3C24X0_MEMCTL_BASE + 0x14)
+#define BANKCON5 (S3C24X0_MEMCTL_BASE + 0x18)
+#define BANKCON6 (S3C24X0_MEMCTL_BASE + 0x1c)
+#define BANKCON7 (S3C24X0_MEMCTL_BASE + 0x20)
+#define REFRESH (S3C24X0_MEMCTL_BASE + 0x24)
+#define BANKSIZE (S3C24X0_MEMCTL_BASE + 0x28)
+#define MRSRB6 (S3C24X0_MEMCTL_BASE + 0x2c)
+#define MRSRB7 (S3C24X0_MEMCTL_BASE + 0x30)
+
+/* GPIO registers (direct access) */
+#define GPACON (S3C24X0_GPIO_BASE)
+#define GPADAT (S3C24X0_GPIO_BASE + 0x04)
+
+#define GPBCON (S3C24X0_GPIO_BASE + 0x10)
+#define GPBDAT (S3C24X0_GPIO_BASE + 0x14)
+#define GPBUP (S3C24X0_GPIO_BASE + 0x18)
+
+#define GPCCON (S3C24X0_GPIO_BASE + 0x20)
+#define GPCDAT (S3C24X0_GPIO_BASE + 0x24)
+#define GPCUP (S3C24X0_GPIO_BASE + 0x28)
+
+#define GPDCON (S3C24X0_GPIO_BASE + 0x30)
+#define GPDDAT (S3C24X0_GPIO_BASE + 0x34)
+#define GPDUP (S3C24X0_GPIO_BASE + 0x38)
+
+#define GPECON (S3C24X0_GPIO_BASE + 0x40)
+#define GPEDAT (S3C24X0_GPIO_BASE + 0x44)
+#define GPEUP (S3C24X0_GPIO_BASE + 0x48)
+
+#define GPFCON (S3C24X0_GPIO_BASE + 0x50)
+#define GPFDAT (S3C24X0_GPIO_BASE + 0x54)
+#define GPFUP (S3C24X0_GPIO_BASE + 0x58)
+
+#define GPGCON (S3C24X0_GPIO_BASE + 0x60)
+#define GPGDAT (S3C24X0_GPIO_BASE + 0x64)
+#define GPGUP (S3C24X0_GPIO_BASE + 0x68)
+
+#define GPHCON (S3C24X0_GPIO_BASE + 0x70)
+#define GPHDAT (S3C24X0_GPIO_BASE + 0x74)
+#define GPHUP (S3C24X0_GPIO_BASE + 0x78)
+
+#ifdef CONFIG_CPU_S3C2440
+# define GPJCON (S3C24X0_GPIO_BASE + 0xd0)
+# define GPJDAT (S3C24X0_GPIO_BASE + 0xd4)
+# define GPJUP (S3C24X0_GPIO_BASE + 0xd8)
+#endif
+
+#define MISCCR  (S3C24X0_GPIO_BASE + 0x80)
+#define DCLKCON (S3C24X0_GPIO_BASE + 0x84)
+#define EXTINT0 (S3C24X0_GPIO_BASE + 0x88)
+#define EXTINT1 (S3C24X0_GPIO_BASE + 0x8c)
+#define EXTINT2 (S3C24X0_GPIO_BASE + 0x90)
+#define EINTFLT0 (S3C24X0_GPIO_BASE + 0x94)
+#define EINTFLT1 (S3C24X0_GPIO_BASE + 0x98)
+#define EINTFLT2 (S3C24X0_GPIO_BASE + 0x9c)
+#define EINTFLT3 (S3C24X0_GPIO_BASE + 0xa0)
+#define EINTMASK (S3C24X0_GPIO_BASE + 0xa4)
+#define EINTPEND (S3C24X0_GPIO_BASE + 0xa8)
+#define GSTATUS0 (S3C24X0_GPIO_BASE + 0xac)
+#define GSTATUS1 (S3C24X0_GPIO_BASE + 0xb0)
+#define GSTATUS2 (S3C24X0_GPIO_BASE + 0xb4)
+#define GSTATUS3 (S3C24X0_GPIO_BASE + 0xb8)
+#define GSTATUS4 (S3C24X0_GPIO_BASE + 0xbc)
+
+#ifdef CONFIG_CPU_S3C2440
+# define DSC0 (S3C24X0_GPIO_BASE + 0xc4)
+# define DSC1 (S3C24X0_GPIO_BASE + 0xc8)
+#endif
+
+/* external IO space */
+#define CS0_BASE 0x00000000
+#define CS1_BASE 0x08000000
+#define CS2_BASE 0x10000000
+#define CS3_BASE 0x18000000
+#define CS4_BASE 0x20000000
+#define CS5_BASE 0x28000000
+#define CS6_BASE 0x30000000
diff --git a/arch/arm/mach-samsung/include/mach/s3c24x0-nand.h b/arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
new file mode 100644
index 0000000..7610b4e
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
@@ -0,0 +1,54 @@
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
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+extern void s3c24x0_nand_load_image(void*, int, int);
+#endif
+
+/**
+ * Locate the timing bits for the NFCONF register
+ * @param setup is the TACLS clock count
+ * @param access is the TWRPH0 clock count
+ * @param hold is the TWRPH1 clock count
+ *
+ * @note A clock count of 0 means always 1 HCLK clock.
+ * @note Clock count settings depend on the NAND flash requirements and the current HCLK speed
+ */
+#ifdef CONFIG_CPU_S3C2410
+# define CALC_NFCONF_TIMING(setup, access, hold) \
+	((setup << 8) + (access << 4) + (hold << 0))
+#endif
+#ifdef CONFIG_CPU_S3C2440
+# define CALC_NFCONF_TIMING(setup, access, hold) \
+	((setup << 12) + (access << 8) + (hold << 4))
+#endif
+
+/**
+ * Define platform specific data for the NAND controller and its device
+ */
+struct s3c24x0_nand_platform_data {
+	uint32_t nand_timing;	/**< value for the NFCONF register (timing bits only) */
+	char flash_bbt;	/**< force a flash based BBT */
+};
+
+/**
+ * @file
+ * @brief Basic declaration to use the s3c24x0 NAND driver
+ */
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h b/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
new file mode 100644
index 0000000..b8abcf1
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
@@ -0,0 +1,33 @@
+/*
+ * (C) Copyright 2009
+ * Juergen Beisert, Pengutronix
+ *
+ * (C) Copyright 2001-2004
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * (C) Copyright 2002
+ * David Mueller, ELSOFT AG, d.mueller@elsoft.ch
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
+uint32_t s3c24xx_get_mpllclk(void);
+uint32_t s3c24xx_get_upllclk(void);
+uint32_t s3c24xx_get_fclk(void);
+uint32_t s3c24xx_get_hclk(void);
+uint32_t s3c24xx_get_pclk(void);
+uint32_t s3c24xx_get_uclk(void);
+uint32_t s3c24x0_get_memory_size(void);
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
new file mode 100644
index 0000000..e8004e5
--- /dev/null
+++ b/arch/arm/mach-samsung/lowlevel-init.S
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
+#include <mach/s3c24x0-iomap.h>
+
+	.section ".text_bare_init.s3c24x0_disable_wd","ax"
+
+/*
+ * Disable the watchdog, else it continues to bark
+ */
+.globl s3c24x0_disable_wd
+s3c24x0_disable_wd:
+
+	ldr r0, =S3C24X0_WATCHDOG_BASE
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
+#ifdef CONFIG_S3C24XX_PLL_INIT
+
+	.section ".text_bare_init.s3c24x0_pll_init","ax"
+
+.globl s3c24x0_pll_init
+s3c24x0_pll_init:
+
+	mov r0, #S3C24X0_CLOCK_POWER_BASE
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
+the CONFIG_S3C24XX_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
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
+#ifdef CONFIG_S3C24XX_SDRAM_INIT
+
+	.section ".text_bare_init.s3c24x0_sdram_init","ax"
+
+	.globl s3c24x0_sdram_init
+s3c24x0_sdram_init:
+
+	adr r0, SDRAMDATA	/* get the current relative address of the table */
+	mov r1, #S3C24X0_MEMCTL_BASE
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
+Enable CONFIG_S3C24XX_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
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
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+
+	.section ".text_bare_init.s3c24x0_nand_boot","ax"
+
+	.globl s3c24x0_nand_boot
+s3c24x0_nand_boot:
+/*
+ * In the case of NOR boot we are running from the same address space.
+ * Detect this case to handle it correctly.
+ */
+	mov r1, #S3C24X0_MEMCTL_BASE
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
+enable CONFIG_S3C24XX_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
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
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
