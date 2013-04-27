Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp53.i.mail.ru ([94.100.177.113])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UW8Sr-0007tE-O5
 for barebox@lists.infradead.org; Sat, 27 Apr 2013 16:59:12 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 27 Apr 2013 20:58:54 +0400
Message-Id: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: Make OMAP syslib.c functions available for other ARM
 targets
To: barebox@lists.infradead.org

This patch moves OMAP syslib functions into common ARM location, so
make these functions available to other ARM targets.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/archosg9/lowlevel.c       |  2 +-
 arch/arm/boards/beagle/lowlevel.c         |  2 +-
 arch/arm/boards/beaglebone/board.c        |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c     |  2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c    |  2 +-
 arch/arm/boards/omap3evm/lowlevel.c       |  2 +-
 arch/arm/boards/panda/board.c             |  2 +-
 arch/arm/boards/panda/lowlevel.c          |  2 +-
 arch/arm/boards/pcm049/board.c            |  2 +-
 arch/arm/boards/pcm049/lowlevel.c         |  2 +-
 arch/arm/boards/phycard-a-l1/lowlevel.c   |  2 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c  |  2 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |  2 +-
 arch/arm/include/asm/syslib.h             | 47 +++++++++++++++++++++
 arch/arm/lib/Makefile                     |  1 +
 arch/arm/lib/syslib.c                     | 62 +++++++++++++++++++++++++++
 arch/arm/mach-omap/Makefile               |  3 +-
 arch/arm/mach-omap/gpmc.c                 |  2 +-
 arch/arm/mach-omap/include/mach/syslib.h  | 53 -----------------------
 arch/arm/mach-omap/omap3_clock.c          |  2 +-
 arch/arm/mach-omap/omap3_generic.c        |  2 +-
 arch/arm/mach-omap/omap4_clock.c          |  2 +-
 arch/arm/mach-omap/omap4_generic.c        |  2 +-
 arch/arm/mach-omap/s32k_clksource.c       |  2 +-
 arch/arm/mach-omap/syslib.c               | 70 -------------------------------
 25 files changed, 130 insertions(+), 144 deletions(-)
 create mode 100644 arch/arm/include/asm/syslib.h
 create mode 100644 arch/arm/lib/syslib.c
 delete mode 100644 arch/arm/mach-omap/include/mach/syslib.h
 delete mode 100644 arch/arm/mach-omap/syslib.c

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 0334693..123cbec 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -17,7 +17,7 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include "mux.h"
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index d0fd066..3295574 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -6,7 +6,7 @@
 #include <mach/omap3-silicon.h>
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/sys_info.h>
 
 /**
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index b3f39ea..b40eb99 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -36,7 +36,7 @@
 #include <mach/am33xx-clock.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/gpmc.h>
 #include <mach/ehci.h>
 #include <i2c/i2c.h>
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index a9737d9..1fb5563 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -7,7 +7,7 @@
 #include <mach/am33xx-clock.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/am33xx-mux.h>
 #include <mach/wdt.h>
 
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index ed675ad..f50a12d 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -6,7 +6,7 @@
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/omap3-silicon.h>
 #include <mach/sys_info.h>
 
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 2d9e130..c79b06c 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -6,7 +6,7 @@
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/omap3-silicon.h>
 #include <mach/sys_info.h>
 
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index d1f9a5e..4db7c22 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -10,7 +10,7 @@
 #include <mach/omap4-devices.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/control.h>
 #include <usb/ehci.h>
 #include <linux/err.h>
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index ed1dc6f..ce41b0a 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -22,7 +22,7 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index b0d689b..ddb6d38 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -26,7 +26,7 @@
 #include <mach/omap4-devices.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/control.h>
 #include <linux/err.h>
 #include <sizes.h>
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 5075bbb..b41ec6a 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -22,7 +22,7 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
index 30379d8..cacb8e1 100644
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -7,7 +7,7 @@
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/omap3-silicon.h>
 #include <mach/sys_info.h>
 
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 07505ff..a8b5470 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -22,7 +22,7 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 8f79d98..3eb635a 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -25,7 +25,7 @@
 #include <mach/omap4-silicon.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/control.h>
 #include <linux/err.h>
 #include <sizes.h>
diff --git a/arch/arm/include/asm/syslib.h b/arch/arm/include/asm/syslib.h
new file mode 100644
index 0000000..fff89fe
--- /dev/null
+++ b/arch/arm/include/asm/syslib.h
@@ -0,0 +1,47 @@
+/**
+ * @file
+ * @brief ARM independent support functions
+ *
+ * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
+ *
+ * (C) Copyright 2004-2008
+ * Texas Instruments, <www.ti.com>
+ * Richard Woodruff <r-woodruff2@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#ifndef __ASM_SYSLIB_H_
+#define __ASM_SYSLIB_H_
+
+#include <io.h>
+
+/** System Independent functions */
+
+/**
+ * @brief clear & set a value in a bit range for a 32 bit address
+ *
+ * @param[in] addr Address to set/read from
+ * @param[in] start_bit Where to put the value
+ * @param[in] num_bits number of bits the value should be set
+ * @param[in] value the value to set
+ *
+ * @return void
+ */
+static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
+{
+	u32 tmp, msk = 0;
+	msk = 1 << num_bits;
+	--msk;
+	tmp = readl(addr) & ~(msk << start_bit);
+	tmp |=  value << start_bit;
+	writel(tmp, addr);
+}
+
+u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);
+void sdelay(unsigned long loops);
+
+#endif /* __ASM_SYSLIB_H_ */
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 3ea695c..df12f1a 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -17,6 +17,7 @@ obj-y	+= ashldi3.o
 obj-y	+= lshrdi3.o
 obj-y	+= runtime-offset.o
 pbl-y	+= runtime-offset.o
