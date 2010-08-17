Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by casper.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlJ8D-0002Z2-VF
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 10:11:02 +0000
Received: by gxk27 with SMTP id 27so2871323gxk.36
	for <barebox@lists.infradead.org>; Tue, 17 Aug 2010 03:10:07 -0700 (PDT)
Message-ID: <4C6A5FE9.5050303@gmail.com>
Date: Tue, 17 Aug 2010 05:09:45 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <4C6A074A.4050606@gmail.com>
	<20100817063554.GR27749@pengutronix.de>
	<20100817065024.GT27749@pengutronix.de>
In-Reply-To: <20100817065024.GT27749@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------010608060407030609070102"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: omap3: omap3530_beagle_per_uart_defconfig broken
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This is a multi-part message in MIME format.
--------------010608060407030609070102
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/17/2010 01:50 AM, Sascha Hauer wrote:
> On Tue, Aug 17, 2010 at 08:35:54AM +0200, Sascha Hauer wrote:
>> On Mon, Aug 16, 2010 at 10:51:38PM -0500, Nishanth Menon wrote:
>>> Hi,
>>> while just giving the omap3530 boot from internal sram a whirl, found that
>>>
>>> commit 78104ae181f78d83664fdc7522eb632d9c3b2ec9
>>> Author: Sascha Hauer<s.hauer@pengutronix.de>
>>> Date:   Fri Apr 16 15:50:30 2010 +0200
>>>
>>>      arm: reimplement startup code in C
>>>
>>>      Lets translate the startup code to a language we all understand better.
>>>      Tested on pcm038 (arm v5) and pcm043 (arm v6).
>>>
>>>      Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
>>>
>>> broke the support for OMAP3530 internal boot capability ->  it looks like
>>> many of the V7Dcache skip logic got dropped off in the patch. will try
>>> to fix it ahead.. reverting this commit helps the barebox master..
>>
>> We worked on Omap lately. I remember that there was a problem with the
>> call to arch_init_lowlevel. Michael, do you have input on this?
>
> This commit indeed broke omap because the call to arch_init_lowlevel was
> missing afterwards. This got fixed with 3aa5c83. Maybe you have a
> different problem and stumbled upon this commit while bisecting. You
> could try checking out 78104ae181f78d83664fdc7522eb632d9c3b2ec9 and
> cherry-pick 3aa5c83. Does this work?

will try later tonight (but I doubt it - I had tried master and next - 
it did not build yesterday due to ehci/otg changes, but those have 
patches from Michael today), but to give an idea, attached is my revert 
patch I applied(against master), but if you see there are two parts 
between arch_init_lowlevel and board_init_lowlevel:
cache invalidate
and configuration of cache

Just glancing, cache invalidate logic that got introduced is the 
v4/v5(?) logic I guess, not the v7 logic. let me see later tonight if 
there is a cleaner way to do it..

Regards,
Nishanth Menon

--------------010608060407030609070102
Content-Type: text/x-diff;
 name="0001-Revert-arm-reimplement-startup-code-in-C.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0001-Revert-arm-reimplement-startup-code-in-C.patch"

From e58e78fde4b1b2ae20e895a14c675f80f951dc32 Mon Sep 17 00:00:00 2001
From: Nishanth Menon <nm@ti.com>
Date: Mon, 16 Aug 2010 22:46:04 -0500
Subject: [PATCH] Revert "arm: reimplement startup code in C"

This reverts commit 78104ae181f78d83664fdc7522eb632d9c3b2ec9.

Conflicts:

	arch/arm/cpu/start.c
	arch/arm/include/asm/barebox-arm.h

Signed-off-by: Nishanth Menon <nm@ti.com>
---
 arch/arm/cpu/Makefile      |    6 +-
 arch/arm/cpu/start-arm.S   |  250 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/start.c       |  114 --------------------
 arch/arm/lib/barebox.lds.S |    2 +-
 4 files changed, 256 insertions(+), 116 deletions(-)
 create mode 100644 arch/arm/cpu/start-arm.S
 delete mode 100644 arch/arm/cpu/start.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 036768e..ae1f762 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,11 +1,15 @@
 obj-y += cpu.o
 obj-y += exceptions.o
 obj-y += interrupts.o
