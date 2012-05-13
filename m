Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6R-0003ZT-9j
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:40:52 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so3492790lbb.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:40:46 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:39:59 +0600
Message-Id: <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 2/9] Fine split S3C arch dependencies from generic code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |   10 +-
 arch/arm/boards/a9m2410/config.h                   |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   10 +-
 arch/arm/boards/a9m2440/config.h                   |    2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    4 +-
 arch/arm/boards/mini2440/config.h                  |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |   10 +-
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    4 +-
 arch/arm/configs/mini2440_defconfig                |    2 +-
 arch/arm/mach-samsung/Kconfig                      |   30 +-
 arch/arm/mach-samsung/Makefile                     |    5 +-
 arch/arm/mach-samsung/clocks-s3c24x0.c             |  157 ++++++++++
 arch/arm/mach-samsung/generic.c                    |  112 -------
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    2 +-
 .../arm/mach-samsung/include/mach/clocks-s3c24x0.h |   24 ++
 arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h  |   77 +++++
 arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h |   69 +++++
 arch/arm/mach-samsung/include/mach/nand-s3c24x0.h  |   54 ++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   22 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |    4 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   53 +---
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |   77 -----
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |   54 ----
 arch/arm/mach-samsung/lowlevel-init.S              |  317 --------------------
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  317 ++++++++++++++++++++
 arch/arm/mach-samsung/mem-s3c24x0.c                |  143 +++++++++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |  157 ----------
 drivers/mtd/nand/nand_s3c24xx.c                    |   16 +-
 drivers/serial/Kconfig                             |    2 +-
 33 files changed, 913 insertions(+), 833 deletions(-)
 create mode 100644 arch/arm/mach-samsung/clocks-s3c24x0.c
 create mode 100644 arch/arm/mach-samsung/include/mach/clocks-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/nand-s3c24x0.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
 delete mode 100644 arch/arm/mach-samsung/lowlevel-init.S
 create mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
 create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
 delete mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 1a3181e..e416c8e 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -33,10 +33,10 @@
 #include <nand.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24xx-nand.h>
+#include <mach/nand-s3c24x0.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-busctl.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
 static struct s3c24x0_nand_platform_data nand_info = {
@@ -51,7 +51,7 @@ static int a9m2410_mem_init(void)
 	 * Note: On this card the second SDRAM page is not used
 	 */
 	s3c24xx_disable_second_sdram_bank();
-	size = s3c24xx_get_memory_size();
+	size = s3c_get_memory_size();
 
 	/* ---------- configure the GPIOs ------------- */
 	writel(0x007FFFFF, S3C_GPACON);
@@ -136,10 +136,10 @@ static int a9m2410_devices_init(void)
 
 device_initcall(a9m2410_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/a9m2410/config.h b/arch/arm/boards/a9m2410/config.h
index 87b05fc..4b8a9a2 100644
--- a/arch/arm/boards/a9m2410/config.h
+++ b/arch/arm/boards/a9m2410/config.h
@@ -115,7 +115,7 @@
 #define A9M2410_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
 #endif
 
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index a106d53..0463b26 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -28,7 +28,7 @@ board_init_lowlevel:
 
 	bl s3c24x0_sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index bedb0f7..f23fc5d 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -30,7 +30,7 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-busctl.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 4094e31..0bb7298 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -33,10 +33,10 @@
 #include <nand.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24xx-nand.h>
+#include <mach/nand-s3c24x0.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-busctl.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 #include "baseboards.h"
 
@@ -99,7 +99,7 @@ static int a9m2440_mem_init(void)
 		break;
 	}
 
-	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c24xx_get_memory_size());
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c_get_memory_size());
 
 	return 0;
 }
