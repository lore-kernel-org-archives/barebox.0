Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqSx-00024n-9f
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:12:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Oct 2012 09:12:16 +0200
Message-Id: <1349853136-18371-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349853136-18371-1-git-send-email-s.hauer@pengutronix.de>
References: <1349853136-18371-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: Support multiple ARM architectures
To: barebox@lists.infradead.org

The different ARM architectures need different cache functions. This
patch makes them selectable during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile        |    3 +-
 arch/arm/cpu/cache-armv4.S   |   28 ++++++------
 arch/arm/cpu/cache-armv5.S   |   30 ++++++------
 arch/arm/cpu/cache-armv6.S   |   34 +++++++-------
 arch/arm/cpu/cache-armv7.S   |   36 +++++++--------
 arch/arm/cpu/cache.c         |  103 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu.c           |   28 +++++++++---
 arch/arm/include/asm/cache.h |    2 +
 8 files changed, 192 insertions(+), 72 deletions(-)
 create mode 100644 arch/arm/cpu/cache.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f7ab276..6aab3ae 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -8,7 +8,8 @@ obj-y += start.o
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
-obj-$(CONFIG_MMU) += mmu.o
+obj-$(CONFIG_MMU) += mmu.o cache.o
+pbl-$(CONFIG_MMU) += cache.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index 22fab14..1d1a1e3 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -4,7 +4,7 @@
 #define CACHE_DLINESIZE 32
 
 .section .text.__mmu_cache_on