+lwl-y	+= syslib.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
diff --git a/arch/arm/lib/syslib.c b/arch/arm/lib/syslib.c
new file mode 100644
index 0000000..d37d4e7
--- /dev/null
+++ b/arch/arm/lib/syslib.c
@@ -0,0 +1,62 @@
+/**
+ * @file
+ * @brief ARM independent utility APIs
+ *
+ * Provide APIs which can be used from platform/architecture code
+ * to operate on
+ *
+ * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
+ *
+ * (C) Copyright 2006-2008
+ * Texas Instruments, <www.ti.com>
+ * Richard Woodruff <r-woodruff2@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <io.h>
+
+/**
+ * @brief simple spin loop
+ *
+ * Will be constant time as its generally used in bypass conditions only.
+ * This is necessary until timers are accessible. if you need timed delays
+ * use @ref mdelay or @ref udelay instead
+ *
+ * @param[in] loops number of loops
+ *
+ * @return void
+ */
+void sdelay(unsigned long loops)
+{
+	__asm__ volatile ("1:\n" "subs %0, %1, #1\n"
+					  "bne 1b":"=r" (loops):"0"(loops));
+}
+
+/**
+ * @brief common routine to allow waiting for changes in volatile regs.
+ *
+ * @param[in] read_bit_mask  the bit mask to read
+ * @param[in] match_value  match to which value
+ * @param[in] read_addr  address to read from
+ * @param[in] bound max iterations
+ *
+ * @return 1 if match_value is found, else if bound iterations reached,
+ *         returns 0
+ */
+u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound)
+{
+	u32 i = 0, val;
+	do {
+		++i;
+		val = readl(read_addr) & read_bit_mask;
+		if (val == match_value)
+			return 1;
+		if (i == bound)
+			return 0;
+	} while (1);
+}
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index d9e00f7..3e7cffc 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -15,8 +15,7 @@
 # GNU General Public License for more details.
 #
 #
-obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o
-pbl-$(CONFIG_ARCH_OMAP) += syslib.o
+obj-$(CONFIG_ARCH_OMAP) += omap_devices.o omap_generic.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) += dmtimer0.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index bb84b38..d00ff9c 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -29,7 +29,7 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/gpmc.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 
 void __iomem *omap_gpmc_base;
 
diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/arch/arm/mach-omap/include/mach/syslib.h
deleted file mode 100644
index fe8d71d..0000000
--- a/arch/arm/mach-omap/include/mach/syslib.h
+++ /dev/null
@@ -1,53 +0,0 @@
-/**
- * @file
- * @brief These Apis are OMAP independent support functions
- *
- * Implemented by arch/arm/mach-omap/syslib.c
- *
- * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- *
- * (C) Copyright 2004-2008
- * Texas Instruments, <www.ti.com>
- * Richard Woodruff <r-woodruff2@ti.com>
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
-#ifndef __ASM_ARCH_OMAP_SYSLIB_H_
-#define __ASM_ARCH_OMAP_SYSLIB_H_
-#include <io.h>
-
-/** System Independent functions */
-
-/**
- * @brief clear & set a value in a bit range for a 32 bit address
- *
- * @param[in] addr Address to set/read from
- * @param[in] start_bit Where to put the value
- * @param[in] num_bits number of bits the value should be set
- * @param[in] value the value to set
- *
- * @return void
- */
-static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
-{
-	u32 tmp, msk = 0;
-	msk = 1 << num_bits;
-	--msk;
-	tmp = readl(addr) & ~(msk << start_bit);
-	tmp |=  value << start_bit;
-	writel(tmp, addr);
-}
-
-u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);
-void sdelay(unsigned long loops);
-
-#endif /* __ASM_ARCH_OMAP_SYSLIB_H_ */
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index bcde48f..21892c6 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -37,7 +37,7 @@
 #include <mach/omap3-clock.h>
 #include <mach/timers.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 
 #define S32K_CR			(OMAP3_32KTIMER_BASE + 0x10)
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 10e03ae..e2d4e44 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -39,7 +39,7 @@
 #include <mach/omap3-clock.h>
 #include <mach/wdt.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/generic.h>
 
 /**
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 0621fd3..8d0153c 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <io.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/omap4-silicon.h>
 #include <mach/clocks.h>
 #include <mach/omap4-clock.h>
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index e1edffa..9d26f97 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -4,7 +4,7 @@
 #include <mach/omap4-clock.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 #include <mach/generic.h>
 #include <mach/gpmc.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 7def8b1..0d91227 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -30,7 +30,7 @@
 #include <mach/clocks.h>
 #include <mach/timers.h>
 #include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <asm/syslib.h>
 
 /** Sync 32Khz Timer registers */
 #define S32K_CR			0x10
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
deleted file mode 100644
index 42da348..0000000
--- a/arch/arm/mach-omap/syslib.c
+++ /dev/null
@@ -1,70 +0,0 @@
-/**
- * @file
- * @brief Provide OMAP independent utility APIs
- *
- * Provide APIs which can be used from platform/architecture code
- * to operate on
- *
- * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- *
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Richard Woodruff <r-woodruff2@ti.com>
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
-#include <io.h>
-#include <mach/syslib.h>
-
-/**
- * @brief simple spin loop
- *
- * Will be constant time as its generally used in bypass conditions only.
- * This is necessary until timers are accessible. if you need timed delays
- * use @ref mdelay or @ref udelay instead
- *
- * @param[in] loops number of loops
- *
- * @return void
- */
-void sdelay(unsigned long loops)
-{
-	__asm__ volatile ("1:\n" "subs %0, %1, #1\n"
-					  "bne 1b":"=r" (loops):"0"(loops));
-}
-
-/**
- * @brief common routine to allow waiting for changes in volatile regs.
- *
- * @param[in] read_bit_mask  the bit mask to read
- * @param[in] match_value  match to which value
- * @param[in] read_addr  address to read from
- * @param[in] bound max iterations
- *
- * @return 1 if match_value is found, else if bound iterations reached,
- *         returns 0
- */
-u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound)
-{
-	u32 i = 0, val;
-	do {
-		++i;
-		val = readl(read_addr) & read_bit_mask;
-		if (val == match_value)
-			return 1;
-		if (i == bound)
-			return 0;
-	} while (1);
-}
-
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
