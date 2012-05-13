Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6j-0003cD-7m
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:41:06 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so3495853laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:41:04 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:40:05 +0600
Message-Id: <1336912806-4163-9-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 8/9] S5P iROM boot support - improved
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

---
 arch/arm/boards/tiny210/lowlevel.c               |   13 ++++-
 arch/arm/mach-samsung/Kconfig                    |   11 ++++
 arch/arm/mach-samsung/Makefile                   |    1 +
 arch/arm/mach-samsung/include/mach/s5pcxx-irom.h |   32 ++++++++++++
 arch/arm/mach-samsung/s5p-irom-boot.c            |   59 ++++++++++++++++++++++
 5 files changed, 115 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-irom.h
 create mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c

diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
index d14b9eb..d8e1fca 100644
--- a/arch/arm/boards/tiny210/lowlevel.c
+++ b/arch/arm/boards/tiny210/lowlevel.c
@@ -23,12 +23,16 @@
 #include <init.h>
 #include <io.h>
 #include <asm/barebox-arm.h>
+#include <asm/sections.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-clocks.h>
 #include <mach/s3c-generic.h>
 
+#include <mach/s5pcxx-irom.h>
+
 void __bare_init board_init_lowlevel(void)
 {
+    uint32_t r;
 
 #ifdef CONFIG_S3C_PLL_INIT
 	s5p_init_pll();
@@ -41,7 +45,14 @@ void __bare_init board_init_lowlevel(void)
 	s5p_init_dram_bank(S5P_DMC0_BASE, 0x20E00323, 0);
 #endif
 
-	/* TODO: load barebox to DRAM here */
+#ifdef CONFIG_S5P_USE_IROM
+	/* FIXME this boots from MMC only */
+	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
+		while (1) { } /* hang */
+#endif
 
+	/* Jump to SDRAM */
+	r = (unsigned)TEXT_BASE;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
 	while (1) { } /* hang */
 }
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index fcef677..1387d05 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -98,6 +98,7 @@ config MACH_TINY210
 	select CPU_S5PV210
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
+	select S5P_USE_IROM
 
 endchoice
 
@@ -136,6 +137,16 @@ config S3C_NAND_BOOT
 	  Add generic support to boot from NAND flash. Image loading will be
 	  skipped if the code is running from NOR or already from SDRAM.
 
+if ARCH_S5PCxx
+
+config S5P_USE_IROM
+	bool
+	prompt "Use iROM for booting"
+	help
+	  Use CPU built-in iROM code for booting. If unsure, say N.
+
+endif
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index e05d292..0e23eae 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -3,4 +3,5 @@ obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24x0.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
+obj-$(CONFIG_S5P_USE_IROM) += s5p-irom-boot.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s5pcxx-irom.h b/arch/arm/mach-samsung/include/mach/s5pcxx-irom.h
new file mode 100644
index 0000000..65c2fb4
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s5pcxx-irom.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * Based on code from u-boot found somewhere on the web
+ * that seems to originate from Samsung
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
+/**
+ * Using iROM to boot is generally not a good idea. However we don't have
+ * another method of booting yet.
+ * TODO: implement NAND and SD booting and remove this file.
+ */
+
+#ifndef __S5PCXX_IROM_H
+#define __S5PCXX_IROM_H
+
+#include <config.h>
+#include <common.h>
+
+int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t block_count);
+
+#endif /* __S5PCXX_IROM_H */
diff --git a/arch/arm/mach-samsung/s5p-irom-boot.c b/arch/arm/mach-samsung/s5p-irom-boot.c
new file mode 100644
index 0000000..dd47f072
--- /dev/null
+++ b/arch/arm/mach-samsung/s5p-irom-boot.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * Based on code from u-boot found somewhere on the web
+ * that seems to originate from Samsung
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
+/**
+ * Using iROM to boot is generally not a good idea. However we don't have
+ * another method of booting yet.
+ * TODO: implement NAND and SD booting and remove this file.
+ */
+
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <mach/s3c-generic.h>
+#include <mach/s5pcxx-irom.h>
+
+/* Magical addressed from S5PV210 Application Note */
+
+/* Variables */
+#define ADDR_globalBlockSize	0xD0037480
+#define ADDR_globalSDHCInfoBit	0xD0037484
+#define ADDR_V210_SDMMC_BASE	0xD0037488
+/* Functions */
+#define ADDR_NF8_ReadPage_Adv		0xD0037F90
+#define ADDR_NF16_ReadPage_Adv		0xD0037F94
+#define ADDR_CopySDMMCtoMem		0xD0037F98
+#define ADDR_CopyMMC4_3toMem		0xD0037F9C
+#define ADDR_CopyOND_ReadMultiPages	0xD0037FA0
+#define ADDR_CopyOND_ReadMultiPages_Adv	0xD0037FA4
+#define ADDR_Copy_eSSDtoMem		0xD0037FA8
+#define ADDR_Copy_eSSDtoMem_Adv		0xD0037FAC
+#define ADDR_NF8_ReadPage_Adv128p	0xD0037FB0
+
+#define R(x) (*(volatile uint32_t*)(x))
+
+int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t block_count)
+{
+	typedef uint32_t (*func_t) (int32_t, uint32_t, uint16_t, uint32_t*, int8_t);
+	uint32_t ret;
+	uint32_t chbase = R(ADDR_V210_SDMMC_BASE);
+	func_t func = (func_t)R(ADDR_CopySDMMCtoMem);
+	int chan = (chbase - 0xEB000000) >> 20;
+	if (chan != 0 && chan != 2)
+		return 0;
+	return func(chan, start_block, block_count, (uint32_t*)dest, 0) ? 1 : 0;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
