Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f175.google.com ([209.85.217.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfpYF-0003jX-4w
 for barebox@lists.infradead.org; Fri, 24 May 2013 10:48:50 +0000
Received: by mail-lb0-f175.google.com with SMTP id v10so4510524lbd.34
 for <barebox@lists.infradead.org>; Fri, 24 May 2013 03:48:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 24 May 2013 14:47:25 +0400
Message-Id: <1369392445-30230-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC, EXPERIMENTAL] MIPS: add initial cache support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/cache.h    |    8 +
 arch/mips/include/asm/cacheops.h |   78 +++++++
 arch/mips/include/asm/cpu-info.h |    1 +
 arch/mips/include/asm/io.h       |   66 ++++++
 arch/mips/include/asm/r4kcache.h |  443 ++++++++++++++++++++++++++++++++++++++
 arch/mips/lib/Makefile           |    1 +
 arch/mips/lib/c-r4k.c            |   97 +++++++++
 arch/mips/lib/dma.c              |   27 +++
 include/linux/const.h            |   24 +++
 9 files changed, 745 insertions(+)
 create mode 100644 arch/mips/include/asm/cache.h
 create mode 100644 arch/mips/include/asm/cacheops.h
 create mode 100644 arch/mips/include/asm/r4kcache.h
 create mode 100644 arch/mips/lib/dma.c
 create mode 100644 include/linux/const.h

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
index 0000000..1851b25
--- /dev/null
+++ b/arch/mips/include/asm/cacheops.h
@@ -0,0 +1,78 @@
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
+/*
+ * R4000-specific cacheops
+ */
+#define Create_Dirty_Excl_D	0x0d
+#define Fill			0x14
+#define Hit_Writeback_I		0x18
+#define Hit_Writeback_D		0x19
+
+/*
+ * R4000SC and R4400SC-specific cacheops
+ */
+#define Index_Invalidate_SI     0x02
+#define Index_Writeback_Inv_SD  0x03
+#define Index_Load_Tag_SI	0x06
+#define Index_Load_Tag_SD	0x07
+#define Index_Store_Tag_SI	0x0A
+#define Index_Store_Tag_SD	0x0B
+#define Create_Dirty_Excl_SD	0x0f
+#define Hit_Invalidate_SI	0x12
+#define Hit_Invalidate_SD	0x13
+#define Hit_Writeback_Inv_SD	0x17
+#define Hit_Writeback_SD	0x1b
+#define Hit_Set_Virtual_SI	0x1e
+#define Hit_Set_Virtual_SD	0x1f
+
+/*
+ * RM7000-specific cacheops
+ */
+#define Page_Invalidate_T	0x16
+#define Index_Store_Tag_T	0x0a
+#define Index_Load_Tag_T	0x06
+
+/*
+ * R10000-specific cacheops
+ *
+ * Cacheops 0x02, 0x06, 0x0a, 0x0c-0x0e, 0x16, 0x1a and 0x1e are unused.
+ * Most of the _S cacheops are identical to the R4000SC _SD cacheops.
+ */
+#define Index_Writeback_Inv_S	0x03
+#define Index_Load_Tag_S	0x07
+#define Index_Store_Tag_S	0x0B
+#define Hit_Invalidate_S	0x13
+#define Cache_Barrier		0x14
+#define Hit_Writeback_Inv_S	0x17
+#define Index_Load_Data_I	0x18
+#define Index_Load_Data_D	0x19
+#define Index_Load_Data_S	0x1b
+#define Index_Store_Data_I	0x1c
+#define Index_Store_Data_D	0x1d
+#define Index_Store_Data_S	0x1f
+
+#endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/include/asm/cpu-info.h b/arch/mips/include/asm/cpu-info.h
index 6701730..cc1a3eb 100644
--- a/arch/mips/include/asm/cpu-info.h
+++ b/arch/mips/include/asm/cpu-info.h
@@ -13,6 +13,7 @@
 #define __ASM_CPU_INFO_H
 
 #include <linux/types.h>
+#include <asm/cache.h>
 
 /*
  * Descriptor for a cache
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4100e1e..9d5246b 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -12,7 +12,73 @@
 
 #include <linux/compiler.h>
 #include <asm/types.h>
+#include <asm/addrspace.h>
 #include <asm/byteorder.h>
+#include <linux/const.h>
+
+void *dma_alloc_coherent(size_t size);
+void dma_free_coherent(void *mem, size_t size);
+
+void dma_clean_range(unsigned long, unsigned long);
+void dma_flush_range(unsigned long, unsigned long);
+void dma_inv_range(unsigned long, unsigned long);
+
+#ifdef CONFIG_32BIT
+#define CAC_BASE		_AC(0x80000000, UL)
+#define UNCAC_BASE		_AC(0xa0000000, UL)
+#endif
+
+/*
+ * This gives the physical RAM offset.
+ */
+#ifndef PHYS_OFFSET
+#define PHYS_OFFSET		_AC(0, UL)
+#endif
+
+/*
+ * This handles the memory map.
+ */
+#ifndef PAGE_OFFSET
+#define PAGE_OFFSET		(CAC_BASE + PHYS_OFFSET)
+#endif
+
+#define UNCAC_ADDR(addr)	((addr) - PAGE_OFFSET + UNCAC_BASE + 	\
+								PHYS_OFFSET)
+#define CAC_ADDR(addr)		((addr) - UNCAC_BASE + PAGE_OFFSET -	\
+								PHYS_OFFSET)
+/*
+ *     virt_to_phys    -       map virtual addresses to physical
+ *     @address: address to remap
+ *
+ *     The returned physical address is the physical (CPU) mapping for
+ *     the memory address given. It is only valid to use this function on
+ *     addresses directly mapped or allocated via kmalloc.
+ *
+ *     This function does not give bus mappings for DMA transfers. In
+ *     almost all conceivable cases a device driver should not be using
+ *     this function
+ */
+static inline unsigned long virt_to_phys(volatile const void *address)
+{
+	return (unsigned long)address - PAGE_OFFSET + PHYS_OFFSET;
+}
+
+/*
+ *     phys_to_virt    -       map physical address to virtual
+ *     @address: address to remap
+ *
+ *     The returned virtual address is a current CPU mapping for
+ *     the memory address given. It is only valid to use this function on
+ *     addresses that have a kernel mapping
+ *
+ *     This function does not handle bus mappings for DMA transfers. In
+ *     almost all conceivable cases a device driver should not be using
+ *     this function
+ */
+static inline void * phys_to_virt(unsigned long address)
+{
+	return (void *)(address + PAGE_OFFSET - PHYS_OFFSET);
+}
 
 /*****************************************************************************/
 /*
diff --git a/arch/mips/include/asm/r4kcache.h b/arch/mips/include/asm/r4kcache.h
new file mode 100644
index 0000000..3b31e65
--- /dev/null
+++ b/arch/mips/include/asm/r4kcache.h
@@ -0,0 +1,443 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Inline assembly cache operations.
+ *
+ * Copyright (C) 1996 David S. Miller (davem@davemloft.net)
+ * Copyright (C) 1997 - 2002 Ralf Baechle (ralf@gnu.org)
+ * Copyright (C) 2004 Ralf Baechle (ralf@linux-mips.org)
+ */
+#ifndef _ASM_R4KCACHE_H
+#define _ASM_R4KCACHE_H
+
+#include <asm/asm.h>
+#include <asm/cacheops.h>
+#include <asm/cpu-features.h>
+
+/*
+ * This macro return a properly sign-extended address suitable as base address
+ * for indexed cache operations.  Two issues here:
+ *
+ *  - The MIPS32 and MIPS64 specs permit an implementation to directly derive
+ *    the index bits from the virtual address.  This breaks with tradition
+ *    set by the R4000.  To keep unpleasant surprises from happening we pick
+ *    an address in KSEG0 / CKSEG0.
+ *  - We need a properly sign extended address for 64-bit code.  To get away
+ *    without ifdefs we let the compiler do it by a type cast.
+ */
+#define INDEX_BASE	CKSEG0
+
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
+#ifdef CONFIG_MIPS_MT
+/*
+ * Temporary hacks for SMTC debug. Optionally force single-threaded
+ * execution during I-cache flushes.
+ */
+
+#define PROTECT_CACHE_FLUSHES 1
+
+#ifdef PROTECT_CACHE_FLUSHES
+
+extern int mt_protiflush;
+extern int mt_protdflush;
+extern void mt_cflush_lockdown(void);
+extern void mt_cflush_release(void);
+
+#define BEGIN_MT_IPROT \
+	unsigned long flags = 0;			\
+	unsigned long mtflags = 0;			\
+	if(mt_protiflush) {				\
+		local_irq_save(flags);			\
+		ehb();					\
+		mtflags = dvpe();			\
+		mt_cflush_lockdown();			\
+	}
+
+#define END_MT_IPROT \
+	if(mt_protiflush) {				\
+		mt_cflush_release();			\
+		evpe(mtflags);				\
+		local_irq_restore(flags);		\
+	}
+
+#define BEGIN_MT_DPROT \
+	unsigned long flags = 0;			\
+	unsigned long mtflags = 0;			\
+	if(mt_protdflush) {				\
+		local_irq_save(flags);			\
+		ehb();					\
+		mtflags = dvpe();			\
+		mt_cflush_lockdown();			\
+	}
+
+#define END_MT_DPROT \
+	if(mt_protdflush) {				\
+		mt_cflush_release();			\
+		evpe(mtflags);				\
+		local_irq_restore(flags);		\
+	}
+
+#else
+
+#define BEGIN_MT_IPROT
+#define BEGIN_MT_DPROT
+#define END_MT_IPROT
+#define END_MT_DPROT
+
+#endif /* PROTECT_CACHE_FLUSHES */
+
+#define __iflush_prologue						\
+	unsigned long redundance;					\
+	extern int mt_n_iflushes;					\
+	BEGIN_MT_IPROT							\
+	for (redundance = 0; redundance < mt_n_iflushes; redundance++) {
+
+#define __iflush_epilogue						\
+	END_MT_IPROT							\
+	}
+
+#define __dflush_prologue						\
+	unsigned long redundance;					\
+	extern int mt_n_dflushes;					\
+	BEGIN_MT_DPROT							\
+	for (redundance = 0; redundance < mt_n_dflushes; redundance++) {
+
+#define __dflush_epilogue \
+	END_MT_DPROT	 \
+	}
+
+#define __inv_dflush_prologue __dflush_prologue
+#define __inv_dflush_epilogue __dflush_epilogue
+#define __sflush_prologue {
+#define __sflush_epilogue }
+#define __inv_sflush_prologue __sflush_prologue
+#define __inv_sflush_epilogue __sflush_epilogue
+
+#else /* CONFIG_MIPS_MT */
+
+#define __iflush_prologue {
+#define __iflush_epilogue }
+#define __dflush_prologue {
+#define __dflush_epilogue }
+#define __inv_dflush_prologue {
+#define __inv_dflush_epilogue }
+#define __sflush_prologue {
+#define __sflush_epilogue }
+#define __inv_sflush_prologue {
+#define __inv_sflush_epilogue }
+
+#endif /* CONFIG_MIPS_MT */
+
+static inline void flush_icache_line_indexed(unsigned long addr)
+{
+	__iflush_prologue
+	cache_op(Index_Invalidate_I, addr);
+	__iflush_epilogue
+}
+
+static inline void flush_dcache_line_indexed(unsigned long addr)
+{
+	__dflush_prologue
+	cache_op(Index_Writeback_Inv_D, addr);
+	__dflush_epilogue
+}
+
+static inline void flush_scache_line_indexed(unsigned long addr)
+{
+	cache_op(Index_Writeback_Inv_SD, addr);
+}
+
+static inline void flush_icache_line(unsigned long addr)
+{
+	__iflush_prologue
+	cache_op(Hit_Invalidate_I, addr);
+	__iflush_epilogue
+}
+
+static inline void flush_dcache_line(unsigned long addr)
+{
+	__dflush_prologue
+	cache_op(Hit_Writeback_Inv_D, addr);
+	__dflush_epilogue
+}
+
+static inline void invalidate_dcache_line(unsigned long addr)
+{
+	__dflush_prologue
+	cache_op(Hit_Invalidate_D, addr);
+	__dflush_epilogue
+}
+
+static inline void invalidate_scache_line(unsigned long addr)
+{
+	cache_op(Hit_Invalidate_SD, addr);
+}
+
+static inline void flush_scache_line(unsigned long addr)
+{
+	cache_op(Hit_Writeback_Inv_SD, addr);
+}
+
+#define protected_cache_op(op,addr)				\
+	__asm__ __volatile__(					\
+	"	.set	push			\n"		\
+	"	.set	noreorder		\n"		\
+	"	.set	mips3			\n"		\
+	"1:	cache	%0, (%1)		\n"		\
+	"2:	.set	pop			\n"		\
+	"	.section __ex_table,\"a\"	\n"		\
+	"	"STR(PTR)" 1b, 2b		\n"		\
+	"	.previous"					\
+	:							\
+	: "i" (op), "r" (addr))
+
+/*
+ * The next two are for badland addresses like signal trampolines.
+ */
+static inline void protected_flush_icache_line(unsigned long addr)
+{
+	protected_cache_op(Hit_Invalidate_I, addr);
+}
+
+/*
+ * R10000 / R12000 hazard - these processors don't support the Hit_Writeback_D
+ * cacheop so we use Hit_Writeback_Inv_D which is supported by all R4000-style
+ * caches.  We're talking about one cacheline unnecessarily getting invalidated
+ * here so the penalty isn't overly hard.
+ */
+static inline void protected_writeback_dcache_line(unsigned long addr)
+{
+	protected_cache_op(Hit_Writeback_Inv_D, addr);
+}
+
+static inline void protected_writeback_scache_line(unsigned long addr)
+{
+	protected_cache_op(Hit_Writeback_Inv_SD, addr);
+}
+
+/*
+ * This one is RM7000-specific
+ */
+static inline void invalidate_tcache_page(unsigned long addr)
+{
+	cache_op(Page_Invalidate_T, addr);
+}
+
+#define cache16_unroll32(base,op)					\
+	__asm__ __volatile__(						\
+	"	.set push					\n"	\
+	"	.set noreorder					\n"	\
+	"	.set mips3					\n"	\
+	"	cache %1, 0x000(%0); cache %1, 0x010(%0)	\n"	\
+	"	cache %1, 0x020(%0); cache %1, 0x030(%0)	\n"	\
+	"	cache %1, 0x040(%0); cache %1, 0x050(%0)	\n"	\
+	"	cache %1, 0x060(%0); cache %1, 0x070(%0)	\n"	\
+	"	cache %1, 0x080(%0); cache %1, 0x090(%0)	\n"	\
+	"	cache %1, 0x0a0(%0); cache %1, 0x0b0(%0)	\n"	\
+	"	cache %1, 0x0c0(%0); cache %1, 0x0d0(%0)	\n"	\
+	"	cache %1, 0x0e0(%0); cache %1, 0x0f0(%0)	\n"	\
+	"	cache %1, 0x100(%0); cache %1, 0x110(%0)	\n"	\
+	"	cache %1, 0x120(%0); cache %1, 0x130(%0)	\n"	\
+	"	cache %1, 0x140(%0); cache %1, 0x150(%0)	\n"	\
+	"	cache %1, 0x160(%0); cache %1, 0x170(%0)	\n"	\
+	"	cache %1, 0x180(%0); cache %1, 0x190(%0)	\n"	\
+	"	cache %1, 0x1a0(%0); cache %1, 0x1b0(%0)	\n"	\
+	"	cache %1, 0x1c0(%0); cache %1, 0x1d0(%0)	\n"	\
+	"	cache %1, 0x1e0(%0); cache %1, 0x1f0(%0)	\n"	\
+	"	.set pop					\n"	\
+		:							\
+		: "r" (base),						\
+		  "i" (op));
+
+#define cache32_unroll32(base,op)					\
+	__asm__ __volatile__(						\
+	"	.set push					\n"	\
+	"	.set noreorder					\n"	\
+	"	.set mips3					\n"	\
+	"	cache %1, 0x000(%0); cache %1, 0x020(%0)	\n"	\
+	"	cache %1, 0x040(%0); cache %1, 0x060(%0)	\n"	\
+	"	cache %1, 0x080(%0); cache %1, 0x0a0(%0)	\n"	\
+	"	cache %1, 0x0c0(%0); cache %1, 0x0e0(%0)	\n"	\
+	"	cache %1, 0x100(%0); cache %1, 0x120(%0)	\n"	\
+	"	cache %1, 0x140(%0); cache %1, 0x160(%0)	\n"	\
+	"	cache %1, 0x180(%0); cache %1, 0x1a0(%0)	\n"	\
+	"	cache %1, 0x1c0(%0); cache %1, 0x1e0(%0)	\n"	\
+	"	cache %1, 0x200(%0); cache %1, 0x220(%0)	\n"	\
+	"	cache %1, 0x240(%0); cache %1, 0x260(%0)	\n"	\
+	"	cache %1, 0x280(%0); cache %1, 0x2a0(%0)	\n"	\
+	"	cache %1, 0x2c0(%0); cache %1, 0x2e0(%0)	\n"	\
+	"	cache %1, 0x300(%0); cache %1, 0x320(%0)	\n"	\
+	"	cache %1, 0x340(%0); cache %1, 0x360(%0)	\n"	\
+	"	cache %1, 0x380(%0); cache %1, 0x3a0(%0)	\n"	\
+	"	cache %1, 0x3c0(%0); cache %1, 0x3e0(%0)	\n"	\
+	"	.set pop					\n"	\
+		:							\
+		: "r" (base),						\
+		  "i" (op));
+
+#define cache64_unroll32(base,op)					\
+	__asm__ __volatile__(						\
+	"	.set push					\n"	\
+	"	.set noreorder					\n"	\
+	"	.set mips3					\n"	\
+	"	cache %1, 0x000(%0); cache %1, 0x040(%0)	\n"	\
+	"	cache %1, 0x080(%0); cache %1, 0x0c0(%0)	\n"	\
+	"	cache %1, 0x100(%0); cache %1, 0x140(%0)	\n"	\
+	"	cache %1, 0x180(%0); cache %1, 0x1c0(%0)	\n"	\
+	"	cache %1, 0x200(%0); cache %1, 0x240(%0)	\n"	\
+	"	cache %1, 0x280(%0); cache %1, 0x2c0(%0)	\n"	\
+	"	cache %1, 0x300(%0); cache %1, 0x340(%0)	\n"	\
+	"	cache %1, 0x380(%0); cache %1, 0x3c0(%0)	\n"	\
+	"	cache %1, 0x400(%0); cache %1, 0x440(%0)	\n"	\
+	"	cache %1, 0x480(%0); cache %1, 0x4c0(%0)	\n"	\
+	"	cache %1, 0x500(%0); cache %1, 0x540(%0)	\n"	\
+	"	cache %1, 0x580(%0); cache %1, 0x5c0(%0)	\n"	\
+	"	cache %1, 0x600(%0); cache %1, 0x640(%0)	\n"	\
+	"	cache %1, 0x680(%0); cache %1, 0x6c0(%0)	\n"	\
+	"	cache %1, 0x700(%0); cache %1, 0x740(%0)	\n"	\
+	"	cache %1, 0x780(%0); cache %1, 0x7c0(%0)	\n"	\
+	"	.set pop					\n"	\
+		:							\
+		: "r" (base),						\
+		  "i" (op));
+
+#define cache128_unroll32(base,op)					\
+	__asm__ __volatile__(						\
+	"	.set push					\n"	\
+	"	.set noreorder					\n"	\
+	"	.set mips3					\n"	\
+	"	cache %1, 0x000(%0); cache %1, 0x080(%0)	\n"	\
+	"	cache %1, 0x100(%0); cache %1, 0x180(%0)	\n"	\
+	"	cache %1, 0x200(%0); cache %1, 0x280(%0)	\n"	\
+	"	cache %1, 0x300(%0); cache %1, 0x380(%0)	\n"	\
+	"	cache %1, 0x400(%0); cache %1, 0x480(%0)	\n"	\
+	"	cache %1, 0x500(%0); cache %1, 0x580(%0)	\n"	\
+	"	cache %1, 0x600(%0); cache %1, 0x680(%0)	\n"	\
+	"	cache %1, 0x700(%0); cache %1, 0x780(%0)	\n"	\
+	"	cache %1, 0x800(%0); cache %1, 0x880(%0)	\n"	\
+	"	cache %1, 0x900(%0); cache %1, 0x980(%0)	\n"	\
+	"	cache %1, 0xa00(%0); cache %1, 0xa80(%0)	\n"	\
+	"	cache %1, 0xb00(%0); cache %1, 0xb80(%0)	\n"	\
+	"	cache %1, 0xc00(%0); cache %1, 0xc80(%0)	\n"	\
+	"	cache %1, 0xd00(%0); cache %1, 0xd80(%0)	\n"	\
+	"	cache %1, 0xe00(%0); cache %1, 0xe80(%0)	\n"	\
+	"	cache %1, 0xf00(%0); cache %1, 0xf80(%0)	\n"	\
+	"	.set pop					\n"	\
+		:							\
+		: "r" (base),						\
+		  "i" (op));
+
+/* build blast_xxx, blast_xxx_page, blast_xxx_page_indexed */
+#define __BUILD_BLAST_CACHE(pfx, desc, indexop, hitop, lsize) \
+static inline void blast_##pfx##cache##lsize(void)			\
+{									\
+	unsigned long start = INDEX_BASE;				\
+	unsigned long end = start + current_cpu_data.desc.waysize;	\
+	unsigned long ws_inc = 1UL << current_cpu_data.desc.waybit;	\
+	unsigned long ws_end = current_cpu_data.desc.ways <<		\
+	                       current_cpu_data.desc.waybit;		\
+	unsigned long ws, addr;						\
+									\
+	__##pfx##flush_prologue						\
+									\
+	for (ws = 0; ws < ws_end; ws += ws_inc)				\
+		for (addr = start; addr < end; addr += lsize * 32)	\
+			cache##lsize##_unroll32(addr|ws, indexop);	\
+									\
+	__##pfx##flush_epilogue						\
+}									\
+									\
+static inline void blast_##pfx##cache##lsize##_page(unsigned long page)	\
+{									\
+	unsigned long start = page;					\
+	unsigned long end = page + PAGE_SIZE;				\
+									\
+	__##pfx##flush_prologue						\
+									\
+	do {								\
+		cache##lsize##_unroll32(start, hitop);			\
+		start += lsize * 32;					\
+	} while (start < end);						\
+									\
+	__##pfx##flush_epilogue						\
+}									\
+									\
+static inline void blast_##pfx##cache##lsize##_page_indexed(unsigned long page) \
+{									\
+	unsigned long indexmask = current_cpu_data.desc.waysize - 1;	\
+	unsigned long start = INDEX_BASE + (page & indexmask);		\
+	unsigned long end = start + PAGE_SIZE;				\
+	unsigned long ws_inc = 1UL << current_cpu_data.desc.waybit;	\
+	unsigned long ws_end = current_cpu_data.desc.ways <<		\
+	                       current_cpu_data.desc.waybit;		\
+	unsigned long ws, addr;						\
+									\
+	__##pfx##flush_prologue						\
+									\
+	for (ws = 0; ws < ws_end; ws += ws_inc)				\
+		for (addr = start; addr < end; addr += lsize * 32)	\
+			cache##lsize##_unroll32(addr|ws, indexop);	\
+									\
+	__##pfx##flush_epilogue						\
+}
+
+__BUILD_BLAST_CACHE(d, dcache, Index_Writeback_Inv_D, Hit_Writeback_Inv_D, 16)
+__BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I, Hit_Invalidate_I, 16)
+__BUILD_BLAST_CACHE(s, scache, Index_Writeback_Inv_SD, Hit_Writeback_Inv_SD, 16)
+__BUILD_BLAST_CACHE(d, dcache, Index_Writeback_Inv_D, Hit_Writeback_Inv_D, 32)
+__BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I, Hit_Invalidate_I, 32)
+__BUILD_BLAST_CACHE(s, scache, Index_Writeback_Inv_SD, Hit_Writeback_Inv_SD, 32)
+__BUILD_BLAST_CACHE(d, dcache, Index_Writeback_Inv_D, Hit_Writeback_Inv_D, 64)
+__BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I, Hit_Invalidate_I, 64)
+__BUILD_BLAST_CACHE(s, scache, Index_Writeback_Inv_SD, Hit_Writeback_Inv_SD, 64)
+__BUILD_BLAST_CACHE(s, scache, Index_Writeback_Inv_SD, Hit_Writeback_Inv_SD, 128)
+
+__BUILD_BLAST_CACHE(inv_d, dcache, Index_Writeback_Inv_D, Hit_Invalidate_D, 16)
+__BUILD_BLAST_CACHE(inv_d, dcache, Index_Writeback_Inv_D, Hit_Invalidate_D, 32)
+__BUILD_BLAST_CACHE(inv_s, scache, Index_Writeback_Inv_SD, Hit_Invalidate_SD, 16)
+__BUILD_BLAST_CACHE(inv_s, scache, Index_Writeback_Inv_SD, Hit_Invalidate_SD, 32)
+__BUILD_BLAST_CACHE(inv_s, scache, Index_Writeback_Inv_SD, Hit_Invalidate_SD, 64)
+__BUILD_BLAST_CACHE(inv_s, scache, Index_Writeback_Inv_SD, Hit_Invalidate_SD, 128)
+
+/* build blast_xxx_range, protected_blast_xxx_range */
+#define __BUILD_BLAST_CACHE_RANGE(pfx, desc, hitop, prot) \
+static inline void prot##blast_##pfx##cache##_range(unsigned long start, \
+						    unsigned long end)	\
+{									\
+	unsigned long lsize = cpu_##desc##_line_size();			\
+	unsigned long addr = start & ~(lsize - 1);			\
+	unsigned long aend = (end - 1) & ~(lsize - 1);			\
+									\
+	__##pfx##flush_prologue						\
+									\
+	while (1) {							\
+		prot##cache_op(hitop, addr);				\
+		if (addr == aend)					\
+			break;						\
+		addr += lsize;						\
+	}								\
+									\
+	__##pfx##flush_epilogue						\
+}
+
+__BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D, protected_)
+__BUILD_BLAST_CACHE_RANGE(s, scache, Hit_Writeback_Inv_SD, protected_)
+__BUILD_BLAST_CACHE_RANGE(i, icache, Hit_Invalidate_I, protected_)
+__BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D, )
+__BUILD_BLAST_CACHE_RANGE(s, scache, Hit_Writeback_Inv_SD, )
+/* blast_inv_dcache_range */
+__BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D, )
+__BUILD_BLAST_CACHE_RANGE(inv_s, scache, Hit_Invalidate_SD, )
+
+#endif /* _ASM_R4KCACHE_H */
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
index 01b8665..9e1e73d 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -10,9 +10,106 @@
 #include <common.h>
 #include <asm/io.h>
 #include <asm/mipsregs.h>
