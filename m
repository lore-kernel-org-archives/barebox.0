Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqf-000494-Oy
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000h8-Bs
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001LQ-9p
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:26 +0100
Message-Id: <1324845517-4601-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/14] MACH SAMSUNG/S3C: Make it more generic for future
 updates
To: barebox@lists.infradead.org

Start with renaming files to share them in the S3C CPU family,

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    4 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |    4 +-
 arch/arm/mach-samsung/generic.c                    |    2 +-
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    2 +-
 arch/arm/mach-samsung/include/mach/gpio.h          |    7 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   33 ++++
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |  177 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h |  177 --------------------
 .../mach-samsung/include/mach/s3c24xx-generic.h    |   33 ----
 arch/arm/mach-samsung/lowlevel-init.S              |    2 +-
 drivers/mci/s3c.c                                  |    4 +-
 drivers/mtd/nand/nand_s3c2410.c                    |    4 +-
 drivers/serial/serial_s3c24x0.c                    |    4 +-
 drivers/video/s3c.c                                |    2 +-
 19 files changed, 230 insertions(+), 235 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-generic.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-iomap.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-generic.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index bbe1604..14eaa1b 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -32,7 +32,7 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 461b93c..752c668 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index 5f7c53b..aa5da88 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -28,7 +28,7 @@
 #include <driver.h>
 #include <init.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 964d376..9002052 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -32,9 +32,9 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 
 #include "baseboards.h"
 
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 4b5c596..bfdd7f0 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
index 41f50cb..f114bb7 100644
--- a/arch/arm/boards/mini2440/lowlevel_init.S
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index b4cc0f8..5e6910b 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -38,9 +38,9 @@
 #include <asm/armlinux.h>
 #include <io.h>
 #include <mach/gpio.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
 
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index d2f2ac7..3c24b1a 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -27,7 +27,7 @@
 #include <init.h>
 #include <clock.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 /**
  * Calculate the current M-PLL clock.
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index 946ec33..23b2609 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/gpio.h>
 
 static const unsigned char group_offset[] =
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
index 37db4f5..3723394 100644
--- a/arch/arm/mach-samsung/include/mach/gpio.h
+++ b/arch/arm/mach-samsung/include/mach/gpio.h
@@ -8,17 +8,12 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
  */
 
 #ifndef __ASM_MACH_GPIO_H
 #define __ASM_MACH_GPIO_H
 
-#if defined(CONFIG_CPU_S3C2440) || defined(CONFIG_CPU_S3C2410)
+#ifdef CONFIG_ARCH_S3C24xx
 # include <mach/iomux-s3c24x0.h>
 #endif
 
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
new file mode 100644
index 0000000..b8abcf1
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
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
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
new file mode 100644
index 0000000..a990d80
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
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
diff --git a/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h b/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
deleted file mode 100644
index a990d80..0000000
--- a/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
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
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h b/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
deleted file mode 100644
index b8abcf1..0000000
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
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
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index e8004e5..8529283 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -19,7 +19,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.s3c24x0_disable_wd","ax"
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 89c8168..c877e09 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -41,8 +41,8 @@
 #include <clock.h>
 #include <io.h>
 #include <mach/mci.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 
 #define SDICON 0x0
 # define SDICON_SDRESET (1 << 8)
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index ed45788..3117614 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -30,8 +30,8 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <io.h>
 #include <asm-generic/errno.h>
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 1e27d48..4e95e5c 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -25,8 +25,8 @@
 #include <init.h>
 #include <malloc.h>
 #include <io.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 
 /* Note: Offsets are for little endian access */
 #define ULCON 0x00		/* line control */
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
index b17aeb6..a03ec3d 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c.c
@@ -31,7 +31,7 @@
 #include <errno.h>
 #include <io.h>
 #include <mach/gpio.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 #include <mach/fb.h>
 
 #define LCDCON1 0x00
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
