Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPvsO-0005XQ-RY
 for barebox@lists.infradead.org; Thu, 03 May 2012 13:15:21 +0000
Received: by lagy4 with SMTP id y4so1502477lag.36
 for <barebox@lists.infradead.org>; Thu, 03 May 2012 06:15:19 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Thu,  3 May 2012 19:14:04 +0600
Message-Id: <1336050844-7043-5-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 4/4] S5PV210 iROM magic boot code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/mach-samsung/Makefile                   |    1 +
 arch/arm/mach-samsung/include/mach/s3c-generic.h |    4 ++
 arch/arm/mach-samsung/s5p-irom-boot.c            |   64 ++++++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c

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
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
