Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005q6-0d
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:21 +0100
Message-Id: <1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] cache functions from kernel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile      |    6 +-
 arch/arm/cpu/cache-armv4.S |  137 ++++++++++++++++++++++++++++++++
 arch/arm/cpu/cache-armv6.S |  131 +++++++++++++++++++++++++++++++
 arch/arm/cpu/cache-armv7.S |  185 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu.c         |   29 ++------
 5 files changed, 463 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv4.S
 create mode 100644 arch/arm/cpu/cache-armv6.S
 create mode 100644 arch/arm/cpu/cache-armv7.S

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 538ab57..2273e45 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -11,5 +11,7 @@ obj-$(CONFIG_ARCH_IMX31) += start-arm.o
 obj-$(CONFIG_ARCH_IMX35) += start-arm.o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
-obj-$(CONFIG_MMU) += cache.o
-
+obj-$(CONFIG_CPU_32v4T)	+= cache-armv4.o
+obj-$(CONFIG_CPU_32v5)	+= cache-armv4.o
+obj-$(CONFIG_CPU_32v6)	+= cache-armv6.o
+obj-$(CONFIG_CPU_32v7)	+= cache-armv7.o
diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
new file mode 100644
index 0000000..a0ab256
--- /dev/null
+++ b/arch/arm/cpu/cache-armv4.S
@@ -0,0 +1,137 @@
+#include <linux/linkage.h>
+
+#define CACHE_DLINESIZE 32
+
+ENTRY(__mmu_cache_on)
+		mov	r12, lr
+#ifdef CONFIG_MMU
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c10, 4	@ drain write buffer
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
+		orr	r0, r0, #0x5000		@ I-cache enable, RR cache replacement
+		orr	r0, r0, #0x0030
+#ifdef CONFIG_CPU_ENDIAN_BE8
+		orr	r0, r0, #1 << 25	@ big-endian page tables
+#endif
+		bl	__common_mmu_cache_on
+		mov	r0, #0
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+#endif
+		mov	pc, r12
+ENDPROC(__mmu_cache_on)
+
+__common_mmu_cache_on:
+		orr	r0, r0, #0x000d		@ Write buffer, mmu
+		b	1f
+		.align	5			@ cache line aligned
+1:		mcr	p15, 0, r0, c1, c0, 0	@ load control register
+		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
+		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
+
+ENTRY(__mmu_cache_off)
+#ifdef CONFIG_MMU
+		mrc	p15, 0, r0, c1, c0
+		bic	r0, r0, #0x000d
+		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
+		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
+#endif
+		mov	pc, lr
+ENDPROC(__mmu_cache_off)
+
+ENTRY(__mmu_cache_flush)
+		mrc	p15, 0, r6, c0, c0	@ get processor ID
+		mov	r2, #64*1024		@ default: 32K dcache size (*2)
+		mov	r11, #32		@ default: 32 byte line size
+		mrc	p15, 0, r3, c0, c0, 1	@ read cache type
+		teq	r3, r6			@ cache ID register present?
+		beq	no_cache_id
+		mov	r1, r3, lsr #18
+		and	r1, r1, #7
+		mov	r2, #1024
+		mov	r2, r2, lsl r1		@ base dcache size *2
+		tst	r3, #1 << 14		@ test M bit
+		addne	r2, r2, r2, lsr #1	@ +1/2 size if M == 1
+		mov	r3, r3, lsr #12
+		and	r3, r3, #3
+		mov	r11, #8
+		mov	r11, r11, lsl r3	@ cache line size in bytes
+no_cache_id:
+		mov	r1, pc
+		bic	r1, r1, #63		@ align to longest cache line
+		add	r2, r1, r2
+1:
+		ldr	r3, [r1], r11		@ s/w flush D cache
+		teq	r1, r2
+		bne	1b
+
+		mcr	p15, 0, r1, c7, c5, 0	@ flush I cache
+		mcr	p15, 0, r1, c7, c6, 0	@ flush D cache
+		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
+		mov	pc, lr
+ENDPROC(__mmu_cache_flush)
+
+/*
+ *	dma_inv_range(start, end)
+ *
+ *	Invalidate (discard) the specified virtual address range.
+ *	May not write back any entries.  If 'start' or 'end'
+ *	are not cache line aligned, those lines must be written
+ *	back.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ *
+ * (same as v4wb)
+ */
+ENTRY(dma_inv_range)
+	tst	r0, #CACHE_DLINESIZE - 1
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
+	tst	r1, #CACHE_DLINESIZE - 1
+	mcrne	p15, 0, r1, c7, c10, 1		@ clean D entry
+1:	mcr	p15, 0, r0, c7, c6, 1		@ invalidate D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
+/*
+ *	dma_clean_range(start, end)
+ *
+ *	Clean the specified virtual address range.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ *
+ * (same as v4wb)
+ */
+ENTRY(dma_clean_range)
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
+/*
+ *	dma_flush_range(start, end)
+ *
+ *	Clean and invalidate the specified virtual address range.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ */
+ENTRY(dma_flush_range)
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
new file mode 100644
index 0000000..ceabd52
--- /dev/null
+++ b/arch/arm/cpu/cache-armv6.S
@@ -0,0 +1,131 @@
+#include <linux/linkage.h>
+
+#define HARVARD_CACHE
+#define CACHE_LINE_SIZE		32
+#define D_CACHE_LINE_SIZE	32
+
+ENTRY(__mmu_cache_on)
+		mov	r12, lr
+#ifdef CONFIG_MMU
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c10, 4	@ drain write buffer
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
+		orr	r0, r0, #0x5000		@ I-cache enable, RR cache replacement
+		orr	r0, r0, #0x0030
+#ifdef CONFIG_CPU_ENDIAN_BE8
+		orr	r0, r0, #1 << 25	@ big-endian page tables
+#endif
+		bl	__common_mmu_cache_on
+		mov	r0, #0
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+#endif
+		mov	pc, r12
+ENDPROC(__mmu_cache_on)
+
+__common_mmu_cache_on:
+		orr	r0, r0, #0x000d		@ Write buffer, mmu
+		b	1f
+		.align	5			@ cache line aligned
+1:		mcr	p15, 0, r0, c1, c0, 0	@ load control register
+		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
+		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
+
+ENTRY(__mmu_cache_off)
+#ifdef CONFIG_MMU
+		mrc	p15, 0, r0, c1, c0
+		bic	r0, r0, #0x000d
+		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
+		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
+#endif
+		mov	pc, lr
+
+ENTRY(__mmu_cache_flush)
+		mov	r1, #0
+		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
+		mcr	p15, 0, r1, c7, c5, 0	@ invalidate I+BTB
+		mcr	p15, 0, r1, c7, c15, 0	@ clean+invalidate unified
+		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
+		mov	pc, lr
+ENDPROC(__mmu_cache_flush)
+
+/*
+ *	v6_dma_inv_range(start,end)
+ *
+ *	Invalidate the data cache within the specified region; we will
+ *	be performing a DMA operation in this region and we want to
+ *	purge old data in the cache.
+ *
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_inv_range)
+	tst	r0, #D_CACHE_LINE_SIZE - 1
+	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
+#ifdef HARVARD_CACHE
+	mcrne	p15, 0, r0, c7, c10, 1		@ clean D line
+#else
+	mcrne	p15, 0, r0, c7, c11, 1		@ clean unified line
+#endif
+	tst	r1, #D_CACHE_LINE_SIZE - 1
+	bic	r1, r1, #D_CACHE_LINE_SIZE - 1
+#ifdef HARVARD_CACHE
+	mcrne	p15, 0, r1, c7, c14, 1		@ clean & invalidate D line
+#else
+	mcrne	p15, 0, r1, c7, c15, 1		@ clean & invalidate unified line
+#endif
+1:
+#ifdef HARVARD_CACHE
+	mcr	p15, 0, r0, c7, c6, 1		@ invalidate D line
+#else
+	mcr	p15, 0, r0, c7, c7, 1		@ invalidate unified line
+#endif
+	add	r0, r0, #D_CACHE_LINE_SIZE
+	cmp	r0, r1
+	blo	1b
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
+	mov	pc, lr
+
+/*
+ *	v6_dma_clean_range(start,end)
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_clean_range)
+	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
+1:
+#ifdef HARVARD_CACHE
+	mcr	p15, 0, r0, c7, c10, 1		@ clean D line
+#else
+	mcr	p15, 0, r0, c7, c11, 1		@ clean unified line
+#endif
+	add	r0, r0, #D_CACHE_LINE_SIZE
+	cmp	r0, r1
+	blo	1b
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
+	mov	pc, lr
+
+/*
+ *	v6_dma_flush_range(start,end)
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_flush_range)
+	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
+1:
+#ifdef HARVARD_CACHE
+	mcr	p15, 0, r0, c7, c14, 1		@ clean & invalidate D line
+#else
+	mcr	p15, 0, r0, c7, c15, 1		@ clean & invalidate line
+#endif
+	add	r0, r0, #D_CACHE_LINE_SIZE
+	cmp	r0, r1
+	blo	1b
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
+	mov	pc, lr
+
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
new file mode 100644
index 0000000..b370acd
--- /dev/null
+++ b/arch/arm/cpu/cache-armv7.S
@@ -0,0 +1,185 @@
+#include <linux/linkage.h>
+
+ENTRY(__mmu_cache_on)
+		mov	r12, lr
+#ifdef CONFIG_MMU
+		mrc	p15, 0, r11, c0, c1, 4	@ read ID_MMFR0
+		tst	r11, #0xf		@ VMSA
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c10, 4	@ drain write buffer
+		tst	r11, #0xf		@ VMSA
+		mcrne	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+#endif
+		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
+		orr	r0, r0, #0x5000		@ I-cache enable, RR cache replacement
+		orr	r0, r0, #0x003c		@ write buffer
+#ifdef CONFIG_MMU
+#ifdef CONFIG_CPU_ENDIAN_BE8
+		orr	r0, r0, #1 << 25	@ big-endian page tables
+#endif
+		orrne	r0, r0, #1		@ MMU enabled
+		movne	r1, #-1
+		mcrne	p15, 0, r3, c2, c0, 0	@ load page table pointer
+		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
+#endif
+		mcr	p15, 0, r0, c1, c0, 0	@ load control register
+		mrc	p15, 0, r0, c1, c0, 0	@ and read it back
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		mov	pc, r12
+ENDPROC(__mmu_cache_on)
+
+ENTRY(__mmu_cache_off)
+		mrc	p15, 0, r0, c1, c0
+#ifdef CONFIG_MMU
+		bic	r0, r0, #0x000d
+#else
+		bic	r0, r0, #0x000c
+#endif
+		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
+		mov	r12, lr
+		bl	__mmu_cache_flush
+		mov	r0, #0
+#ifdef CONFIG_MMU
+		mcr	p15, 0, r0, c8, c7, 0	@ invalidate whole TLB
+#endif
+		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
+		mcr	p15, 0, r0, c7, c10, 4	@ DSB
+		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		mov	pc, r12
+ENDPROC(__mmu_cache_on)
+
+ENTRY(__mmu_cache_flush)
+		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
+		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
+		mov	r10, #0
+		beq	hierarchical
+		mcr	p15, 0, r10, c7, c14, 0	@ clean+invalidate D
+		b	iflush
+hierarchical:
+		mcr	p15, 0, r10, c7, c10, 5	@ DMB
+		stmfd	sp!, {r0-r7, r9-r11}
+		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
+		ands	r3, r0, #0x7000000	@ extract loc from clidr
+		mov	r3, r3, lsr #23		@ left align loc bit field
+		beq	finished		@ if loc is 0, then no need to clean
+		mov	r10, #0			@ start clean at cache level 0
+loop1:
+		add	r2, r10, r10, lsr #1	@ work out 3x current cache level
+		mov	r1, r0, lsr r2		@ extract cache type bits from clidr
+		and	r1, r1, #7		@ mask of the bits for current cache only
+		cmp	r1, #2			@ see what cache we have at this level
+		blt	skip			@ skip if no cache, or just i-cache
+		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
+		mcr	p15, 0, r10, c7, c5, 4	@ isb to sych the new cssr&csidr
+		mrc	p15, 1, r1, c0, c0, 0	@ read the new csidr
+		and	r2, r1, #7		@ extract the length of the cache lines
+		add	r2, r2, #4		@ add 4 (line length offset)
+		ldr	r4, =0x3ff
+		ands	r4, r4, r1, lsr #3	@ find maximum number on the way size
+		clz	r5, r4			@ find bit position of way size increment
+		ldr	r7, =0x7fff
+		ands	r7, r7, r1, lsr #13	@ extract max number of the index size
+loop2:
+		mov	r9, r4			@ create working copy of max way size
+loop3:
+		orr	r11, r10, r9, lsl r5	@ factor way and cache number into r11
+		orr	r11, r11, r7, lsl r2	@ factor index number into r11
+		mcr	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
+		subs	r9, r9, #1		@ decrement the way
+		bge	loop3
+		subs	r7, r7, #1		@ decrement the index
+		bge	loop2
+skip:
+		add	r10, r10, #2		@ increment cache number
+		cmp	r3, r10
+		bgt	loop1
+finished:
+		ldmfd	sp!, {r0-r7, r9-r11}
+		mov	r10, #0			@ swith back to cache level 0
+		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
+iflush:
+		mcr	p15, 0, r10, c7, c10, 4	@ DSB
+		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
+		mcr	p15, 0, r10, c7, c10, 4	@ DSB
+		mcr	p15, 0, r10, c7, c5, 4	@ ISB
+		mov	pc, lr
+ENDPROC(__mmu_cache_flush)
+
+/*
+ * cache_line_size - get the cache line size from the CSIDR register
+ * (available on ARMv7+). It assumes that the CSSR register was configured
+ * to access the L1 data cache CSIDR.
+ */
+	.macro	dcache_line_size, reg, tmp
+	mrc	p15, 1, \tmp, c0, c0, 0		@ read CSIDR
+	and	\tmp, \tmp, #7			@ cache line size encoding
+	mov	\reg, #16			@ size offset
+	mov	\reg, \reg, lsl \tmp		@ actual cache line size
+	.endm
+
+/*
+ *	v7_dma_inv_range(start,end)
+ *
+ *	Invalidate the data cache within the specified region; we will
+ *	be performing a DMA operation in this region and we want to
+ *	purge old data in the cache.
+ *
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_inv_range)
+	dcache_line_size r2, r3
+	sub	r3, r2, #1
+	tst	r0, r3
+	bic	r0, r0, r3
+	mcrne	p15, 0, r0, c7, c14, 1		@ clean & invalidate D / U line
+
+	tst	r1, r3
+	bic	r1, r1, r3
+	mcrne	p15, 0, r1, c7, c14, 1		@ clean & invalidate D / U line
+1:
+	mcr	p15, 0, r0, c7, c6, 1		@ invalidate D / U line
+	add	r0, r0, r2
+	cmp	r0, r1
+	blo	1b
+	dsb
+	mov	pc, lr
+ENDPROC(dma_inv_range)
+
+/*
+ *	v7_dma_clean_range(start,end)
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_clean_range)
+	dcache_line_size r2, r3
+	sub	r3, r2, #1
+	bic	r0, r0, r3
+1:
+	mcr	p15, 0, r0, c7, c10, 1		@ clean D / U line
+	add	r0, r0, r2
+	cmp	r0, r1
+	blo	1b
+	dsb
+	mov	pc, lr
+ENDPROC(dma_clean_range)
+
+/*
+ *	v7_dma_flush_range(start,end)
+ *	- start   - virtual start address of region
+ *	- end     - virtual end address of region
+ */
+ENTRY(dma_flush_range)
+	dcache_line_size r2, r3
+	sub	r3, r2, #1
+	bic	r0, r0, r3
+1:
+	mcr	p15, 0, r0, c7, c14, 1		@ clean & invalidate D / U line
+	add	r0, r0, r2
+	cmp	r0, r1
+	blo	1b
+	dsb
+	mov	pc, lr
+ENDPROC(dma_flush_range)
+
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 9e00927..fff7ddf 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -53,12 +53,10 @@ void mmu_init(void)
 void mmu_enable(void)
 {
 	asm volatile (
-		"mrc p15, 0, r1, c1, c0, 0;"
-		"orr r1, r1, #0x0007;"  /* enable MMU + Dcache */
-		"mcr p15, 0, r1, c1, c0, 0"
+		"bl __mmu_cache_on;"
 		:
 		:
-		: "r1" /* Clobber list */
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12"
         );
 }
 
@@ -67,28 +65,13 @@ void mmu_enable(void)
  */
 void mmu_disable(void)
 {
+
 	asm volatile (
-		"nop; "
-		"nop; "
-		"nop; "
-		"nop; "
-		"nop; "
-		"nop; "
-		/* test, clean and invalidate cache */
-		"1:	mrc	p15, 0, r15, c7, c14, 3;" 
-		"	bne	1b;"
-		"	mov	pc, lr;"
-		"	mov r0, #0x0;"
-		"	mcr p15, 0, r0, c7, c10, 4;" /* drain the write buffer   */
-		"	mcr p15, 0, r1, c7, c6, 0;"  /* clear data cache         */
-		"	mrc p15, 0, r1, c1, c0, 0;"
-		"	bic r1, r1, #0x0007;"        /* disable MMU + DCache     */
-		"	mcr p15, 0, r1, c1, c0, 0;"
-		"	mcr p15, 0, r0, c7, c6, 0;" /* flush d-cache             */
-		"	mcr p15, 0, r0, c8, c7, 0;" /* flush i+d-TLBs            */
+		"bl __mmu_cache_flush;"
+		"bl __mmu_cache_off;"
 		:
 		:
-		: "r0" /* Clobber list */
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12"
 	);
 }
 
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