+#include <asm/cache.h>
 #include <asm/cpu.h>
 #include <asm/cpu-info.h>
 #include <asm/bitops.h>
+#include <asm/r4kcache.h>
+
+/*
+
+Linux                      Barebox
+_dma_cache_wback_inv    => dma_flush_range
+_dma_cache_wback        => dma_clean_range
+_dma_cache_inv          => dma_inv_range
+*/
+
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
 
 void r4k_cache_init(void);
 
diff --git a/arch/mips/lib/dma.c b/arch/mips/lib/dma.c
new file mode 100644
index 0000000..0ca53f1
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
+	ret = xmemalign(4096, size);
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
diff --git a/include/linux/const.h b/include/linux/const.h
new file mode 100644
index 0000000..c22c707
--- /dev/null
+++ b/include/linux/const.h
@@ -0,0 +1,24 @@
+/* const.h: Macros for dealing with constants.  */
+
+#ifndef _LINUX_CONST_H
+#define _LINUX_CONST_H
+
+/* Some constant macros are used in both assembler and
+ * C code.  Therefore we cannot annotate them always with
+ * 'UL' and other type specifiers unilaterally.  We
+ * use the following macros to deal with this.
+ *
+ * Similarly, _AT() will cast an expression with a type in C, but
+ * leave it unchanged in asm.
+ */
+
+#ifdef __ASSEMBLY__
+#define _AC(X,Y)	X
+#define _AT(T,X)	X
+#else
+#define __AC(X,Y)	(X##Y)
+#define _AC(X,Y)	__AC(X,Y)
+#define _AT(T,X)	((T)(X))
+#endif
+
+#endif /* !(_LINUX_CONST_H) */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
