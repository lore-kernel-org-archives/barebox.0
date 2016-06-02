Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8NfZ-00046r-6y
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 08:07:59 +0000
Received: by mail-wm0-x241.google.com with SMTP id e3so13452962wme.2
 for <barebox@lists.infradead.org>; Thu, 02 Jun 2016 01:07:41 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu,  2 Jun 2016 10:06:50 +0200
Message-Id: <1464854818-28653-5-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 04/12] arm: cpu: add arm64 specific code
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

This patch adds arm64 specific codes, which are:
	- exception support
	- cache support
	- rework Makefile to support arm64

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/cpu/Makefile        |  17 ++++-
 arch/arm/cpu/cache-armv8.S   | 168 +++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/cache.c         |  19 +++++
 arch/arm/cpu/exceptions_64.S | 127 ++++++++++++++++++++++++++++++++
 arch/arm/cpu/interrupts.c    |  47 ++++++++++++
 arch/arm/cpu/lowlevel.S      |  38 ++++++++++
 arch/arm/include/asm/cache.h |   9 +++
 7 files changed, 423 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv8.S
 create mode 100644 arch/arm/cpu/exceptions_64.S

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 854df60..95a2b00 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,17 @@
 obj-y += cpu.o
+
+ifeq ($(CONFIG_CPU_64v8), y)
+obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_64.o
+else
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
+endif
+
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o setupc.o entry.o
+obj-y += start.o entry.o
+
+ifeq ($(CONFIG_CPU_64v8), )
+obj-y += setupc.o
+endif
 
 #
 # Any variants can be called as start-armxyz.S
@@ -11,7 +21,6 @@ obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
 pbl-$(CONFIG_MMU) += mmu-early.o
-
 ifeq ($(CONFIG_MMU),)
 obj-y += no-mmu.o
 endif
@@ -27,6 +36,10 @@ obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
+AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
+obj-$(CONFIG_CPU_64v8) += cache-armv8.o
+AFLAGS_pbl-cache-armv8.o       :=-Wa,-march=armv8-a
+pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
 
 pbl-y += setupc.o entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