@@ -155,10 +155,10 @@ static int a9m2440_devices_init(void)
 
 device_initcall(a9m2440_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/a9m2440/config.h b/arch/arm/boards/a9m2440/config.h
index 43cb6ab..09ad949 100644
--- a/arch/arm/boards/a9m2440/config.h
+++ b/arch/arm/boards/a9m2440/config.h
@@ -66,7 +66,7 @@
 #define A9M2440_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 #endif
 
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index e915a16..f6522f4 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -4,7 +4,7 @@
 
 #include <config.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
@@ -232,7 +232,7 @@ board_init_lowlevel:
 
 	bl sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/mini2440/config.h
index 8d36193..674d974 100644
--- a/arch/arm/boards/mini2440/config.h
+++ b/arch/arm/boards/mini2440/config.h
@@ -66,7 +66,7 @@
 #define MINI2440_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING \
 	CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0, MINI2440_TWRPH1)
 #endif
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
index 1c8860a..827cf00 100644
--- a/arch/arm/boards/mini2440/lowlevel_init.S
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -30,7 +30,7 @@ board_init_lowlevel:
 
 	bl s3c24x0_sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 361a3e2..d5edd55 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -39,12 +39,12 @@
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24xx-nand.h>
+#include <mach/nand-s3c24x0.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-mci.h>
 #include <mach/s3c24xx-fb.h>
 #include <mach/s3c-busctl.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
@@ -268,7 +268,7 @@ static const unsigned pin_usage[] = {
 
 static int mini2440_mem_init(void)
 {
-	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c24xx_get_memory_size());
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c_get_memory_size());
 
 	return 0;
 }
