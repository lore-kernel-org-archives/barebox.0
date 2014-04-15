Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxh-0002rB-NR
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:22 +0000
Received: by mail-la0-f50.google.com with SMTP id pv20so6533419lab.37
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:38:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:25 +0400
Message-Id: <1397547514-19925-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 01/10] MIPS: add initial cache support for R4000-class CPUs
To: barebox@lists.infradead.org

This commit adds very elementary U-Boot style flush/clean
cache generic routines for R4000-class CPUs.

This patch lacks of initial cache initialization code
as it's may be CPU-dependent.

Here is Linux-Barebox cache routines correspondance:

  Linux                         Barebox
    _dma_cache_wback_inv    =>    dma_flush_range
    _dma_cache_wback        =>    dma_clean_range
    _dma_cache_inv          =>    dma_inv_range

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/cache.h    |  8 ++++
 arch/mips/include/asm/cacheops.h | 27 ++++++++++++
 arch/mips/include/asm/io.h       |  7 ++++
 arch/mips/lib/Makefile           |  1 +
 arch/mips/lib/c-r4k.c            | 89 ++++++++++++++++++++++++++++++++++++++++
 arch/mips/lib/dma.c              | 27 ++++++++++++
 6 files changed, 159 insertions(+)
 create mode 100644 arch/mips/include/asm/cache.h
 create mode 100644 arch/mips/include/asm/cacheops.h
 create mode 100644 arch/mips/lib/dma.c

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
new file mode 100644
index 0000000..2f807d5
--- /dev/null
+++ b/arch/mips/include/asm/cache.h
@@ -0,0 +1,8 @@
+#ifndef _ASM_MIPS_CACHE_H
+#define _ASM_MIPS_CACHE_H
+
+void flush_cache_all(void);
+void flush_dcache_all(void);
+void flush_icache_all(void);
+
+#endif /* _ASM_MIPS_CACHE_H */
diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
new file mode 100644
index 0000000..4844a67
--- /dev/null
+++ b/arch/mips/include/asm/cacheops.h
@@ -0,0 +1,27 @@
+/*
+ * Cache operations for the cache instruction.
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * (C) Copyright 1996, 97, 99, 2002, 03 Ralf Baechle
+ * (C) Copyright 1999 Silicon Graphics, Inc.
+ */
+#ifndef	__ASM_CACHEOPS_H
+#define	__ASM_CACHEOPS_H
+
+/*
+ * Cache Operations available on all MIPS processors with R4000-style caches
+ */
+#define Index_Invalidate_I      0x00
+#define Index_Writeback_Inv_D   0x01
+#define Index_Load_Tag_I	0x04
+#define Index_Load_Tag_D	0x05
+#define Index_Store_Tag_I	0x08
+#define Index_Store_Tag_D	0x09
+#define Hit_Invalidate_I	0x10
+#define Hit_Invalidate_D	0x11
+#define Hit_Writeback_Inv_D	0x15
+
+#endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4832be6..ff66ea5 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -14,6 +14,13 @@
 #include <asm/types.h>
 #include <asm/byteorder.h>
 
+void *dma_alloc_coherent(size_t size);
+void dma_free_coherent(void *mem, size_t size);
+
+void dma_clean_range(unsigned long, unsigned long);
+void dma_flush_range(unsigned long, unsigned long);
+void dma_inv_range(unsigned long, unsigned long);
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 71c4f6b..f4aee2e 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -6,6 +6,7 @@ obj-y += ashrdi3.o
 obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
+obj-y += dma.o
 
 obj-$(CONFIG_CPU_MIPS32) += c-r4k.o
 obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 01b8665..ff81141 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -10,10 +10,99 @@
 #include <common.h>
 #include <asm/io.h>
 #include <asm/mipsregs.h>
+#include <asm/cache.h>
+#include <asm/cacheops.h>
 #include <asm/cpu.h>
 #include <asm/cpu-info.h>
 #include <asm/bitops.h>
 
+#define cache_op(op,addr)						\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noreorder				\n"	\
+	"	.set	mips3\n\t				\n"	\
+	"	cache	%0, %1					\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "i" (op), "R" (*(unsigned char *)(addr)))
+
+void flush_cache_all(void)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+	unsigned long lsize;
+	unsigned long addr;
+	unsigned long aend;
+	unsigned int icache_size, dcache_size;
+
+	dcache_size = c->dcache.waysize * c->dcache.ways;
+	lsize = c->dcache.linesz;
+	aend = (KSEG0 + dcache_size - 1) & ~(lsize - 1);
+	for (addr = KSEG0; addr <= aend; addr += lsize) {
+		cache_op(Index_Writeback_Inv_D, addr);
+	}
+
+	icache_size = c->icache.waysize * c->icache.ways;
+	lsize = c->icache.linesz;
+	aend = (KSEG0 + icache_size - 1) & ~(lsize - 1);
+	for (addr = KSEG0; addr <= aend; addr += lsize) {
+		cache_op(Index_Invalidate_I, addr);
+	}
+
+	/* secondatory cache skipped */
+}
+
+void flush_dcache_all(void)
+{
+	flush_cache_all();
+}
+
+void flush_icache_all(void)
+{
+	flush_cache_all();
+}
+
+void dma_clean_range(unsigned long start, unsigned long end)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+	unsigned long lsize = c->dcache.linesz;
+	unsigned long addr = start & ~(lsize - 1);
+	unsigned long aend = (end - 1) & ~(lsize - 1);
+
+	for (; addr <= aend; addr += lsize)
+		cache_op(Hit_Invalidate_D, addr);
+
+	/* secondatory cache skipped */
+}
+
+void dma_flush_range(unsigned long start, unsigned long end)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+	unsigned long lsize = c->dcache.linesz;
+	unsigned long addr = start & ~(lsize - 1);
+	unsigned long aend = (end - 1) & ~(lsize - 1);
+
+	for (; addr <= aend; addr += lsize) {
+		cache_op(Hit_Writeback_Inv_D, addr);
+	}
+
+	/* secondatory cache skipped */
+}
+
+/*
+ *	r4k_dma_inv_range(start,end)
+ *
+ *	Invalidate the data cache within the specified region; we will
+ *	be performing a DMA operation in this region and we want to
+ *	purge old data in the cache.
+ *
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+void dma_inv_range(unsigned long start, unsigned long end)
+{
+	dma_clean_range(start, end);
+}
+
 void r4k_cache_init(void);
 
 static void probe_pcache(void)
diff --git a/arch/mips/lib/dma.c b/arch/mips/lib/dma.c
new file mode 100644
index 0000000..845ffe8
--- /dev/null
+++ b/arch/mips/lib/dma.c
@@ -0,0 +1,27 @@
+#include <common.h>
+#include <asm/io.h>
+#include <asm/mipsregs.h>
+#include <malloc.h>
+
+static inline void __iomem *ioremap_nocache(phys_t offset, unsigned long size)
+{
+	return (void __iomem *) (unsigned long)CKSEG1ADDR(offset);
+}
+
+void *dma_alloc_coherent(size_t size)
+{
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+
+	ret = ioremap_nocache((phys_t)ret, size);
+
+	return ret;
+}
+
+void dma_free_coherent(void *mem, size_t size)
+{
+	free(mem);
+}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