-obj-y += start.o
 
 #
 # Any variants can be called as start-armxyz.S
 #
+obj-$(CONFIG_CPU_ARM920T) += start-arm.o
+obj-$(CONFIG_CPU_ARM926T) += start-arm.o
+obj-$(CONFIG_CPU_V7) += start-arm.o
+obj-$(CONFIG_ARCH_IMX31) += start-arm.o
+obj-$(CONFIG_ARCH_IMX35) += start-arm.o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
diff --git a/arch/arm/cpu/start-arm.S b/arch/arm/cpu/start-arm.S
new file mode 100644
index 0000000..393e648
--- /dev/null
+++ b/arch/arm/cpu/start-arm.S
@@ -0,0 +1,250 @@
+/*
+ *  armboot - Startup Code for ARM CPU-cores
+ *
+ *  Copyright (c) 2001	Marius Gr���ger <mag@sysgo.de>
+ *  Copyright (c) 2002	Alex Z���pke <azu@sysgo.de>
+ *  Copyright (c) 2002	Gary Jennejohn <gj@denx.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/**
+ * @file
+ * @brief The very basic beginning of each CPU after reset
+ *
+ * @note
+ * This reset code can be used at least for:
+ *  - ARM920T
+ *  - i.MX1
+ *  - i.MX27
+ *  - i.MX31
+ *
+ */
+	.section ".text_entry","ax"
+
+#include <config.h>
+#include <asm-generic/memory_layout.h>
+
+/*************************************************************************
+ * Jump vector table as in table 3.1 in [1]
+ *************************************************************************/
+
+.globl _start
+_start:
+	b       reset
+	ldr	pc, _undefined_instruction
+	ldr	pc, _software_interrupt
+	ldr	pc, _prefetch_abort
+	ldr	pc, _data_abort
+	ldr	pc, _not_used
+	ldr	pc, _irq
+	ldr	pc, _fiq
+
+.globl exception_vectors
+exception_vectors:
+_undefined_instruction:	.word undefined_instruction
+_software_interrupt:	.word software_interrupt
+_prefetch_abort:	.word prefetch_abort
+_data_abort:		.word data_abort
+_not_used:		.word not_used
+_irq:			.word irq
+_fiq:			.word fiq
+
+	.balignl 16,0xdeadbeef
+
+/*
+ *************************************************************************
+ *
+ * Startup Code (reset vector)
+ *
+ * do important init only if we don't start from memory!
+ * setup Memory and board specific bits prior to relocation.
+ * relocate armboot to ram
+ * setup stack
+ *
+ *************************************************************************
+ */
+
+/*
+ * These are defined in the board-specific linker script.
+ */
+.globl _barebox_start
+_barebox_start:
+	.word _start
+
+.globl _bss_start
+_bss_start:
+	.word __bss_start
+
+.globl _bss_end
+_bss_end:
+	.word _end
+
+
+_TEXT_BASE:
+	.word _stext
+
+_MALLOC_BASE:
+	.word MALLOC_BASE
+
+_STACK_START:
+	.word STACK_BASE + STACK_SIZE - 4
+
+#ifdef CONFIG_USE_IRQ
+/* IRQ stack memory */
+IRQ_STACK_START:
+	.word	STACK_BASE + CONFIG_STACKSIZE_IRQ - 4
+
+/* IRQ stack memory */
+FIQ_STACK_START:
+	.word STACK_BASE + CONFIG_STACKSIZE_IRQ + CONFIG_STACKSIZE_FIQ - 4
+#endif
+
+/*************************************************************************
+ * the actual reset code
+ *************************************************************************/
+reset:
+	/*
+	 * set the cpu to SVC32 mode
+	 */
+	mrs	r0,cpsr
+	bic	r0,r0,#0x1f
+	orr	r0,r0,#0xd3
+	msr	cpsr,r0
+
+#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
+	bl	arch_init_lowlevel
+#endif
+
+#ifdef CONFIG_CPU_V7
+	/*
+	 * Invalidate v7 I/D caches
+	 */
+	mov	r0, #0			/* set up for MCR */
+	mcr	p15, 0, r0, c8, c7, 0	/* invalidate TLBs */
+	mcr	p15, 0, r0, c7, c5, 0	/* invalidate icache */
+	/* Invalidate all Dcaches */
+#ifndef CONFIG_CPU_V7_DCACHE_SKIP
+	/* If Arch specific ROM code SMI handling does not exist */
+	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
+	ands	r3, r0, #0x7000000	/* extract loc from clidr */
+	mov	r3, r3, lsr #23		/* left align loc bit field */
+	beq	finished_inval		/* if loc is 0, then no need to clean */
+	mov	r10, #0			/* start clean at cache level 0 */
+inval_loop1:
+	add	r2, r10, r10, lsr #1	/* work out 3x current cache level */
+	mov	r1, r0, lsr r2		/* extract cache type bits from clidr */
+	and	r1, r1, #	7	/* mask of the bits for current cache only */
+	cmp	r1, #2			/* see what cache we have at this level */
+	blt	skip_inval		/* skip if no cache, or just i-cache */
+	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
+	isb				/* isb to sych the new cssr&csidr */
+	mrc	p15, 1, r1, c0, c0, 0	/* read the new csidr */
+	and	r2, r1, #7		/* extract the length of the cache lines */
+	add	r2, r2, #4		/* add 4 (line length offset) */
+	ldr	r4, =0x3ff
+	ands	r4, r4, r1, lsr #3	/* find maximum number on the way size*/
+	clz	r5, r4			/* find bit position of way size increment */
+	ldr	r7, =0x7fff
+	ands	r7, r7, r1, lsr #13	/* extract max number of the index size */
+inval_loop2:
+	mov	r9, r4			/* create working copy of max way size */
+inval_loop3:
+	orr	r11, r10, r9, lsl r5	/* factor way and cache number into r11*/
+	orr	r11, r11, r7, lsl r2	/* factor index number into r11 */
+	mcr	p15, 0, r11, c7, c6, 2	/* invalidate by set/way */
+	subs	r9, r9, #1		/* decrement the way */
+	bge	inval_loop3
+	subs	r7, r7, #1		/* decrement the index */
+	bge	inval_loop2
+skip_inval:
+	add	r10, r10, #2		/* increment cache number */
+	cmp	r3, r10
+	bgt	inval_loop1
+finished_inval:
+	mov	r10, #0			/* swith back to cache level 0 */
+	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
+	isb
+#endif /* CONFIG_CPU_V7_DCACHE_SKIP */
+
+#else
+	/*
+	 * flush v4 I/D caches
+	 */
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c7, 0	/* flush v3/v4 cache */
+	mcr	p15, 0, r0, c8, c7, 0	/* flush v4 TLB */
+#endif
+
+	/*
+	 * disable MMU stuff and caches
+	 */
+	mrc	p15, 0, r0, c1, c0, 0
+	bic	r0, r0, #0x00002300	/* clear bits 13, 9:8 (--V- --RS) */
+	bic	r0, r0, #0x00000087	/* clear bits 7, 2:0 (B--- -CAM) */
+	orr	r0, r0, #0x00000002	/* set bit 2 (A) Align */
+	orr	r0, r0, #0x00001000	/* set bit 12 (I) I-Cache */
+	mcr	p15, 0, r0, c1, c0, 0
+
+	/*
+	 * before relocating, we have to setup RAM timing
+	 * because memory timing is board-dependend, you will
+	 * find a lowlevel_init.S in your board directory.
+	 */
+#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+	bl	board_init_lowlevel
+#endif
+
+relocate:				/* relocate barebox to RAM	    */
+	adr	r0, _start		/* r0 <- current position of code   */
+	ldr	r1, _TEXT_BASE		/* test if we run from flash or RAM */
+	cmp	r0, r1			/* don't reloc during debug         */
+	beq	stack_setup
+
+	ldr	r2, _barebox_start
+	ldr	r3, _bss_start
+	sub	r2, r3, r2		/* r2 <- size of armboot            */
+	add	r2, r0, r2		/* r2 <- source end address         */
+
+copy_loop:
+	ldmia	r0!, {r3-r10}		/* copy from source address [r0]    */
+	stmia	r1!, {r3-r10}		/* copy to   target address [r1]    */
+	cmp	r0, r2			/* until source end addreee [r2]    */
+	ble	copy_loop
+
+	/* Set up the stack						    */
+stack_setup:
+	ldr	r0, _STACK_START
+	sub	sp, r0, #12		/* leave 3 words for abort-stack    */
+
+clear_bss:
+	ldr	r0, _bss_start		/* find start of bss segment        */
+	ldr	r1, _bss_end		/* stop here                        */
+	mov 	r2, #0x00000000		/* clear                            */
+
+clbss_l:
+	str	r2, [r0]		/* clear loop...                    */
+	add	r0, r0, #4
+	cmp	r0, r1
+	ble	clbss_l
+
+	ldr	pc, _start_armboot
+
+_start_armboot:
+	.word start_barebox
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
deleted file mode 100644
index 53d7ac1..0000000
--- a/arch/arm/cpu/start.c
+++ /dev/null
@@ -1,114 +0,0 @@
-/*
- * start-arm.c
- *
- * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <asm/barebox-arm.h>
-#include <asm/system.h>
-#include <asm-generic/memory_layout.h>
-
-void __naked __section(.text_entry) exception_vectors(void)
-{
-	__asm__ __volatile__ (
-		"b reset\n"				/* reset */
-		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
-		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
-		"ldr pc, =prefetch_abort\n"		/* prefetch abort */
-		"ldr pc, =data_abort\n"			/* data abort */
-		"ldr pc, =not_used\n"			/* (reserved) */
-		"ldr pc, =irq\n"			/* irq (interrupt) */
-		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
-	);
-}
-
-extern char __bss_start, _end;
-
-/*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
- */
-void __naked __bare_init reset(void)
-{
-	uint32_t r;
-
-	/* set the cpu to SVC32 mode */
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
-	r &= ~0x1f;
-	r |= 0xd3;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-	arch_init_lowlevel();
-#endif
-	__asm__ __volatile__ (
-		"bl __mmu_cache_flush;"
-		:
-		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
-	);
-
-	/* disable MMU stuff and caches */
-	r = get_cr();
-	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
-	r |= CR_A | CR_I;
-	set_cr(r);
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-	board_init_lowlevel();
-#endif
-	board_init_lowlevel_return();
-}
-
-/*
- * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this funtion directly.
- */
-void __naked __bare_init board_init_lowlevel_return(void)
-{
-	uint32_t r, addr;
-
-	/*
-	 * Get runtime address of this function. Do not
-	 * put any code above this.
-	 */
-	__asm__ __volatile__("1: adr %0, 1b":"=r"(addr));
-
-	/* Setup the stack */
-	r = STACK_BASE + STACK_SIZE - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-
-	/* Get start of binary image */
-	addr -= (uint32_t)&board_init_lowlevel_return - TEXT_BASE;
-
-	/* relocate to link address if necessary */
-	if (addr != TEXT_BASE)
-		memcpy((void *)TEXT_BASE, (void *)addr,
-				(unsigned int)&__bss_start - TEXT_BASE);
-
-	/* clear bss */
-	memset(&__bss_start, 0, &_end - &__bss_start);
-
-	/* call start_barebox with its absolute address */
-	r = (unsigned int)&start_barebox;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-}
-
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 5bee0a1..a5eaefa 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -26,7 +26,7 @@
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
-ENTRY(exception_vectors)
+ENTRY(_start)
 SECTIONS
 {
 	. = TEXT_BASE;
-- 
1.7.0.4


--------------010608060407030609070102
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------010608060407030609070102--
