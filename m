Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6Y-0003cD-So
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:40:56 +0000
Received: by laap9 with SMTP id p9so3495853laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:40:53 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:40:01 +0600
Message-Id: <1336912806-4163-5-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 4/9] S5PV210 iROM magic boot code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/Kconfig                                 |    1 +
 arch/arm/boards/tiny210/lowlevel.c               |   11 +++-
 arch/arm/lib/barebox.lds.S                       |    4 ++
 arch/arm/mach-samsung/Kconfig                    |    1 +
 arch/arm/mach-samsung/Makefile                   |    1 +
 arch/arm/mach-samsung/include/mach/s3c-generic.h |    4 ++
 arch/arm/mach-samsung/s5p-irom-boot.c            |   64 ++++++++++++++++++++++
 common/Kconfig                                   |   24 ++++++++
 8 files changed, 108 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f465084..6012a1a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -16,6 +16,7 @@ config ARM
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select HAVE_BARE_INIT_PADDING
 	default y
 
 config ARM_AMBA
diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
index 8926fda..fe43565 100644
--- a/arch/arm/boards/tiny210/lowlevel.c
+++ b/arch/arm/boards/tiny210/lowlevel.c
@@ -23,11 +23,15 @@
 #include <init.h>
 #include <io.h>
 #include <asm/barebox-arm.h>
+#include <asm/sections.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-clocks.h>
+#include <mach/s3c-generic.h>
 
 void __bare_init board_init_lowlevel(void)
 {
+	unsigned r;
+
 	/* TODO: initialize PLL here */
 
 	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
@@ -35,7 +39,10 @@ void __bare_init board_init_lowlevel(void)
 
 	/* TODO: initialize DRAM here */
 
-	/* TODO: load barebox to DRAM here */
+	if (! s5p_irom_mmc_load((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
+		while (1) { } /* hang */
 
-	while (1) { } /* hang */
+	/* Jump to SDRAM */
+	r = (unsigned)TEXT_BASE;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
 }
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 3fd271b..4d02eda 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -49,6 +49,10 @@ SECTIONS
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
+#ifdef CONFIG_BAREBOX_BARE_INIT_PADDING
+		. = (. + (CONFIG_BAREBOX_BARE_INIT_PADDING_SIZE));
+		. = ALIGN(CONFIG_BAREBOX_BARE_INIT_PADDING_ALIGN);
+#endif
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index fcef677..183b84d 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -98,6 +98,7 @@ config MACH_TINY210
 	select CPU_S5PV210
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
+	select BAREBOX_BARE_INIT_PADDING
 
 endchoice
 
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 66f3fd2..0123743 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -2,4 +2,5 @@ obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24x0.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o
+obj-$(CONFIG_ARCH_S5PCxx) += s5p-irom-boot.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 62d2c93..d6d1a3e 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -38,3 +38,7 @@ uint32_t s3c_get_memory_size(void);
 #ifdef CONFIG_ARCH_S3C24xx
 void s3c24xx_disable_second_sdram_bank(void);
 #endif
+
+#ifdef CONFIG_ARCH_S5PCxx
+int s5p_irom_mmc_load(void *dest, uint32_t start_block, uint16_t block_count);
+#endif
diff --git a/arch/arm/mach-samsung/s5p-irom-boot.c b/arch/arm/mach-samsung/s5p-irom-boot.c
new file mode 100644
index 0000000..8fa0de4
--- /dev/null
+++ b/arch/arm/mach-samsung/s5p-irom-boot.c
@@ -0,0 +1,64 @@
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
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <mach/s3c-generic.h>
+
+/*
+ * These magical address values are from u-boot
+ * Not sure what they really mean but they work
+ */
+#if 1 /* S5PV210 and other CPUs */
+# define MADDR_CH 0xD0037488
+# define MADDR_CP 0xD0037F98
+#else /* not sure when, some older CPUs */
+# define MADDR_CH 0xD003A508
+# define MADDR_CP 0xD003E008
+#endif
+
+typedef uint32_t (*mmc2mem_func)
+(uint32_t channel, uint32_t start_block, uint16_t block_count, uint32_t *dest, uint32_t init);
+
+/*
+ * Call to the magical iROM code present on S5P CPUs
+ * Block seems to be 512 bytes
+ */
+int __bare_init s5p_irom_mmc_load(void *dest, uint32_t start_block, uint16_t block_count)
+{
+	uint32_t ret;
+	uint32_t chan;
+	uint32_t ch = *(volatile uint32_t*)(MADDR_CH);
+	mmc2mem_func cp_func = (mmc2mem_func)(*(uint32_t*)(MADDR_CP));
+	switch (ch)
+	{
+	case 0xEB000000:
+		chan = 0;
+		break;
+	case 0xEB200000:
+		chan = 2;
+		break;
+	default:
+		return 0;
+	}
+
+	ret = cp_func(chan, start_block, block_count, (uint32_t*)dest, 0);
+	if (ret == 0)
+		return 0; /* error */
+	return 1;
+}
diff --git a/common/Kconfig b/common/Kconfig
index 73d620a..199268e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -124,6 +124,30 @@ config BAREBOX_MAX_BARE_INIT_SIZE
 	  this will allow your bare_init will fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
+config HAVE_BARE_INIT_PADDING
+	bool
+
+config BAREBOX_BARE_INIT_PADDING
+	depends on HAVE_BARE_INIT_PADDING
+	bool "Enable bare_init tail padding"
+	default n
+	help
+	  Some architectures require that 1st stage loader is padded
+	  with zeroes. This will add zero padding at the end of
+	  bare_init block. If unsure, say n.
+
+config BAREBOX_BARE_INIT_PADDING_SIZE
+	depends on BAREBOX_BARE_INIT_PADDING
+	prompt "Minimal bare_init padding size"
+	hex
+	default 0x4
+
+config BAREBOX_BARE_INIT_PADDING_ALIGN
+	depends on BAREBOX_BARE_INIT_PADDING
+	prompt "bare_init end alignment"
+	hex
+	default 0x200
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