new file mode 100644
index 0000000..82b2f81
--- /dev/null
+++ b/arch/arm/cpu/cache-armv8.S
@@ -0,0 +1,168 @@
+/*
+ * (C) Copyright 2013
+ * David Feng <fenghua@phytium.com.cn>
+ *
+ * This file is based on sample code from ARMv8 ARM.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <config.h>
+#include <linux/linkage.h>
+#include <init.h>
+
+/*
+ * void v8_flush_dcache_level(level)
+ *
+ * clean and invalidate one level cache.
+ *
+ * x0: cache level
+ * x1: 0 flush & invalidate, 1 invalidate only
+ * x2~x9: clobbered
+ */
+.section .text.v8_flush_dcache_level
+ENTRY(v8_flush_dcache_level)
+	lsl	x12, x0, #1
+	msr	csselr_el1, x12		/* select cache level */
+	isb				/* sync change of cssidr_el1 */
+	mrs	x6, ccsidr_el1		/* read the new cssidr_el1 */
+	and	x2, x6, #7		/* x2 <- log2(cache line size)-4 */
+	add	x2, x2, #4		/* x2 <- log2(cache line size) */
+	mov	x3, #0x3ff
+	and	x3, x3, x6, lsr #3	/* x3 <- max number of #ways */
+	clz	w5, w3			/* bit position of #ways */
+	mov	x4, #0x7fff
+	and	x4, x4, x6, lsr #13	/* x4 <- max number of #sets */
+	/* x12 <- cache level << 1 */
+	/* x2 <- line length offset */
+	/* x3 <- number of cache ways - 1 */
+	/* x4 <- number of cache sets - 1 */
+	/* x5 <- bit position of #ways */
+
+loop_set:
+	mov	x6, x3			/* x6 <- working copy of #ways */
+loop_way:
+	lsl	x7, x6, x5
+	orr	x9, x12, x7		/* map way and level to cisw value */
+	lsl	x7, x4, x2
+	orr	x9, x9, x7		/* map set number to cisw value */
+	tbz	w1, #0, 1f
+	dc	isw, x9
+	b	2f
+1:	dc	cisw, x9		/* clean & invalidate by set/way */
+2:	subs	x6, x6, #1		/* decrement the way */
+	b.ge	loop_way
+	subs	x4, x4, #1		/* decrement the set */
+	b.ge	loop_set
+
+	ret
+ENDPROC(v8_flush_dcache_level)
+
+/*
+ * void v8_flush_dcache_all(int invalidate_only)
+ *
+ * x0: 0 flush & invalidate, 1 invalidate only
+ *
+ * clean and invalidate all data cache by SET/WAY.
+ */
+.section .text.v8_dcache_all
+ENTRY(v8_dcache_all)
+	mov	x1, x0
+	dsb	sy
+	mrs	x10, clidr_el1		/* read clidr_el1 */
+	lsr	x11, x10, #24
+	and	x11, x11, #0x7		/* x11 <- loc */
+	cbz	x11, finished		/* if loc is 0, exit */
+	mov	x15, x30
+	mov	x0, #0			/* start flush at cache level 0 */
+	/* x0  <- cache level */
+	/* x10 <- clidr_el1 */
+	/* x11 <- loc */
+	/* x15 <- return address */
+
+loop_level:
+	lsl	x12, x0, #1
+	add	x12, x12, x0		/* x0 <- tripled cache level */
+	lsr	x12, x10, x12
+	and	x12, x12, #7		/* x12 <- cache type */
+	cmp	x12, #2
+	b.lt	skip			/* skip if no cache or icache */
+	bl	v8_flush_dcache_level	/* x1 = 0 flush, 1 invalidate */
+skip:
+	add	x0, x0, #1		/* increment cache level */
+	cmp	x11, x0
+	b.gt	loop_level
+
+	mov	x0, #0
+	msr	csselr_el1, x0		/* restore csselr_el1 */
+	dsb	sy
+	isb
+	mov	x30, x15
+
+finished:
+	ret
+ENDPROC(v8_dcache_all)
+
+.section .text.v8_flush_dcache_all
+ENTRY(v8_flush_dcache_all)
+	mov	x16, x30
+	mov	x0, #0
+	bl	v8_dcache_all
+	mov	x30, x16
+	ret
+ENDPROC(v8_flush_dcache_all)
+
+.section .text.v8_invalidate_dcache_all
+ENTRY(v8_invalidate_dcache_all)
+	mov	x16, x30
+	mov	x0, #0x1
+	bl	v8_dcache_all
+	mov	x30, x16
+	ret
+ENDPROC(v8_invalidate_dcache_all)
+
+/*
+ * void v8_flush_dcache_range(start, end)
+ *
+ * clean & invalidate data cache in the range
+ *
+ * x0: start address
+ * x1: end address
+ */
+.section .text.v8_flush_dcache_range
+ENTRY(v8_flush_dcache_range)
+	mrs	x3, ctr_el0
+	lsr	x3, x3, #16
+	and	x3, x3, #0xf
+	mov	x2, #4
+	lsl	x2, x2, x3		/* cache line size */
+
+	/* x2 <- minimal cache line size in cache system */
+	sub	x3, x2, #1
+	bic	x0, x0, x3
+1:	dc	civac, x0	/* clean & invalidate data or unified cache */
+	add	x0, x0, x2
+	cmp	x0, x1
+	b.lo	1b
+	dsb	sy
+	ret
+ENDPROC(v8_flush_dcache_range)
+
+/*
+ * void v8_invalidate_icache_all(void)
+ *
+ * invalidate all tlb entries.
+ */
+.section .text.v8_invalidate_icache_all
+ENTRY(v8_invalidate_icache_all)
+	ic	ialluis
+	isb	sy
+	ret
+ENDPROC(v8_invalidate_icache_all)
+
+.section .text.v8_flush_l3_cache
+ENTRY(v8_flush_l3_cache)
+	mov	x0, #0			/* return status as success */
+	ret
+ENDPROC(v8_flush_l3_cache)
+	.weak	v8_flush_l3_cache
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 27ead1c..929c385 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -36,6 +36,7 @@ DEFINE_CPU_FNS(v4)
 DEFINE_CPU_FNS(v5)
 DEFINE_CPU_FNS(v6)
 DEFINE_CPU_FNS(v7)
+DEFINE_CPU_FNS(v8)
 
 void __dma_clean_range(unsigned long start, unsigned long end)
 {
@@ -101,6 +102,11 @@ int arm_set_cache_functions(void)
 		cache_fns = &cache_fns_armv7;
 		break;
 #endif
+#ifdef CONFIG_CPU_64v8
+	case CPU_ARCH_ARMv8:
+		cache_fns = &cache_fns_armv8;
+		break;
+#endif
 	default:
 		while(1);
 	}
@@ -138,6 +144,11 @@ void arm_early_mmu_cache_flush(void)
 		v7_mmu_cache_flush();
 		return;
 #endif
