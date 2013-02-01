Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045u-VI
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:42 +0100
Message-Id: <1359705587-9762-30-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/34] ARM: Factor out early mmu code
To: barebox@lists.infradead.org

Move early mmu code to a separate file so that it can be
used from the pbl and the regular image. Disabling the mmu
can be dropped since the regular mmu code is now able to
pickup an enabled mmu.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile    |    4 +--
 arch/arm/cpu/mmu-early.c |   53 ++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu-early.h |    6 ++++
 arch/arm/cpu/start-pbl.c |   72 ----------------------------------------------
 4 files changed, 61 insertions(+), 74 deletions(-)
 create mode 100644 arch/arm/cpu/mmu-early.c
 create mode 100644 arch/arm/cpu/mmu-early.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 4b0259c..44410ee 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -8,8 +8,8 @@ obj-y += start.o setupc.o
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
-obj-$(CONFIG_MMU) += mmu.o cache.o
-pbl-$(CONFIG_MMU) += cache.o
+obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
+pbl-$(CONFIG_MMU) += cache.o mmu-early.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
new file mode 100644
index 0000000..b8b30df
--- /dev/null
+++ b/arch/arm/cpu/mmu-early.c
@@ -0,0 +1,53 @@
+#include <common.h>
+#include <asm/mmu.h>
+#include <errno.h>
+#include <sizes.h>
+#include <asm/memory.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+
+#include "mmu.h"
+
+static uint32_t *ttb;
+
+static void create_sections(unsigned long addr, int size_m, unsigned int flags)
+{
+	int i;
+
+	addr >>= 20;
+
+	for (i = size_m; i > 0; i--, addr++)
+		ttb[addr] = (addr << 20) | flags;
+}
+
+static void map_cachable(unsigned long start, unsigned long size)
+{
+	start &= ~(SZ_1M - 1);
+	size = (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
+
+	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
+			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
+}
+
+void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t _ttb)
+{
+	int i;
+
+	ttb = (uint32_t *)_ttb;
+
+	arm_set_cache_functions();
+
+	/* Set the ttb register */
+	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+
+	/* Set the Domain Access Control Register */
+	i = 0x3;
+	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
+
+	create_sections(0, 4096, PMD_SECT_AP_WRITE |
+			PMD_SECT_AP_READ | PMD_TYPE_SECT);
+
+	map_cachable(membase, memsize);
+
+	__mmu_cache_on();
+}
diff --git a/arch/arm/cpu/mmu-early.h b/arch/arm/cpu/mmu-early.h
new file mode 100644
index 0000000..af21f52
--- /dev/null
+++ b/arch/arm/cpu/mmu-early.h
@@ -0,0 +1,6 @@
+#ifndef __ARM_CPU_MMU_EARLY_H
+#define __ARM_CPU_MMU_EARLY_H
+
+void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t ttb);
+
+#endif /* __ARM_CPU_MMU_EARLY_H */
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 9c168b3..0599c57 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -48,82 +48,10 @@ void __naked __section(.text_head_entry) pbl_start(void)
 extern void *input_data;
 extern void *input_data_end;
 
-static unsigned long *ttb;
-
-static void create_sections(unsigned long addr, int size_m, unsigned int flags)
-{
-	int i;
-
-	addr >>= 20;
-
-	for (i = size_m; i > 0; i--, addr++)
-		ttb[addr] = (addr << 20) | flags;
-}
-
-static void map_cachable(unsigned long start, unsigned long size)
-{
-	start &= ~(SZ_1M - 1);
-	size = (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
-
-	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
-			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
-}
-
-static void mmu_enable(unsigned long compressed_start, unsigned int len)
-{
-	int i;
-
-	/* Set the ttb register */
-	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
-
-	/* Set the Domain Access Control Register */
-	i = 0x3;
-	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
-
-	create_sections(0, 4096, PMD_SECT_AP_WRITE |
-			PMD_SECT_AP_READ | PMD_TYPE_SECT);
-	/*
-	 * Setup all regions we need cacheable, namely:
-	 * - the stack
-	 * - the decompressor code
-	 * - the compressed image
-	 * - the uncompressed image
-	 * - the early malloc space
-	 */
-	map_cachable(STACK_BASE, STACK_SIZE);
-	map_cachable((unsigned long)&_text,
-			(unsigned long)&_end - (unsigned long)&_text);
-	map_cachable((unsigned long)compressed_start, len);
-	map_cachable(TEXT_BASE, len * 4);
-	map_cachable(free_mem_ptr, free_mem_end_ptr - free_mem_ptr);
-
-	__mmu_cache_on();
-}
-
-static void mmu_disable(void)
-{
-	__mmu_cache_flush();
-	__mmu_cache_off();
-}
-
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
-	/*
-	 * remap_cached currently does not work rendering the feature
-	 * of enabling the MMU in the PBL useless. disable for now.
-	 */
-	int use_mmu = 0;
-
-	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
-
-	if (use_mmu)
-		mmu_enable((unsigned long)compressed_start, len);
-
 	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 
-	if (use_mmu)
-		mmu_disable();
-
 	flush_icache();
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