@@ -326,10 +326,10 @@ static int mini2440_devices_init(void)
 
 device_initcall(mini2440_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 57e73c7..1955023 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_S3C24xx=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index ae7f523..ebdf64f 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_MACH_A9M2440=y
-CONFIG_S3C24XX_SDRAM_INIT=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_SDRAM_INIT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
index 9b35dd5..efe76e4 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/mini2440_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_MACH_MINI2440=y
 CONFIG_MINI2440_VIDEO_N35=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x33e00000
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index bc283dc..4d5f7c5 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -30,8 +30,8 @@ config MACH_A9M2410
 	bool "Digi A9M2410"
 	select CPU_S3C2410
 	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
+	select S3C_PLL_INIT
+	select S3C_SDRAM_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2410 Processor
@@ -40,7 +40,7 @@ config MACH_A9M2440
 	bool "Digi A9M2440"
 	select CPU_S3C2440
 	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
+	select S3C_PLL_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2440 Processor
@@ -50,8 +50,8 @@ config MACH_MINI2440
 	select CPU_S3C2440
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
+	select S3C_PLL_INIT
+	select S3C_SDRAM_INIT
 	select HAS_DM9000
 	help
 	  Say Y here if you are using Mini 2440 dev board equipped
@@ -78,34 +78,36 @@ source arch/arm/boards/mini2440/Kconfig
 
 endmenu
 
-menu "S3C24X0 Features              "
+endif
+
+menu "S3C Features              "
 
-config S3C24XX_LOW_LEVEL_INIT
+config S3C_LOWLEVEL_INIT
 	bool
 
-config S3C24XX_PLL_INIT
+config S3C_PLL_INIT
 	bool
 	prompt "Reconfigure PLL"
-	select S3C24XX_LOW_LEVEL_INIT
+	select S3C_LOWLEVEL_INIT
 	help
 	  This adds generic code to reconfigure the internal PLL very early
 	  after reset.
 
-config S3C24XX_SDRAM_INIT
+config S3C_SDRAM_INIT
 	bool
 	prompt "Initialize SDRAM"
-	select S3C24XX_LOW_LEVEL_INIT
+	select S3C_LOWLEVEL_INIT
 	help
 	  This adds generic code to configure the SDRAM controller after reset.
 	  The initialisation will be skipped if the code is already running
 	  from SDRAM.
 
-config S3C24XX_NAND_BOOT
+config S3C_NAND_BOOT
 	bool
 	prompt "Booting from NAND"
 	select MTD
 	select NAND
-	select NAND_S3C24XX
+	select NAND_S3C
 	help
 	  Add generic support to boot from NAND flash. Image loading will be
 	  skipped if the code is running from NOR or already from SDRAM.
@@ -113,5 +115,3 @@ config S3C24XX_NAND_BOOT
 endmenu
 
 endif
-
-endif
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 2ba5c3f..8f032fb 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,4 @@
 obj-y += s3c-timer.o generic.o
-obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o
-obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
+obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
+obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24x0.o mem-s3c24x0.o
+obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/clocks-s3c24x0.c b/arch/arm/mach-samsung/clocks-s3c24x0.c
new file mode 100644
index 0000000..38d8b75
--- /dev/null
+++ b/arch/arm/mach-samsung/clocks-s3c24x0.c
@@ -0,0 +1,157 @@
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
+#include <mach/s3c-busctl.h>
+
+/**
+ * Calculate the current M-PLL clock.
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_mpllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(S3C_MPLLCON);
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
+uint32_t s3c_get_upllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(S3C_UPLLCON);
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
+uint32_t s3c_get_fclk(void)
+{
+	return s3c_get_mpllclk();
+}
+
+/**
+ * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_hclk(void)
+{
+	uint32_t f_clk;
+
+	f_clk = s3c_get_fclk();
+#ifdef CONFIG_CPU_S3C2410
+	if (readl(S3C_CLKDIVN) & 0x02)
+		return f_clk >> 1;
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	switch(readl(S3C_CLKDIVN) & 0x06) {
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
+uint32_t s3c_get_pclk(void)
+{
+	uint32_t p_clk;
+
+	p_clk = s3c_get_hclk();
+	if (readl(S3C_CLKDIVN) & 0x01)
+		return p_clk >> 1;
+	return p_clk;
+}
+
+/**
+ * Calculate the UCLK frequency used by the USB host device
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24_get_uclk(void)
+{
+	return s3c_get_upllclk();
+}
+
+/** 
+ * Return correct UART frequency based on the UCON register
+ */
+unsigned s3c_get_uart_clk(unsigned src)
+{
+	switch (src & 3) {
+	case 0:
+	case 2:
+		return s3c_get_pclk();
+	case 1:
+		return 0; /* TODO UEXTCLK */
+	case 3:
+		return 0; /* TODO FCLK/n */
+	}
+	return 0; /* not reached, to make compiler happy */
+}
+
+/**
+ * Show the user the current clock settings
+ */
+int s3c24xx_dump_clocks(void)
+{
+	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
+	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
+	printf("upll:    %7d kHz\n", s3c_get_upllclk() / 1000);
+	printf("fclk:    %7d kHz\n", s3c_get_fclk() / 1000);
+	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
+	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
+	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(S3C_BANKCON6) & 0xc) >> 2) + 2,
+						s3c_get_hclk() / 1000000);
+	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n",
+			((readl(S3C_BANKCON7) & 0xc) >> 2) + 2,
+			s3c_get_hclk() / 1000000);
+	return 0;
+}
+
+late_initcall(s3c24xx_dump_clocks);
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 7706be2..f919e24 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -25,65 +25,10 @@
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
@@ -105,60 +50,3 @@ void __noreturn reset_cpu(unsigned long addr)
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
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index 4f1c5cc..baeaf4f 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -20,7 +20,7 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/gpio.h>
-#include <mach/s3c24xx-gpio.h>
+#include <mach/gpio-s3c24x0.h>
 
 static const unsigned char group_offset[] =
 {
diff --git a/arch/arm/mach-samsung/include/mach/clocks-s3c24x0.h b/arch/arm/mach-samsung/include/mach/clocks-s3c24x0.h
new file mode 100644
index 0000000..839dfe3
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/clocks-s3c24x0.h
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
diff --git a/arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h b/arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h
new file mode 100644
index 0000000..ffb57fb
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h
@@ -0,0 +1,77 @@
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
+#ifndef __MACH_GPIO_S3C24X0_H
+# define __MACH_GPIO_S3C24X0_H
+
+#define S3C_GPACON (S3C_GPIO_BASE)
+#define S3C_GPADAT (S3C_GPIO_BASE + 0x04)
+
+#define S3C_GPBCON (S3C_GPIO_BASE + 0x10)
+#define S3C_GPBDAT (S3C_GPIO_BASE + 0x14)
+#define S3C_GPBUP (S3C_GPIO_BASE + 0x18)
+
+#define S3C_GPCCON (S3C_GPIO_BASE + 0x20)
+#define S3C_GPCDAT (S3C_GPIO_BASE + 0x24)
+#define S3C_GPCUP (S3C_GPIO_BASE + 0x28)
+
+#define S3C_GPDCON (S3C_GPIO_BASE + 0x30)
+#define S3C_GPDDAT (S3C_GPIO_BASE + 0x34)
+#define S3C_GPDUP (S3C_GPIO_BASE + 0x38)
+
+#define S3C_GPECON (S3C_GPIO_BASE + 0x40)
+#define S3C_GPEDAT (S3C_GPIO_BASE + 0x44)
+#define S3C_GPEUP (S3C_GPIO_BASE + 0x48)
+
+#define S3C_GPFCON (S3C_GPIO_BASE + 0x50)
+#define S3C_GPFDAT (S3C_GPIO_BASE + 0x54)
+#define S3C_GPFUP (S3C_GPIO_BASE + 0x58)
+
+#define S3C_GPGCON (S3C_GPIO_BASE + 0x60)
+#define S3C_GPGDAT (S3C_GPIO_BASE + 0x64)
+#define S3C_GPGUP (S3C_GPIO_BASE + 0x68)
+
+#define S3C_GPHCON (S3C_GPIO_BASE + 0x70)
+#define S3C_GPHDAT (S3C_GPIO_BASE + 0x74)
+#define S3C_GPHUP (S3C_GPIO_BASE + 0x78)
+
+#ifdef CONFIG_CPU_S3C2440
+# define S3C_GPJCON (S3C_GPIO_BASE + 0xd0)
+# define S3C_GPJDAT (S3C_GPIO_BASE + 0xd4)
+# define S3C_GPJUP (S3C_GPIO_BASE + 0xd8)
+#endif
+
+#define S3C_MISCCR  (S3C_GPIO_BASE + 0x80)
+#define S3C_DCLKCON (S3C_GPIO_BASE + 0x84)
+#define S3C_EXTINT0 (S3C_GPIO_BASE + 0x88)
+#define S3C_EXTINT1 (S3C_GPIO_BASE + 0x8c)
+#define S3C_EXTINT2 (S3C_GPIO_BASE + 0x90)
+#define S3C_EINTFLT0 (S3C_GPIO_BASE + 0x94)
+#define S3C_EINTFLT1 (S3C_GPIO_BASE + 0x98)
+#define S3C_EINTFLT2 (S3C_GPIO_BASE + 0x9c)
+#define S3C_EINTFLT3 (S3C_GPIO_BASE + 0xa0)
+#define S3C_EINTMASK (S3C_GPIO_BASE + 0xa4)
+#define S3C_EINTPEND (S3C_GPIO_BASE + 0xa8)
+#define S3C_GSTATUS0 (S3C_GPIO_BASE + 0xac)
+#define S3C_GSTATUS1 (S3C_GPIO_BASE + 0xb0)
+#define S3C_GSTATUS2 (S3C_GPIO_BASE + 0xb4)
+#define S3C_GSTATUS3 (S3C_GPIO_BASE + 0xb8)
+#define S3C_GSTATUS4 (S3C_GPIO_BASE + 0xbc)
+
+#ifdef CONFIG_CPU_S3C2440
+# define S3C_DSC0 (S3C_GPIO_BASE + 0xc4)
+# define S3C_DSC1 (S3C_GPIO_BASE + 0xc8)
+#endif
+
+#endif /* __MACH_GPIO_S3C24X0_H */
diff --git a/arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h b/arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h
new file mode 100644
index 0000000..60d44e3
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h
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
diff --git a/arch/arm/mach-samsung/include/mach/nand-s3c24x0.h b/arch/arm/mach-samsung/include/mach/nand-s3c24x0.h
new file mode 100644
index 0000000..88d29d4
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/nand-s3c24x0.h
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
+#ifdef CONFIG_S3C_NAND_BOOT
+extern void s3c_nand_load_image(void*, int, int);
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
diff --git a/arch/arm/mach-samsung/include/mach/s3c-clocks.h b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
index 44b2a6c..f4ca8fa 100644
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
+# include <mach/clocks-s3c24x0.h>
 #endif
 
 #endif /* __MACH_S3C_CLOCKS_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 5d3808e..62d2c93 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -33,6 +33,8 @@ uint32_t s3c_get_uclk(void);
 
 unsigned s3c_get_uart_clk(unsigned src);
 
-uint32_t s3c24xx_get_memory_size(void);
+uint32_t s3c_get_memory_size(void);
 
+#ifdef CONFIG_ARCH_S3C24xx
 void s3c24xx_disable_second_sdram_bank(void);
+#endif
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 9e867f8..b1305da 100644
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
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-# define NFC_RAM_AREA 0x00000000
-#else
-# define NFC_RAM_AREA 0x40000000
+#ifdef CONFIG_ARCH_S3C24xx
+# include <mach/iomap-s3c24x0.h>
 #endif
-#define NFC_RAM_SIZE 4096
-
-#define S3C_UART1_BASE (S3C_UART_BASE)
-#define S3C_UART1_SIZE 0x4000
-#define S3C_UART2_BASE (S3C_UART_BASE + 0x4000)
-#define S3C_UART2_SIZE 0x4000
-#define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
-#define S3C_UART3_SIZE 0x4000
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h b/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
deleted file mode 100644
index c835974..0000000
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
+++ /dev/null
@@ -1,77 +0,0 @@
-/*
- * Copyright (C) 2011 Juergen Beisert, Pengutronix
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
- */
-
-#ifndef __MACH_S3C24XX_GPIO_H
-# define __MACH_S3C24XX_GPIO_H
-
-#define S3C_GPACON (S3C_GPIO_BASE)
-#define S3C_GPADAT (S3C_GPIO_BASE + 0x04)
-
-#define S3C_GPBCON (S3C_GPIO_BASE + 0x10)
-#define S3C_GPBDAT (S3C_GPIO_BASE + 0x14)
-#define S3C_GPBUP (S3C_GPIO_BASE + 0x18)
-
-#define S3C_GPCCON (S3C_GPIO_BASE + 0x20)
-#define S3C_GPCDAT (S3C_GPIO_BASE + 0x24)
-#define S3C_GPCUP (S3C_GPIO_BASE + 0x28)
-
-#define S3C_GPDCON (S3C_GPIO_BASE + 0x30)
-#define S3C_GPDDAT (S3C_GPIO_BASE + 0x34)
-#define S3C_GPDUP (S3C_GPIO_BASE + 0x38)
-
-#define S3C_GPECON (S3C_GPIO_BASE + 0x40)
-#define S3C_GPEDAT (S3C_GPIO_BASE + 0x44)
-#define S3C_GPEUP (S3C_GPIO_BASE + 0x48)
-
-#define S3C_GPFCON (S3C_GPIO_BASE + 0x50)
-#define S3C_GPFDAT (S3C_GPIO_BASE + 0x54)
-#define S3C_GPFUP (S3C_GPIO_BASE + 0x58)
-
-#define S3C_GPGCON (S3C_GPIO_BASE + 0x60)
-#define S3C_GPGDAT (S3C_GPIO_BASE + 0x64)
-#define S3C_GPGUP (S3C_GPIO_BASE + 0x68)
-
-#define S3C_GPHCON (S3C_GPIO_BASE + 0x70)
-#define S3C_GPHDAT (S3C_GPIO_BASE + 0x74)
-#define S3C_GPHUP (S3C_GPIO_BASE + 0x78)
-
-#ifdef CONFIG_CPU_S3C2440
-# define S3C_GPJCON (S3C_GPIO_BASE + 0xd0)
-# define S3C_GPJDAT (S3C_GPIO_BASE + 0xd4)
-# define S3C_GPJUP (S3C_GPIO_BASE + 0xd8)
-#endif
-
-#define S3C_MISCCR  (S3C_GPIO_BASE + 0x80)
-#define S3C_DCLKCON (S3C_GPIO_BASE + 0x84)
-#define S3C_EXTINT0 (S3C_GPIO_BASE + 0x88)
-#define S3C_EXTINT1 (S3C_GPIO_BASE + 0x8c)
-#define S3C_EXTINT2 (S3C_GPIO_BASE + 0x90)
-#define S3C_EINTFLT0 (S3C_GPIO_BASE + 0x94)
-#define S3C_EINTFLT1 (S3C_GPIO_BASE + 0x98)
-#define S3C_EINTFLT2 (S3C_GPIO_BASE + 0x9c)
-#define S3C_EINTFLT3 (S3C_GPIO_BASE + 0xa0)
-#define S3C_EINTMASK (S3C_GPIO_BASE + 0xa4)
-#define S3C_EINTPEND (S3C_GPIO_BASE + 0xa8)
-#define S3C_GSTATUS0 (S3C_GPIO_BASE + 0xac)
-#define S3C_GSTATUS1 (S3C_GPIO_BASE + 0xb0)
-#define S3C_GSTATUS2 (S3C_GPIO_BASE + 0xb4)
-#define S3C_GSTATUS3 (S3C_GPIO_BASE + 0xb8)
-#define S3C_GSTATUS4 (S3C_GPIO_BASE + 0xbc)
-
-#ifdef CONFIG_CPU_S3C2440
-# define S3C_DSC0 (S3C_GPIO_BASE + 0xc4)
-# define S3C_DSC1 (S3C_GPIO_BASE + 0xc8)
-#endif
-
-#endif /* __MACH_S3C24XX_GPIO_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
deleted file mode 100644
index 7610b4e..0000000
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
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
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
deleted file mode 100644
index 31c6196..0000000
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
-#ifdef CONFIG_S3C24XX_PLL_INIT
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
index 0000000..6944504
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
+#include <mach/gpio-s3c24x0.h>
+
+/**
+ * Calculate the amount of connected and available memory
+ * @return Memory size in bytes
+ */
+uint32_t s3c_get_memory_size(void)
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
diff --git a/arch/arm/mach-samsung/s3c24xx-clocks.c b/arch/arm/mach-samsung/s3c24xx-clocks.c
deleted file mode 100644
index 38d8b75..0000000
--- a/arch/arm/mach-samsung/s3c24xx-clocks.c
+++ /dev/null
@@ -1,157 +0,0 @@
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
- */
-
-#include <config.h>
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <io.h>
-#include <mach/s3c-iomap.h>
-#include <mach/s3c-generic.h>
-#include <mach/s3c-clocks.h>
-#include <mach/s3c-busctl.h>
-
-/**
- * Calculate the current M-PLL clock.
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_mpllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(S3C_MPLLCON);
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
-uint32_t s3c_get_upllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(S3C_UPLLCON);
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
-uint32_t s3c_get_fclk(void)
-{
-	return s3c_get_mpllclk();
-}
-
-/**
- * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_hclk(void)
-{
-	uint32_t f_clk;
-
-	f_clk = s3c_get_fclk();
-#ifdef CONFIG_CPU_S3C2410
-	if (readl(S3C_CLKDIVN) & 0x02)
-		return f_clk >> 1;
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	switch(readl(S3C_CLKDIVN) & 0x06) {
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
-uint32_t s3c_get_pclk(void)
-{
-	uint32_t p_clk;
-
-	p_clk = s3c_get_hclk();
-	if (readl(S3C_CLKDIVN) & 0x01)
-		return p_clk >> 1;
-	return p_clk;
-}
-
-/**
- * Calculate the UCLK frequency used by the USB host device
- * @return Current frequency in Hz
- */
-uint32_t s3c24_get_uclk(void)
-{
-	return s3c_get_upllclk();
-}
-
-/** 
- * Return correct UART frequency based on the UCON register
- */
-unsigned s3c_get_uart_clk(unsigned src)
-{
-	switch (src & 3) {
-	case 0:
-	case 2:
-		return s3c_get_pclk();
-	case 1:
-		return 0; /* TODO UEXTCLK */
-	case 3:
-		return 0; /* TODO FCLK/n */
-	}
-	return 0; /* not reached, to make compiler happy */
-}
-
-/**
- * Show the user the current clock settings
- */
-int s3c24xx_dump_clocks(void)
-{
-	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
-	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
-	printf("upll:    %7d kHz\n", s3c_get_upllclk() / 1000);
-	printf("fclk:    %7d kHz\n", s3c_get_fclk() / 1000);
-	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
-	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
-	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(S3C_BANKCON6) & 0xc) >> 2) + 2,
-						s3c_get_hclk() / 1000000);
-	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		printf("SDRAM2:   CL%d@%dMHz\n",
-			((readl(S3C_BANKCON7) & 0xc) >> 2) + 2,
-			s3c_get_hclk() / 1000000);
-	return 0;
-}
-
-late_initcall(s3c24xx_dump_clocks);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index dbf2e14..2799496 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -32,11 +32,11 @@
 #include <linux/mtd/nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24xx-nand.h>
