Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqj-00049S-Mv
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hR-M2
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001Lu-HF
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:36 +0100
Message-Id: <1324845517-4601-14-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/14] MACH SAMSUNG/S3C: Re-work the memory detection and
 handling
To: barebox@lists.infradead.org

Keep common code in the MACH instead of re-inventing it in each platform.
Also use S3C* macros for all memory related register.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                |   47 ++++++----------------
 arch/arm/boards/a9m2410/lowlevel_init.S          |    4 +-
 arch/arm/boards/a9m2440/a9m2410dev.c             |    9 ++--
 arch/arm/boards/a9m2440/a9m2440.c                |   37 +++++++----------
 arch/arm/boards/a9m2440/lowlevel_init.S          |    6 +-
 arch/arm/boards/mini2440/lowlevel_init.S         |    4 +-
 arch/arm/boards/mini2440/mini2440.c              |   13 +++---
 arch/arm/mach-samsung/generic.c                  |   28 ++++++++-----
 arch/arm/mach-samsung/include/mach/s3c-busctl.h  |   32 +++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-generic.h |    3 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h   |   39 ++++++------------
 arch/arm/mach-samsung/lowlevel-init.S            |    4 +-
 arch/arm/mach-samsung/s3c24xx-clocks.c           |    9 +++-
 13 files changed, 119 insertions(+), 116 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-busctl.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index a66afb9..daaa5c1 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -34,6 +34,8 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-busctl.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
 static struct s3c24x0_nand_platform_data nand_info = {
@@ -42,38 +44,13 @@ static struct s3c24x0_nand_platform_data nand_info = {
 
 static int a9m2410_mem_init(void)
 {
-	resource_size_t size = 0;
-	uint32_t reg;
+	resource_size_t size;
 
 	/*
-	 * detect the current memory size
 	 * Note: On this card the second SDRAM page is not used
 	 */
-	reg = readl(BANKSIZE);
-
-	switch (reg &= 0x7) {
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
-	case 7:
-		size = 16 * 1024 * 1024;
-		break;
-	}
+	s3c24xx_disable_second_sdram_bank();
+	size = s3c24xx_get_memory_size();
 
 	/* ---------- configure the GPIOs ------------- */
 	writel(0x007FFFFF, GPACON);
@@ -100,7 +77,7 @@ static int a9m2410_mem_init(void)
 	 */
 	writel(0x40140, MISCCR);
 
-	arm_add_mem_device("ram0", CS6_BASE, size);
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, size);
 
 	return 0;
 }
@@ -111,19 +88,19 @@ static int a9m2410_devices_init(void)
 	uint32_t reg;
 
 	/* ----------- configure the access to the outer space ---------- */
-	reg = readl(BWSCON);
+	reg = readl(S3C_BWSCON);
 
 	/* CS#1 to access the network controller */
 	reg &= ~0xf0;
 	reg |= 0xe0;
-	writel(0x1350, BANKCON1);
+	writel(0x1350, S3C_BANKCON1);
 
 	/* CS#2 to the dual 16550 UART */
 	reg &= ~0xf00;
 	reg |= 0x400;
-	writel(0x0d50, BANKCON2);
+	writel(0x0d50, S3C_BANKCON2);
 
-	writel(reg, BWSCON);
+	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to the network and UART device */
         reg = readl(MISCCR);
@@ -138,7 +115,7 @@ static int a9m2410_devices_init(void)
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 32 bit
 	 */
-	add_generic_device("smc91c111", -1, NULL, CS1_BASE + 0x300, 16,
+	add_generic_device("smc91c111", -1, NULL, S3C_CS1_BASE + 0x300, 16,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
@@ -150,7 +127,7 @@ static int a9m2410_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
+	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 752c668..a106d53 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -15,9 +15,9 @@ board_init_lowlevel:
 	bl s3c24x0_disable_wd
 
 	/* skip everything here if we are already running from SDRAM */
-	cmp pc, #S3C24X0_SDRAM_BASE
+	cmp pc, #S3C_SDRAM_BASE
 	blo 1f
-	cmp pc, #S3C24X0_SDRAM_END
+	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
 	mov pc, r10
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index aa5da88..1da69eb 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -29,6 +29,7 @@
 #include <init.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
+#include <mach/s3c-busctl.h>
 
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
@@ -72,19 +73,19 @@ int a9m2410dev_devices_init(void)
 	writel((readl(MISCCR) & ~0xFFFF) | 0x0140, MISCCR);
 
 	/* ----------- configure the access to the outer space ---------- */
-	reg = readl(BWSCON);
+	reg = readl(S3C_BWSCON);
 
 	/* CS#1 to access the network controller */
 	reg &= ~0xf0;
 	reg |= 0xe0;
-	writel(0x1350, BANKCON1);
+	writel(0x1350, S3C_BANKCON1);
 
 	/* CS#2 to the dual 16550 UART */
 	reg &= ~0xf00;
 	reg |= 0x400;
-	writel(0x0d50, BANKCON2);
+	writel(0x0d50, S3C_BANKCON2);
 
-	writel(reg, BWSCON);
+	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to the network and UART device */
         reg = readl(MISCCR);
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 077d726..56ae914 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -35,6 +35,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
+#include <mach/s3c-busctl.h>
 
 #include "baseboards.h"
 
@@ -66,12 +67,6 @@ static int a9m2440_check_for_ram(uint32_t addr)
 	return rc;
 }
 
-static void a9m2440_disable_second_sdram_bank(void)
-{
-	writel(readl(BANKCON7) & ~(0x3 << 15),BANKCON7);
-	writel(readl(MISCCR) | (1 << 18), MISCCR); /* disable clock */
-}
-
 static int a9m2440_mem_init(void)
 {
 	/*
@@ -80,30 +75,30 @@ static int a9m2440_mem_init(void)
 	 * So we must check here, if the second bank is populated to get the
 	 * correct RAM size.
 	 */
-	switch (readl(BANKSIZE) & 0x7) {
+	switch (readl(S3C_BANKSIZE) & 0x7) {
 	case 0:
-		if (a9m2440_check_for_ram(S3C24X0_SDRAM_BASE + 32 * 1024 * 1024))
-			a9m2440_disable_second_sdram_bank();
+		if (a9m2440_check_for_ram(S3C_SDRAM_BASE + 32 * 1024 * 1024))
+			s3c24xx_disable_second_sdram_bank();
 		break;
 	case 1:
-		if (a9m2440_check_for_ram(S3C24X0_SDRAM_BASE + 64 * 1024 * 1024))
-			a9m2440_disable_second_sdram_bank();
+		if (a9m2440_check_for_ram(S3C_SDRAM_BASE + 64 * 1024 * 1024))
+			s3c24xx_disable_second_sdram_bank();
 		break;
 	case 2:
-		if (a9m2440_check_for_ram(S3C24X0_SDRAM_BASE + 128 * 1024 * 1024))
-			a9m2440_disable_second_sdram_bank();
+		if (a9m2440_check_for_ram(S3C_SDRAM_BASE + 128 * 1024 * 1024))
+			s3c24xx_disable_second_sdram_bank();
 		break;
 	case 4:
 	case 5:
 	case 6:		/* not supported on this machine */
 		break;
 	default:
-		if (a9m2440_check_for_ram(S3C24X0_SDRAM_BASE + 16 * 1024 * 1024))
-			a9m2440_disable_second_sdram_bank();
+		if (a9m2440_check_for_ram(S3C_SDRAM_BASE + 16 * 1024 * 1024))
+			s3c24xx_disable_second_sdram_bank();
 		break;
 	}
 
-	arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c24xx_get_memory_size());
 
 	return 0;
 }
@@ -114,14 +109,14 @@ static int a9m2440_devices_init(void)
 	uint32_t reg;
 
 	/* ----------- configure the access to the outer space ---------- */
-	reg = readl(BWSCON);
+	reg = readl(S3C_BWSCON);
 
 	/* CS#5 to access the network controller */
 	reg &= ~0x00f00000;
 	reg |=  0x00d00000;	/* 16 bit */
-	writel(0x1f4c, BANKCON5);
+	writel(0x1f4c, S3C_BANKCON5);
 
-	writel(reg, BWSCON);
+	writel(reg, S3C_BWSCON);
 
 #ifdef CONFIG_MACH_A9M2410DEV
 	a9m2410dev_devices_init();
@@ -140,7 +135,7 @@ static int a9m2440_devices_init(void)
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
 	 * data width is 16 bit
 	 */
-	add_generic_device("cs8900", -1, NULL, CS5_BASE + (1 << 24) + 0x300, 16,
+	add_generic_device("cs8900", -1, NULL, S3C_CS5_BASE + (1 << 24) + 0x300, 16,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
@@ -151,7 +146,7 @@ static int a9m2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
+	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index bfdd7f0..57ebe3f 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -37,7 +37,7 @@ sdram_init:
 	ldr r4, [r1]
 	and r4, r4, #0x3
 
-	ldr r1, =S3C24X0_MEMCTL_BASE
+	ldr r1, =S3C_MEMCTL_BASE
 	/* configure both SDRAM areas with 32 bit data bus width */
 	ldr r0, =((0x2 << 24) + (0x2 << 28))
 	str r0, [r1], #0x1c	/* post add register offset for bank6 */
@@ -218,9 +218,9 @@ board_init_lowlevel:
 	bl s3c24x0_disable_wd
 
 	/* skip everything here if we are already running from SDRAM */
-	cmp pc, #S3C24X0_SDRAM_BASE
+	cmp pc, #S3C_SDRAM_BASE
 	blo 1f
-	cmp pc, #S3C24X0_SDRAM_END
+	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
 	mov pc, r10
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
index f114bb7..1c8860a 100644
--- a/arch/arm/boards/mini2440/lowlevel_init.S
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -17,9 +17,9 @@ board_init_lowlevel:
 	bl s3c24x0_disable_wd
 
 	/* skip everything here if we are already running from SDRAM */
-	cmp pc, #S3C24X0_SDRAM_BASE
+	cmp pc, #S3C_SDRAM_BASE
 	blo 1f
-	cmp pc, #S3C24X0_SDRAM_END
+	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
 	mov pc, r10
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index ec4eb05..29fd5a8 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -43,6 +43,7 @@
 #include <mach/s3c-generic.h>
 #include <mach/s3c-mci.h>
 #include <mach/s3c24xx-fb.h>
+#include <mach/s3c-busctl.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
@@ -266,7 +267,7 @@ static const unsigned pin_usage[] = {
 
 static int mini2440_mem_init(void)
 {
-	arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c24xx_get_memory_size());
 
 	return 0;
 }
@@ -281,14 +282,14 @@ static int mini2440_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
 		s3c_gpio_mode(pin_usage[i]);
 
-	reg = readl(BWSCON);
+	reg = readl(S3C_BWSCON);
 
 	/* CS#4 to access the network controller */
 	reg &= ~0x000f0000;
 	reg |=  0x000d0000;	/* 16 bit */
-	writel(0x1f4c, BANKCON4);
+	writel(0x1f4c, S3C_BANKCON4);
 
-	writel(reg, BWSCON);
+	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to external devices */
 	reg = readl(MISCCR);
@@ -298,7 +299,7 @@ static int mini2440_devices_init(void)
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 
-	add_dm9000_device(0, CS4_BASE + 0x300, CS4_BASE + 0x304,
+	add_dm9000_device(0, S3C_CS4_BASE + 0x300, S3C_CS4_BASE + 0x304,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -316,7 +317,7 @@ static int mini2440_devices_init(void)
 			   IORESOURCE_MEM, &s3c24x0_fb_data);
 	add_generic_device("ohci", 0, NULL, S3C2410_USB_HOST_BASE, 0x100,
 			   IORESOURCE_MEM, NULL);
-	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
+	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
 	return 0;
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 4a0c87b..cbe0321 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -27,55 +27,63 @@
 #include <init.h>
 #include <clock.h>
 #include <io.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
+#include <mach/s3c-busctl.h>
 
 /**
  * Calculate the amount of connected and available memory
  * @return Memory size in bytes
  */
-uint32_t s3c24x0_get_memory_size(void)
+uint32_t s3c24xx_get_memory_size(void)
 {
 	uint32_t reg, size;
 
 	/*
 	 * detect the current memory size
 	 */
-	reg = readl(BANKSIZE);
+	reg = readl(S3C_BANKSIZE);
 
 	switch (reg & 0x7) {
 	case 0:
-		size = 32 * 1024 * 1024;
+		size = SZ_32M;
 		break;
 	case 1:
-		size = 64 * 1024 * 1024;
+		size = SZ_64M;
 		break;
 	case 2:
-		size = 128 * 1024 * 1024;
+		size = SZ_128M;
 		break;
 	case 4:
-		size = 2 * 1024 * 1024;
+		size = SZ_2M;
 		break;
 	case 5:
-		size = 4 * 1024 * 1024;
+		size = SZ_4M;
 		break;
 	case 6:
-		size = 8 * 1024 * 1024;
+		size = SZ_8M;
 		break;
 	default:
-		size = 16 * 1024 * 1024;
+		size = SZ_16M;
 		break;
 	}
 
 	/*
 	 * Is bank7 also configured for SDRAM usage?
 	 */
-	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
 		size <<= 1;	/* also count this bank */
 
 	return size;
 }
 
+void s3c24xx_disable_second_sdram_bank(void)
+{
+	writel(readl(S3C_BANKCON7) & ~(0x3 << 15), S3C_BANKCON7);
+	writel(readl(MISCCR) | (1 << 18), MISCCR); /* disable its clock */
+}
+
 #define S3C_WTCON (S3C_WATCHDOG_BASE)
 #define S3C_WTDAT (S3C_WATCHDOG_BASE + 0x04)
 #define S3C_WTCNT (S3C_WATCHDOG_BASE + 0x08)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-busctl.h b/arch/arm/mach-samsung/include/mach/s3c-busctl.h
new file mode 100644
index 0000000..4bcf0a7
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-busctl.h
@@ -0,0 +1,32 @@
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
+#ifndef __MACH_S3C_BUSCTL_H
+# define __MACH_S3C_BUSCTL_H
+
+#define S3C_BWSCON (S3C_MEMCTL_BASE)
+#define S3C_BANKCON0 (S3C_MEMCTL_BASE + 0x04)
+#define S3C_BANKCON1 (S3C_MEMCTL_BASE + 0x08)
+#define S3C_BANKCON2 (S3C_MEMCTL_BASE + 0x0c)
+#define S3C_BANKCON3 (S3C_MEMCTL_BASE + 0x10)
+#define S3C_BANKCON4 (S3C_MEMCTL_BASE + 0x14)
+#define S3C_BANKCON5 (S3C_MEMCTL_BASE + 0x18)
+#define S3C_BANKCON6 (S3C_MEMCTL_BASE + 0x1c)
+#define S3C_BANKCON7 (S3C_MEMCTL_BASE + 0x20)
+#define S3C_REFRESH (S3C_MEMCTL_BASE + 0x24)
+#define S3C_BANKSIZE (S3C_MEMCTL_BASE + 0x28)
+#define S3C_MRSRB6 (S3C_MEMCTL_BASE + 0x2c)
+#define S3C_MRSRB7 (S3C_MEMCTL_BASE + 0x30)
+
+#endif /* __MACH_S3C_BUSCTL_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 33f025d..4ea3dd7 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -30,4 +30,5 @@ uint32_t s3c_get_fclk(void);
 uint32_t s3c_get_hclk(void);
 uint32_t s3c_get_pclk(void);
 uint32_t s3c_get_uclk(void);
-uint32_t s3c24x0_get_memory_size(void);
+uint32_t s3c24xx_get_memory_size(void);
+void s3c24xx_disable_second_sdram_bank(void);
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 7c45c53..4f713be 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -19,9 +19,7 @@
  */
 
 /* S3C2410 device base addresses */
-#define S3C24X0_SDRAM_BASE		0x30000000
-#define S3C24X0_SDRAM_END		0x40000000
-#define S3C24X0_MEMCTL_BASE		0x48000000
+#define S3C_MEMCTL_BASE			0x48000000
 #define S3C2410_USB_HOST_BASE		0x49000000
 #define S3C2410_INTERRUPT_BASE		0x4A000000
 #define S3C2410_DMA_BASE		0x4B000000
@@ -40,6 +38,17 @@
 #define S3C2410_SPI_BASE		0x59000000
 #define S3C2410_SDI_BASE		0x5A000000
 
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
 
 /*
  * if we are booting from NAND, its internal SRAM occures at
@@ -59,21 +68,6 @@
 #define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
 #define S3C_UART3_SIZE 0x4000
 
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
 /* GPIO registers (direct access) */
 #define GPACON (S3C24X0_GPIO_BASE)
 #define GPADAT (S3C24X0_GPIO_BASE + 0x04)
@@ -133,12 +127,3 @@
 # define DSC0 (S3C24X0_GPIO_BASE + 0xc4)
 # define DSC1 (S3C24X0_GPIO_BASE + 0xc8)
 #endif
-
-/* external IO space */
-#define CS0_BASE 0x00000000
-#define CS1_BASE 0x08000000
-#define CS2_BASE 0x10000000
-#define CS3_BASE 0x18000000
-#define CS4_BASE 0x20000000
-#define CS5_BASE 0x28000000
-#define CS6_BASE 0x30000000
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index 93ea3ce..31c6196 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -192,7 +192,7 @@ With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
 s3c24x0_sdram_init:
 
 	adr r0, SDRAMDATA	/* get the current relative address of the table */
-	mov r1, #S3C24X0_MEMCTL_BASE
+	mov r1, #S3C_MEMCTL_BASE
 	mov r2, #6		/* we *know* it contains 6 entries */
 
 	ldr r3, [r0], #4	/* write BSWCON first */
@@ -255,7 +255,7 @@ s3c24x0_nand_boot:
  * In the case of NOR boot we are running from the same address space.
  * Detect this case to handle it correctly.
  */
-	mov r1, #S3C24X0_MEMCTL_BASE
+	mov r1, #S3C_MEMCTL_BASE
 	ldr r3, [r1]
 	and r3, r3, #0x6
 	cmp r3, #0x0	/* check for NAND case */
diff --git a/arch/arm/mach-samsung/s3c24xx-clocks.c b/arch/arm/mach-samsung/s3c24xx-clocks.c
index beacc76..a99d1b9 100644
--- a/arch/arm/mach-samsung/s3c24xx-clocks.c
+++ b/arch/arm/mach-samsung/s3c24xx-clocks.c
@@ -21,6 +21,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-clocks.h>
+#include <mach/s3c-busctl.h>
 
 /**
  * Calculate the current M-PLL clock.
@@ -127,9 +128,11 @@ int s3c24xx_dump_clocks(void)
 	printf("fclk:    %7d kHz\n", s3c_get_fclk() / 1000);
 	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
 	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
-	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c_get_hclk() / 1000000);
-	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
+	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(S3C_BANKCON6) & 0xc) >> 2) + 2,
+						s3c_get_hclk() / 1000000);
+	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n",
+			((readl(S3C_BANKCON7) & 0xc) >> 2) + 2,
 			s3c_get_hclk() / 1000000);
 	return 0;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
