Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6g-0003ZT-D5
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:41:03 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so3492790lbb.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:41:02 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:40:04 +0600
Message-Id: <1336912806-4163-8-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 7/9] Revert "S5PV210 iROM magic boot code"
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

This reverts commit 4d6b83126d870ce3f0667d0a46077b8717521381.

Conflicts:

	arch/arm/boards/tiny210/lowlevel.c
	arch/arm/mach-samsung/Makefile
	arch/arm/mach-samsung/include/mach/s3c-generic.h
---
 arch/arm/Kconfig                                 |    1 -
 arch/arm/boards/tiny210/lowlevel.c               |    9 +--
 arch/arm/lib/barebox.lds.S                       |    4 --
 arch/arm/mach-samsung/Kconfig                    |    1 -
 arch/arm/mach-samsung/Makefile                   |    1 -
 arch/arm/mach-samsung/include/mach/s3c-generic.h |    1 -
 arch/arm/mach-samsung/s5p-irom-boot.c            |   64 ----------------------
 common/Kconfig                                   |   24 --------
 8 files changed, 2 insertions(+), 103 deletions(-)
 delete mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6012a1a..f465084 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -16,7 +16,6 @@ config ARM
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
-	select HAVE_BARE_INIT_PADDING
 	default y
 
 config ARM_AMBA
diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
index 344be6a..d14b9eb 100644
--- a/arch/arm/boards/tiny210/lowlevel.c
+++ b/arch/arm/boards/tiny210/lowlevel.c
@@ -23,14 +23,12 @@
 #include <init.h>
 #include <io.h>
 #include <asm/barebox-arm.h>
-#include <asm/sections.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-clocks.h>
 #include <mach/s3c-generic.h>
 
 void __bare_init board_init_lowlevel(void)
 {
-	unsigned r;
 
 #ifdef CONFIG_S3C_PLL_INIT
 	s5p_init_pll();
@@ -43,10 +41,7 @@ void __bare_init board_init_lowlevel(void)
 	s5p_init_dram_bank(S5P_DMC0_BASE, 0x20E00323, 0);
 #endif
 
-	if (! s5p_irom_mmc_load((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
-		while (1) { } /* hang */
+	/* TODO: load barebox to DRAM here */
 
-	/* Jump to SDRAM */
-	r = (unsigned)TEXT_BASE;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	while (1) { } /* hang */
 }
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 4d02eda..3fd271b 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -49,10 +49,6 @@ SECTIONS
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
-#ifdef CONFIG_BAREBOX_BARE_INIT_PADDING
-		. = (. + (CONFIG_BAREBOX_BARE_INIT_PADDING_SIZE));
-		. = ALIGN(CONFIG_BAREBOX_BARE_INIT_PADDING_ALIGN);
-#endif
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 183b84d..fcef677 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -98,7 +98,6 @@ config MACH_TINY210
 	select CPU_S5PV210
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
-	select BAREBOX_BARE_INIT_PADDING
 
 endchoice
 
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index becf2a7..e05d292 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -3,5 +3,4 @@ obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24x0.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
-obj-$(CONFIG_ARCH_S5PCxx) += s5p-irom-boot.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 53bb95d..9a5a642 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -42,5 +42,4 @@ void s3c24xx_disable_second_sdram_bank(void);
 #ifdef CONFIG_ARCH_S5PCxx
 void s5p_init_pll(void);
 void s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1);
-int s5p_irom_mmc_load(void *dest, uint32_t start_block, uint16_t block_count);
 #endif
diff --git a/arch/arm/mach-samsung/s5p-irom-boot.c b/arch/arm/mach-samsung/s5p-irom-boot.c
deleted file mode 100644
index 8fa0de4..0000000
--- a/arch/arm/mach-samsung/s5p-irom-boot.c
+++ /dev/null
@@ -1,64 +0,0 @@
-/*
- * Copyright (C) 2012 Alexey Galakhov
- *
- * Based on code from u-boot found somewhere on the web
- * that seems to originate from Samsung
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
-#include <mach/s3c-generic.h>
-
-/*
- * These magical address values are from u-boot
- * Not sure what they really mean but they work
- */
-#if 1 /* S5PV210 and other CPUs */
-# define MADDR_CH 0xD0037488
-# define MADDR_CP 0xD0037F98
-#else /* not sure when, some older CPUs */
-# define MADDR_CH 0xD003A508
-# define MADDR_CP 0xD003E008
-#endif
-
-typedef uint32_t (*mmc2mem_func)
-(uint32_t channel, uint32_t start_block, uint16_t block_count, uint32_t *dest, uint32_t init);
-
-/*
- * Call to the magical iROM code present on S5P CPUs
- * Block seems to be 512 bytes
- */
-int __bare_init s5p_irom_mmc_load(void *dest, uint32_t start_block, uint16_t block_count)
-{
-	uint32_t ret;
-	uint32_t chan;
-	uint32_t ch = *(volatile uint32_t*)(MADDR_CH);
-	mmc2mem_func cp_func = (mmc2mem_func)(*(uint32_t*)(MADDR_CP));
-	switch (ch)
-	{
-	case 0xEB000000:
-		chan = 0;
-		break;
-	case 0xEB200000:
-		chan = 2;
-		break;
-	default:
-		return 0;
-	}
-
-	ret = cp_func(chan, start_block, block_count, (uint32_t*)dest, 0);
-	if (ret == 0)
-		return 0; /* error */
-	return 1;
-}
diff --git a/common/Kconfig b/common/Kconfig
index 199268e..73d620a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -124,30 +124,6 @@ config BAREBOX_MAX_BARE_INIT_SIZE
 	  this will allow your bare_init will fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
-config HAVE_BARE_INIT_PADDING
-	bool
-
-config BAREBOX_BARE_INIT_PADDING
-	depends on HAVE_BARE_INIT_PADDING
-	bool "Enable bare_init tail padding"
-	default n
-	help
-	  Some architectures require that 1st stage loader is padded
-	  with zeroes. This will add zero padding at the end of
-	  bare_init block. If unsure, say n.
-
-config BAREBOX_BARE_INIT_PADDING_SIZE
-	depends on BAREBOX_BARE_INIT_PADDING
-	prompt "Minimal bare_init padding size"
-	hex
-	default 0x4
-
-config BAREBOX_BARE_INIT_PADDING_ALIGN
-	depends on BAREBOX_BARE_INIT_PADDING
-	prompt "bare_init end alignment"
-	hex
-	default 0x200
-
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