-ENTRY(__mmu_cache_on)
+ENTRY(v4_mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mov	r0, #0
@@ -21,7 +21,7 @@ ENTRY(__mmu_cache_on)
 		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
 #endif
 		mov	pc, r12
-ENDPROC(__mmu_cache_on)
+ENDPROC(v4_mmu_cache_on)
 
 __common_mmu_cache_on:
 		orr	r0, r0, #0x000d		@ Write buffer, mmu
@@ -31,8 +31,8 @@ __common_mmu_cache_on:
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
-.section .text.__mmu_cache_off
-ENTRY(__mmu_cache_off)
+.section .text.v4_mmu_cache_off
+ENTRY(v4_mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
 		bic	r0, r0, #0x000d
@@ -42,10 +42,10 @@ ENTRY(__mmu_cache_off)
 		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
 #endif
 		mov	pc, lr
-ENDPROC(__mmu_cache_off)
+ENDPROC(v4_mmu_cache_off)
 
-.section .text.__mmu_cache_flush
-ENTRY(__mmu_cache_flush)
+.section .text.v4_mmu_cache_flush
+ENTRY(v4_mmu_cache_flush)
 		stmfd	sp!, {r6, r11, lr}
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
@@ -76,7 +76,7 @@ no_cache_id:
 		mcr	p15, 0, r1, c7, c6, 0	@ flush D cache
 		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
 		ldmfd	sp!, {r6, r11, pc}
-ENDPROC(__mmu_cache_flush)
+ENDPROC(v4_mmu_cache_flush)
 
 /*
  *	dma_inv_range(start, end)
@@ -91,8 +91,8 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
-.section .text.__dma_inv_range
-ENTRY(__dma_inv_range)
+.section .text.v4_dma_inv_range
+ENTRY(v4_dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -115,8 +115,8 @@ ENTRY(__dma_inv_range)
  *
  * (same as v4wb)
  */
-.section .text.__dma_clean_range
-ENTRY(__dma_clean_range)
+.section .text.v4_dma_clean_range
+ENTRY(v4_dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
 	add	r0, r0, #CACHE_DLINESIZE
@@ -133,8 +133,8 @@ ENTRY(__dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
-.section .text.__dma_flush_range
-ENTRY(__dma_flush_range)
+.section .text.v4_dma_flush_range
+ENTRY(v4_dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
 	add	r0, r0, #CACHE_DLINESIZE
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index d6ffaf1..4267f3e 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -3,8 +3,8 @@
 
 #define CACHE_DLINESIZE 32
 
-.section .text.__mmu_cache_on
-ENTRY(__mmu_cache_on)
+.section .text.v5_mmu_cache_on
+ENTRY(v5_mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mov	r0, #0
@@ -21,7 +21,7 @@ ENTRY(__mmu_cache_on)
 		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
 #endif
 		mov	pc, r12
-ENDPROC(__mmu_cache_on)
+ENDPROC(v5_mmu_cache_on)
 
 __common_mmu_cache_on:
 		orr	r0, r0, #0x000d		@ Write buffer, mmu
@@ -31,8 +31,8 @@ __common_mmu_cache_on:
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
-.section .text.__mmu_cache_off
-ENTRY(__mmu_cache_off)
+.section .text.v5_mmu_cache_off
+ENTRY(v5_mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
 		bic	r0, r0, #0x000d
@@ -42,16 +42,16 @@ ENTRY(__mmu_cache_off)
 		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
 #endif
 		mov	pc, lr
-ENDPROC(__mmu_cache_off)
+ENDPROC(v5_mmu_cache_off)
 
-.section .text.__mmu_cache_flush
-ENTRY(__mmu_cache_flush)
+.section .text.v5_mmu_cache_flush
+ENTRY(v5_mmu_cache_flush)
 1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
 		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
 		mov	pc, lr
-ENDPROC(__mmu_cache_flush)
+ENDPROC(v5_mmu_cache_flush)
 
 /*
  *	dma_inv_range(start, end)
@@ -66,8 +66,8 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
-.section .text.__dma_inv_range
-ENTRY(__dma_inv_range)
+.section .text.v5_dma_inv_range
+ENTRY(v5_dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -90,8 +90,8 @@ ENTRY(__dma_inv_range)
  *
  * (same as v4wb)
  */
-.section .text.__dma_clean_range
-ENTRY(__dma_clean_range)
+.section .text.v5_dma_clean_range
+ENTRY(v5_dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
 	add	r0, r0, #CACHE_DLINESIZE
@@ -108,8 +108,8 @@ ENTRY(__dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
-.section .text.__dma_flush_range
-ENTRY(__dma_flush_range)
+.section .text.v5_dma_flush_range
+ENTRY(v5_dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
 	add	r0, r0, #CACHE_DLINESIZE
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index 02b1d3e..7a06751 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -5,8 +5,8 @@
 #define CACHE_LINE_SIZE		32
 #define D_CACHE_LINE_SIZE	32
 
-.section .text.__mmu_cache_on
-ENTRY(__mmu_cache_on)
+.section .text.v6_mmu_cache_on
+ENTRY(v6_mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mov	r0, #0
@@ -23,7 +23,7 @@ ENTRY(__mmu_cache_on)
 		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
 #endif
 		mov	pc, r12
-ENDPROC(__mmu_cache_on)
+ENDPROC(v6_mmu_cache_on)
 
 __common_mmu_cache_on:
 		orr	r0, r0, #0x000d		@ Write buffer, mmu
@@ -34,8 +34,8 @@ __common_mmu_cache_on:
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
 
-.section .text.__mmu_cache_off
-ENTRY(__mmu_cache_off)
+.section .text.v6_mmu_cache_off
+ENTRY(v6_mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
 		bic	r0, r0, #0x000d
@@ -46,15 +46,15 @@ ENTRY(__mmu_cache_off)
 #endif
 		mov	pc, lr
 
-.section .text.__mmu_cache_flush
-ENTRY(__mmu_cache_flush)
+.section .text.v6_mmu_cache_flush
+ENTRY(v6_mmu_cache_flush)
 		mov	r1, #0
 		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
 		mcr	p15, 0, r1, c7, c5, 0	@ invalidate I+BTB
 		mcr	p15, 0, r1, c7, c15, 0	@ clean+invalidate unified
 		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
 		mov	pc, lr
-ENDPROC(__mmu_cache_flush)
+ENDPROC(v6_mmu_cache_flush)
 
 /*
  *	v6_dma_inv_range(start,end)
@@ -66,8 +66,8 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_inv_range
-ENTRY(__dma_inv_range)
+.section .text.v6_dma_inv_range
+ENTRY(v6_dma_inv_range)
 	tst	r0, #D_CACHE_LINE_SIZE - 1
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 #ifdef HARVARD_CACHE
@@ -94,15 +94,15 @@ ENTRY(__dma_inv_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
-ENDPROC(__dma_inv_range)
+ENDPROC(v6_dma_inv_range)
 
 /*
  *	v6_dma_clean_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_clean_range
-ENTRY(__dma_clean_range)
+.section .text.v6_dma_clean_range
+ENTRY(v6_dma_clean_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
 #ifdef HARVARD_CACHE
@@ -116,15 +116,15 @@ ENTRY(__dma_clean_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
-ENDPROC(__dma_clean_range)
+ENDPROC(v6_dma_clean_range)
 
 /*
  *	v6_dma_flush_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_flush_range
-ENTRY(__dma_flush_range)
+.section .text.v6_dma_flush_range
+ENTRY(v6_dma_flush_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
 #ifdef HARVARD_CACHE
@@ -138,4 +138,4 @@ ENTRY(__dma_flush_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
-ENDPROC(__dma_flush_range)
+ENDPROC(v6_dma_flush_range)
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 2eba959..92fe6fe 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -1,8 +1,8 @@
 #include <linux/linkage.h>
 #include <init.h>
 
-.section .text.__mmu_cache_on
-ENTRY(__mmu_cache_on)
+.section .text.v7_mmu_cache_on
+ENTRY(v7_mmu_cache_on)
 		stmfd	sp!, {r11, lr}
 		mov	r12, lr
 #ifdef CONFIG_MMU
@@ -30,10 +30,10 @@ ENTRY(__mmu_cache_on)
 		mov	r0, #0
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
 		ldmfd	sp!, {r11, pc}
-ENDPROC(__mmu_cache_on)
+ENDPROC(v7_mmu_cache_on)
 
-.section .text.__mmu_cache_off
-ENTRY(__mmu_cache_off)
+.section .text.v7_mmu_cache_off
+ENTRY(v7_mmu_cache_off)
 		mrc	p15, 0, r0, c1, c0
 #ifdef CONFIG_MMU
 		bic	r0, r0, #0x000d
@@ -51,10 +51,10 @@ ENTRY(__mmu_cache_off)
 		mcr	p15, 0, r0, c7, c10, 4	@ DSB
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
 		mov	pc, r12
-ENDPROC(__mmu_cache_off)
+ENDPROC(v7_mmu_cache_off)
 
-.section .text.__mmu_cache_flush
-ENTRY(__mmu_cache_flush)
+.section .text.v7_mmu_cache_flush
+ENTRY(v7_mmu_cache_flush)
 		stmfd	sp!, {r10, lr}
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
@@ -114,7 +114,7 @@ iflush:
 		mcr	p15, 0, r10, c7, c10, 4	@ DSB
 		mcr	p15, 0, r10, c7, c5, 4	@ ISB
 		ldmfd	sp!, {r10, pc}
-ENDPROC(__mmu_cache_flush)
+ENDPROC(v7_mmu_cache_flush)
 
 /*
  * cache_line_size - get the cache line size from the CSIDR register
@@ -138,8 +138,8 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_inv_range
-ENTRY(__dma_inv_range)
+.section .text.v7_dma_inv_range
+ENTRY(v7_dma_inv_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	tst	r0, r3
@@ -156,15 +156,15 @@ ENTRY(__dma_inv_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(__dma_inv_range)
+ENDPROC(v7_dma_inv_range)
 
 /*
  *	v7_dma_clean_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_clean_range
-ENTRY(__dma_clean_range)
+.section .text.v7_dma_clean_range
+ENTRY(v7_dma_clean_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	bic	r0, r0, r3
@@ -175,15 +175,15 @@ ENTRY(__dma_clean_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(__dma_clean_range)
+ENDPROC(v7_dma_clean_range)
 
 /*
  *	v7_dma_flush_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-.section .text.__dma_flush_range
-ENTRY(__dma_flush_range)
+.section .text.v7_dma_flush_range
+ENTRY(v7_dma_flush_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	bic	r0, r0, r3
@@ -194,4 +194,4 @@ ENTRY(__dma_flush_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(__dma_flush_range)
+ENDPROC(v7_dma_flush_range)
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
new file mode 100644
index 0000000..1254609
--- /dev/null
+++ b/arch/arm/cpu/cache.c
@@ -0,0 +1,103 @@
+#include <common.h>
+#include <init.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/system_info.h>
+
+int arm_architecture;
+
+struct cache_fns {
+	void (*dma_clean_range)(unsigned long start, unsigned long end);
+	void (*dma_flush_range)(unsigned long start, unsigned long end);
+	void (*dma_inv_range)(unsigned long start, unsigned long end);
+	void (*mmu_cache_on)(void);
+	void (*mmu_cache_off)(void);
+	void (*mmu_cache_flush)(void);
+};
+
+struct cache_fns *cache_fns;
+
+#define DEFINE_CPU_FNS(arch) \
+	void arch##_dma_clean_range(unsigned long start, unsigned long end);	\
+	void arch##_dma_flush_range(unsigned long start, unsigned long end);	\
+	void arch##_dma_inv_range(unsigned long start, unsigned long end);	\
+	void arch##_mmu_cache_on(void);						\
+	void arch##_mmu_cache_off(void);					\
+	void arch##_mmu_cache_flush(void);					\
+										\
+	static struct cache_fns __maybe_unused cache_fns_arm##arch = {		\
+		.dma_clean_range = arch##_dma_clean_range,			\
+		.dma_flush_range = arch##_dma_flush_range,			\
+		.dma_inv_range = arch##_dma_inv_range,				\
+		.mmu_cache_on = arch##_mmu_cache_on,				\
+		.mmu_cache_off = arch##_mmu_cache_off,				\
+		.mmu_cache_flush = arch##_mmu_cache_flush,			\
+	};
+
+DEFINE_CPU_FNS(v4)
+DEFINE_CPU_FNS(v5)
+DEFINE_CPU_FNS(v6)
+DEFINE_CPU_FNS(v7)
+
+void __dma_clean_range(unsigned long start, unsigned long end)
+{
+	cache_fns->dma_clean_range(start, end);
+}
+
+void __dma_flush_range(unsigned long start, unsigned long end)
+{
+	cache_fns->dma_flush_range(start, end);
+}
+
+void __dma_inv_range(unsigned long start, unsigned long end)
+{
+	cache_fns->dma_inv_range(start, end);
+}
+
+void __mmu_cache_on(void)
+{
+	cache_fns->mmu_cache_on();
+}
+
+void __mmu_cache_off(void)
+{
+	cache_fns->mmu_cache_off();
+}
+
+void __mmu_cache_flush(void)
+{
+	cache_fns->mmu_cache_flush();
+}
+
+int arm_set_cache_functions(void)
+{
+	switch (cpu_architecture()) {
+#ifdef CONFIG_CPU_32v4T
+	case CPU_ARCH_ARMv4T:
+		cache_fns = &cache_fns_armv4;
+		break;
+#endif
+#ifdef CONFIG_CPU_32v5
+	case CPU_ARCH_ARMv5:
+	case CPU_ARCH_ARMv5T:
+	case CPU_ARCH_ARMv5TE:
+	case CPU_ARCH_ARMv5TEJ:
+		cache_fns = &cache_fns_armv5;
+		break;
+#endif
+#ifdef CONFIG_CPU_32v6
+	case CPU_ARCH_ARMv6:
+		cache_fns = &cache_fns_armv6;
+		break;
+#endif
+#ifdef CONFIG_CPU_32v7
+	case CPU_ARCH_ARMv7:
+		cache_fns = &cache_fns_armv7;
+		break;
+#endif
+	default:
+		BUG();
+	}
+
+	return 0;
+}
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e3ca722..068e0ea 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -6,7 +6,9 @@
 #include <asm/memory.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
+#include <asm/cache.h>
 #include <memory.h>
+#include <asm/system_info.h>
 
 #include "mmu.h"
 
@@ -43,13 +45,15 @@ static inline void tlb_invalidate(void)
 	);
 }
 
-#ifdef CONFIG_CPU_V7
-#define PTE_FLAGS_CACHED (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE)
-#define PTE_FLAGS_UNCACHED (0)
-#else
-#define PTE_FLAGS_CACHED (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
-#define PTE_FLAGS_UNCACHED PTE_SMALL_AP_UNO_SRW
-#endif
+extern int arm_architecture;
+
+#define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE)
+#define PTE_FLAGS_UNCACHED_V7 (0)
+#define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
+#define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
+
+static uint32_t PTE_FLAGS_CACHED;
+static uint32_t PTE_FLAGS_UNCACHED;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -226,6 +230,16 @@ static int mmu_init(void)
 	struct memory_bank *bank;
 	int i;
 
+	arm_set_cache_functions();
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		PTE_FLAGS_CACHED = PTE_FLAGS_CACHED_V7;
+		PTE_FLAGS_UNCACHED = PTE_FLAGS_UNCACHED_V7;
+	} else {
+		PTE_FLAGS_CACHED = PTE_FLAGS_CACHED_V4;
+		PTE_FLAGS_UNCACHED = PTE_FLAGS_UNCACHED_V4;
+	}
+
 	ttb = memalign(0x10000, 0x4000);
 
 	debug("ttb: 0x%p\n", ttb);
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index ff79749..d5877ff 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -6,4 +6,6 @@ static inline void flush_icache(void)
 	asm volatile("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 }
 
+int arm_set_cache_functions(void);
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