+#include <mach/nand-s3c24x0.h>
 #include <io.h>
 #include <asm-generic/errno.h>
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define __nand_boot_init __bare_init
 # ifndef BOARD_DEFAULT_NAND_TIMING
 #  define BOARD_DEFAULT_NAND_TIMING 0x0737
@@ -49,7 +49,7 @@
  * Define this symbol for testing purpose. It will add a command to read an
  * image from the NAND like it the boot strap code will do.
  */
-#define CONFIG_NAND_S3C24XX_BOOT_DEBUG
+#define CONFIG_NAND_S3C_BOOT_DEBUG
 
 /* NAND controller's register */
 
@@ -497,7 +497,7 @@ static struct driver_d s3c24x0_nand_driver = {
 	.probe = s3c24x0_nand_probe,
 };
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 
 static void __nand_boot_init wait_for_completion(void __iomem *host)
 {
@@ -545,7 +545,7 @@ static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
  * This function must be located in the first 4kiB of the barebox image
  * (guess why).
  */
-void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
+void __nand_boot_init s3c_nand_load_image(void *dest, int size, int page)
 {
 	void __iomem *host = (void __iomem *)S3C24X0_NAND_BASE;
 	unsigned pagesize;
@@ -603,7 +603,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 	disable_nand_controller(host);
 }
 
-#ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
+#ifdef CONFIG_NAND_S3C_BOOT_DEBUG
 #include <command.h>
 
 static int do_nand_boot_test(int argc, char *argv[])
@@ -617,7 +617,7 @@ static int do_nand_boot_test(int argc, char *argv[])
 	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
 	size = strtoul_suffix(argv[2], NULL, 0);
 
-	s3c24x0_nand_load_image(dest, size, 0);
+	s3c_nand_load_image(dest, size, 0);
 
 	/* re-enable the controller again, as this was a test only */
 	enable_nand_controller((void *)S3C24X0_NAND_BASE,
@@ -636,7 +636,7 @@ BAREBOX_CMD_START(nand_boot_test)
 BAREBOX_CMD_END
 #endif
 
-#endif /* CONFIG_S3C24XX_NAND_BOOT */
+#endif /* CONFIG_S3C_NAND_BOOT */
 
 /*
  * Main initialization routine
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 186b596..a9383da 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -80,7 +80,7 @@ config DRIVER_SERIAL_PL010
 
 config DRIVER_SERIAL_S3C
 	bool "Samsung S3C serial driver"
-	depends on ARCH_S3C24xx
+	depends on ARCH_SAMSUNG
 	default y
 	help
 	  Say Y here if you want to use the CONS on a Samsung S3C CPU
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