+#ifdef CONFIG_CPU_64v8
+	case CPU_ARCH_ARMv8:
+		v8_dcache_all();
+		return;
+#endif
 	}
 }
 
@@ -146,6 +157,7 @@ void v7_mmu_cache_invalidate(void);
 void arm_early_mmu_cache_invalidate(void)
 {
 	switch (arm_early_get_cpu_architecture()) {
+#if __LINUX_ARM_ARCH__ <= 7
 	case CPU_ARCH_ARMv4T:
 	case CPU_ARCH_ARMv5:
 	case CPU_ARCH_ARMv5T:
@@ -159,5 +171,12 @@ void arm_early_mmu_cache_invalidate(void)
 		v7_mmu_cache_invalidate();
 		return;
 #endif
+#else
+#ifdef CONFIG_CPU_64v8
+	case CPU_ARCH_ARMv8:
+		v8_invalidate_icache_all();
+		return;
+#endif
+#endif
 	}
 }
diff --git a/arch/arm/cpu/exceptions_64.S b/arch/arm/cpu/exceptions_64.S
new file mode 100644
index 0000000..5812025
--- /dev/null
+++ b/arch/arm/cpu/exceptions_64.S
@@ -0,0 +1,127 @@
+/*
+ * (C) Copyright 2013
+ * David Feng <fenghua@phytium.com.cn>
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <config.h>
+#include <asm/ptrace.h>
+#include <linux/linkage.h>
+
+/*
+ * Enter Exception.
+ * This will save the processor state that is ELR/X0~X30
+ * to the stack frame.
+ */
+.macro	exception_entry
+	stp	x29, x30, [sp, #-16]!
+	stp	x27, x28, [sp, #-16]!
+	stp	x25, x26, [sp, #-16]!
+	stp	x23, x24, [sp, #-16]!
+	stp	x21, x22, [sp, #-16]!
+	stp	x19, x20, [sp, #-16]!
+	stp	x17, x18, [sp, #-16]!
+	stp	x15, x16, [sp, #-16]!
+	stp	x13, x14, [sp, #-16]!
+	stp	x11, x12, [sp, #-16]!
+	stp	x9, x10, [sp, #-16]!
+	stp	x7, x8, [sp, #-16]!
+	stp	x5, x6, [sp, #-16]!
+	stp	x3, x4, [sp, #-16]!
+	stp	x1, x2, [sp, #-16]!
+
+	/* Could be running at EL3/EL2/EL1 */
+	mrs	x11, CurrentEL
+	cmp	x11, #0xC		/* Check EL3 state */
+	b.eq	1f
+	cmp	x11, #0x8		/* Check EL2 state */
+	b.eq	2f
+	cmp	x11, #0x4		/* Check EL1 state */
+	b.eq	3f
+3:	mrs	x1, esr_el3
+	mrs	x2, elr_el3
+	b	0f
+2:	mrs	x1, esr_el2
+	mrs	x2, elr_el2
+	b	0f
+1:	mrs	x1, esr_el1
+	mrs	x2, elr_el1
+0:
+	stp	x2, x0, [sp, #-16]!
+	mov	x0, sp
+.endm
+
+/*
+ * Exception vectors.
+ */
+	.align	11
+	.globl	vectors
+vectors:
+	.align	7
+	b	_do_bad_sync	/* Current EL Synchronous Thread */
+
+	.align	7
+	b	_do_bad_irq	/* Current EL IRQ Thread */
+
+	.align	7
+	b	_do_bad_fiq	/* Current EL FIQ Thread */
+
+	.align	7
+	b	_do_bad_error	/* Current EL Error Thread */
+
+	.align	7
+	b	_do_sync	/* Current EL Synchronous Handler */
+
+	.align	7
+	b	_do_irq		/* Current EL IRQ Handler */
+
+	.align	7
+	b	_do_fiq		/* Current EL FIQ Handler */
+
+	.align	7
+	b	_do_error	/* Current EL Error Handler */
+
+
+_do_bad_sync:
+	exception_entry
+	bl	do_bad_sync
+
+_do_bad_irq:
+	exception_entry
+	bl	do_bad_irq
+
+_do_bad_fiq:
+	exception_entry
+	bl	do_bad_fiq
+
+_do_bad_error:
+	exception_entry
+	bl	do_bad_error
+
+_do_sync:
+	exception_entry
+	bl	do_sync
+
+_do_irq:
+	exception_entry
+	bl	do_irq
+
+_do_fiq:
+	exception_entry
+	bl	do_fiq
+
+_do_error:
+	exception_entry
+	bl	do_error
+
+.section .data
+.align 4
+.global arm_ignore_data_abort
+arm_ignore_data_abort:
+.word 0 /* When != 0 data aborts are ignored */
+.global arm_data_abort_occurred
+arm_data_abort_occurred:
+.word 0 /* set != 0 by the data abort handler */
+abort_stack:
+.space 8
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index fb4bb78..c34108a 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -27,6 +27,8 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 
+
+#if __LINUX_ARM_ARCH__ <= 7
 /**
  * Display current register set content
  * @param[in] regs Guess what
@@ -70,10 +72,13 @@ void show_regs (struct pt_regs *regs)
 	unwind_backtrace(regs);
 #endif
 }
+#endif
 
 static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
+#if __LINUX_ARM_ARCH__ <= 7
 	show_regs(pt_regs);
+#endif
 
 	panic("");
 }
@@ -121,6 +126,8 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
+
+#if __LINUX_ARM_ARCH__ <= 7
 	u32 far;
 
 	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
@@ -128,6 +135,7 @@ void do_data_abort (struct pt_regs *pt_regs)
 	printf("unable to handle %s at address 0x%08x\n",
 			far < PAGE_SIZE ? "NULL pointer dereference" :
 			"paging request", far);
+#endif
 
 	do_exception(pt_regs);
 }
@@ -156,6 +164,45 @@ void do_irq (struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
+#ifdef CONFIG_CPU_64v8
+void do_bad_sync(struct pt_regs *pt_regs)
+{
+	printf("bad sync\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_irq(struct pt_regs *pt_regs)
+{
+	printf("bad irq\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_fiq(struct pt_regs *pt_regs)
+{
+	printf("bad fiq\n");
+	do_exception(pt_regs);
+}
+
+void do_bad_error(struct pt_regs *pt_regs)
+{
+	printf("bad error\n");
+	do_exception(pt_regs);
+}
+
+void do_sync(struct pt_regs *pt_regs)
+{
+	printf("sync exception\n");
+	do_exception(pt_regs);
+}
+
+
+void do_error(struct pt_regs *pt_regs)
+{
+	printf("error exception\n");
+	do_exception(pt_regs);
+}
+#endif
+
 extern volatile int arm_ignore_data_abort;
 extern volatile int arm_data_abort_occurred;
 
diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index b76222d..67df43f 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -3,6 +3,7 @@
 #include <asm/system.h>
 
 .section ".text_bare_init_","ax"
+#if __LINUX_ARM_ARCH__ <= 7
 ENTRY(arm_cpu_lowlevel_init)
 	/* set the cpu to SVC32 mode, mask irq and fiq */
 	mrs	r12, cpsr
@@ -56,3 +57,40 @@ ENTRY(arm_cpu_lowlevel_init)
 
 	mov	pc, lr
 ENDPROC(arm_cpu_lowlevel_init)
+#else
+ENTRY(arm_cpu_lowlevel_init)
+	adr	x0, vectors
+	mrs	x1, CurrentEL
+	cmp	x1, #0xC		/* Check EL3 state */
+	b.eq	1f
+	cmp	x1, #0x8		/* Check EL2 state */
+	b.eq	2f
+	cmp	x1, #0x4		/* Check EL1 state */
+	b.eq	3f
+
+1:
+	msr	vbar_el3, x0
+	mov	x0, #1			/* Non-Secure EL0/1 */
+	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
+	msr	scr_el3, x0
+	msr	cptr_el3, xzr
+	b	done
+
+2:
+	msr	vbar_el2, x0
+	mov	x0, #0x33ff		/* Enable FP/SIMD */
+	msr	cptr_el2, x0
+	b	done
+
+
+3:
+	msr	vbar_el1, x0
+	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
+	msr	cpacr_el1, x0
+	b	done
+
+done:
+	ret
+
+ENDPROC(arm_cpu_lowlevel_init)
+#endif
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 2f6eab0..8fcdb64 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -1,9 +1,18 @@
 #ifndef __ASM_CACHE_H
 #define __ASM_CACHE_H
 
+#ifdef CONFIG_CPU_64v8
+extern void v8_invalidate_icache_all(void);
+extern void v8_dcache_all(void);
+#endif
+
 static inline void flush_icache(void)
 {
+#if __LINUX_ARM_ARCH__ <= 7
 	asm volatile("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+#else
+	v8_invalidate_icache_all();
+#endif
 }
 
 int arm_set_cache_functions(void);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
