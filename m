Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUvgC-00005i-I9
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 07:31:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 08:30:54 +0100
Message-Id: <1322465454-4178-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] remove irq support fragments
To: barebox@lists.infradead.org

We never had interrupt support in barebox and we have no plans to
add interrupt support. Even if we do I doubt the current fragments
of irq support are helpful, so remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S          |   21 ---
 arch/nios2/cpu/Makefile            |    1 -
 arch/nios2/cpu/cpu.c               |    3 -
 arch/nios2/cpu/exceptions.S        |    9 -
 arch/nios2/cpu/interrupts.c        |  140 --------------
 arch/nios2/lib/board.c             |    3 -
 arch/nios2/lib/bootm.c             |    4 -
 arch/ppc/lib/Makefile              |    1 -
 arch/ppc/lib/board.c               |    7 -
 arch/ppc/lib/interrupts.c          |  133 --------------
 arch/ppc/mach-mpc5xxx/Makefile     |    1 -
 arch/ppc/mach-mpc5xxx/interrupts.c |  349 ------------------------------------
 arch/ppc/mach-mpc5xxx/start.S      |    9 -
 arch/sandbox/os/common.c           |    8 -
 commands/bootm.c                   |    2 -
 drivers/net/macb.c                 |   13 --
 include/common.h                   |   19 --
 17 files changed, 0 insertions(+), 723 deletions(-)
 delete mode 100644 arch/nios2/cpu/interrupts.c
 delete mode 100644 arch/ppc/lib/interrupts.c
 delete mode 100644 arch/ppc/mach-mpc5xxx/interrupts.c

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index a879755..6f35d40 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -140,25 +140,6 @@ data_abort:
 .globl irq
 .globl fiq
 
-#ifdef CONFIG_USE_IRQ
-
-	.align	5
-irq:
-	get_irq_stack
-	irq_save_user_regs
-	bl 	do_irq
-	irq_restore_user_regs
-
-	.align	5
-fiq:
-	get_fiq_stack
-	/* someone ought to write a more effiction fiq_save_user_regs */
-	irq_save_user_regs
-	bl 	do_fiq
-	irq_restore_user_regs
-
-#else
-
 	.align	5
 irq:
 	get_bad_stack
@@ -171,5 +152,3 @@ fiq:
 	bad_save_user_regs
 	bl 	do_fiq
 
-#endif
-
diff --git a/arch/nios2/cpu/Makefile b/arch/nios2/cpu/Makefile
index f15c721..0b59ec5 100644
--- a/arch/nios2/cpu/Makefile
+++ b/arch/nios2/cpu/Makefile
@@ -1,6 +1,5 @@
 obj-y                 += start.o
 obj-y                 += exceptions.o
 obj-y                 += cpu.o
-obj-$(CONFIG_USE_IRQ) += interrupts.o
 obj-y                 += traps.o
 extra-y               += barebox.lds
diff --git a/arch/nios2/cpu/cpu.c b/arch/nios2/cpu/cpu.c
index 102b12e..44ddf3c 100644
--- a/arch/nios2/cpu/cpu.c
+++ b/arch/nios2/cpu/cpu.c
@@ -26,9 +26,6 @@
 
 void __noreturn reset_cpu(ulong ignored)
 {
-#ifdef CONFIG_USE_IRQ
-	disable_interrupts();
-#endif
 	/* indirect call to go beyond 256MB limitation of toolchain */
 	nios2_callr(RESET_ADDR);
 
diff --git a/arch/nios2/cpu/exceptions.S b/arch/nios2/cpu/exceptions.S
index 8e024ce..402e5af 100644
--- a/arch/nios2/cpu/exceptions.S
+++ b/arch/nios2/cpu/exceptions.S
@@ -82,16 +82,7 @@ _exception:
 	rdctl   et, ipending
 	beq     et, r0, 0f
 
-#ifdef CONFIG_USE_IRQ
-
-	/* HARDWARE INTERRUPT: Call interrupt handler */
-	movhi   r3, %hi(external_interrupt)
-	ori     r3, r3, %lo(external_interrupt)
-	mov     r4, sp    /* ptr to regs */
-	callr   r3
-#else
         br      _exception_return
-#endif
 
 	/* Return address fixup: execution resumes by re-issue of
 	 * interrupted instruction at ea-4 (ea == r29). Here we do
diff --git a/arch/nios2/cpu/interrupts.c b/arch/nios2/cpu/interrupts.c
deleted file mode 100644
index f443bfd..0000000
--- a/arch/nios2/cpu/interrupts.c
+++ /dev/null
@@ -1,140 +0,0 @@
-/*
- * (C) Copyright 2000-2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <nios2.h>
-#include <asm/nios2-io.h>
-#include <asm/types.h>
-#include <io.h>
-#include <asm/ptrace.h>
-#include <common.h>
-#include <command.h>
-#include <watchdog.h>
-
-/****************************************************************************/
-
-struct	irq_action {
-	interrupt_handler_t *handler;
-	void *arg;
-	int count;
-};
-
-static struct irq_action vecs[32];
-
-/****************************************************************************/
-
-int disable_interrupts(void)
-{
-	int val = rdctl(CTL_STATUS);
-	wrctl(CTL_STATUS, val & ~STATUS_IE);
-	return val & STATUS_IE;
-}
-
-void enable_interrupts(void)
-{
-	int val = rdctl(CTL_STATUS);
-	wrctl(CTL_STATUS, val | STATUS_IE);
-}
-
-void external_interrupt(struct pt_regs *regs)
-{
-	unsigned irqs;
-	struct irq_action *act;
-
-	/* Evaluate only irqs that are both enabled AND pending */
-	irqs = rdctl(CTL_IENABLE) & rdctl(CTL_IPENDING);
-	act = vecs;
-
-	/* Assume (as does the Nios2 HAL) that bit 0 is highest
-	 * priority. NOTE: There is ALWAYS a handler assigned
-	 * (the default if no other).
-	 */
-	while (irqs) {
-		if (irqs & 1) {
-			act->handler(act->arg);
-			act->count++;
-		}
-		irqs >>= 1;
-		act++;
-	}
-
-}
-
-static void def_hdlr(void *arg)
-{
-	unsigned irqs = rdctl(CTL_IENABLE);
-
-	/* Disable the individual interrupt -- with gratuitous
-	 * warning.
-	 */
-	irqs &= ~(1 << (int)arg);
-	wrctl(CTL_IENABLE, irqs);
-	printf("WARNING: Disabling unhandled interrupt: %d\n",
-			(int)arg);
-}
-
-/*************************************************************************/
-void irq_install_handler(int irq, interrupt_handler_t *hdlr, void *arg)
-{
-	int flag;
-	struct irq_action *act;
-	unsigned ena = rdctl(CTL_IENABLE);
-
-	if ((irq < 0) || (irq > 31))
-		return;
-	act = &vecs[irq];
-
-	flag = disable_interrupts();
-	if (hdlr) {
-		act->handler = hdlr;
-		act->arg = arg;
-		ena |= (1 << irq);		/* enable */
-	} else {
-		act->handler = def_hdlr;
-		act->arg = (void *)irq;
-		ena &= ~(1 << irq);		/* disable */
-	}
-	wrctl(CTL_IENABLE, ena);
-
-	if (flag)
-		enable_interrupts();
-}
-
-
-int interrupt_init(void)
-{
-	int i;
-
-	/* Assign the default handler to all */
-	for (i = 0; i < 32; i++) {
-		vecs[i].handler = def_hdlr;
-		vecs[i].arg = (void *)i;
-		vecs[i].count = 0;
-	}
-
-	enable_interrupts();
-	return 0;
-}
-
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index 07f045b..d50f05a 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -40,8 +40,5 @@ core_initcall(altera_mem_malloc_init);
 
 void arch_shutdown(void)
 {
-#ifdef CONFIG_USE_IRQ
-	disable_interrupts();
-#endif
 }
 
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index 34e2bd2..c38243f 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -43,10 +43,6 @@ static int do_bootm_linux(struct image_data *idata)
 
 	kernel = (void (*)(int, int, int, const char *))ntohl(os_header->ih_ep);
 
-#ifdef CONFIG_USE_IRQ
-	disable_interrupts();
-#endif
-
 	if (relocate_image(idata->os, (void *)ntohl(os_header->ih_load)))
 		return -1;
 
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index c35fd08..b611ddf 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -1,7 +1,6 @@
 obj-y += bat_rw.o
 obj-y += board.o
 obj-y += extable.o
-obj-$(CONFIG_USE_IRQ) += interrupts.o
 obj-y += kgdb.o
 obj-y += ppcstring.o
 obj-y += ticks.o
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 82ba458..0b610a5 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -63,13 +63,6 @@ void board_init_r (ulong end_of_ram)
 	 */
 	trap_init (0);
 
-	/*
-	 * Enable Interrupts
-	 */
-#ifdef CONFIG_USE_IRQ
-	interrupt_init ();
-#endif
-
 	/* Initialization complete - start the monitor */
 
 	start_barebox();
diff --git a/arch/ppc/lib/interrupts.c b/arch/ppc/lib/interrupts.c
deleted file mode 100644
index 72ddf36..0000000
--- a/arch/ppc/lib/interrupts.c
+++ /dev/null
@@ -1,133 +0,0 @@
-/*
- * (C) Copyright 2000-2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * (C) Copyright 2003
- * Gleb Natapov <gnatapov@mrv.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <asm/processor.h>
-#include <watchdog.h>
-#ifdef CONFIG_STATUS_LED
-#include <status_led.h>
-#endif
-
-#ifdef CONFIG_SHOW_ACTIVITY
-	extern void board_show_activity (ulong);
-#endif /* CONFIG_SHOW_ACTIVITY */
-
-#ifndef CFG_WATCHDOG_FREQ
-#define CFG_WATCHDOG_FREQ (CFG_HZ / 2)
-#endif
-
-extern int interrupt_init_cpu (unsigned *);
-extern void timer_interrupt_cpu (struct pt_regs *);
-
-static unsigned decrementer_count; /* count value for 1e6/HZ microseconds */
-
-static __inline__ unsigned long get_msr (void)
-{
-	unsigned long msr;
-
-	asm volatile ("mfmsr %0":"=r" (msr):);
-
-	return msr;
-}
-
-static __inline__ void set_msr (unsigned long msr)
-{
-	asm volatile ("mtmsr %0"::"r" (msr));
-}
-
-static __inline__ unsigned long get_dec (void)
-{
-	unsigned long val;
-
-	asm volatile ("mfdec %0":"=r" (val):);
-
-	return val;
-}
-
-
-static __inline__ void set_dec (unsigned long val)
-{
-	if (val)
-		asm volatile ("mtdec %0"::"r" (val));
-}
-
-
-void enable_interrupts (void)
-{
-	set_msr (get_msr () | MSR_EE);
-}
-
-/* returns flag if MSR_EE was set before */
-int disable_interrupts (void)
-{
-	ulong msr = get_msr ();
-
-	set_msr (msr & ~MSR_EE);
-	return ((msr & MSR_EE) != 0);
-}
-
-int interrupt_init (void)
-{
-	int ret;
-
-	/* call cpu specific function from $(CPU)/interrupts.c */
-	ret = interrupt_init_cpu (&decrementer_count);
-
-	if (ret)
-		return ret;
-
-	set_dec (decrementer_count);
-
-	set_msr (get_msr () | MSR_EE);
-
-	return (0);
-}
-
-static volatile ulong timestamp = 0;
-
-void timer_interrupt (struct pt_regs *regs)
-{
-	/* call cpu specific function from $(CPU)/interrupts.c */
-	timer_interrupt_cpu (regs);
-
-	/* Restore Decrementer Count */
-	set_dec (decrementer_count);
-
-	timestamp++;
-
-#if defined(CONFIG_WATCHDOG) || defined (CONFIG_HW_WATCHDOG)
-	if ((timestamp % (CFG_WATCHDOG_FREQ)) == 0)
-		WATCHDOG_RESET ();
-#endif    /* CONFIG_WATCHDOG || CONFIG_HW_WATCHDOG */
-
-#ifdef CONFIG_STATUS_LED
-	status_led_tick (timestamp);
-#endif /* CONFIG_STATUS_LED */
-
-#ifdef CONFIG_SHOW_ACTIVITY
-	board_show_activity (timestamp);
-#endif /* CONFIG_SHOW_ACTIVITY */
-}
diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/ppc/mach-mpc5xxx/Makefile
index e07062c..be68c99 100644
--- a/arch/ppc/mach-mpc5xxx/Makefile
+++ b/arch/ppc/mach-mpc5xxx/Makefile
@@ -5,7 +5,6 @@ obj-y				+= speed.o
 obj-y				+= traps.o
 extra-y				+= start.o
 obj-$(CONFIG_MPC5200)		+= firmware_sc_task_bestcomm.impl.o
-obj-$(CONFIG_USE_IRQ)	+= interrupts.o
 obj-$(CONFIG_REGINFO)		+= reginfo.o
 
 #obj-y				+= firmware_sc_task.impl.o
diff --git a/arch/ppc/mach-mpc5xxx/interrupts.c b/arch/ppc/mach-mpc5xxx/interrupts.c
deleted file mode 100644
index 4838bc5..0000000
--- a/arch/ppc/mach-mpc5xxx/interrupts.c
+++ /dev/null
@@ -1,349 +0,0 @@
-/*
- * (C) Copyright 2006
- * Detlev Zundel, DENX Software Engineering, dzu@denx.de
- *
- * (C) Copyright -2003
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * (C) Copyright 2001
- * Josh Huber <huber@mclx.com>, Mission Critical Linux, Inc.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-/* this section was ripped out of arch/ppc/syslib/mpc52xx_pic.c in the
- * Linux 2.6 source with the following copyright.
- *
- * Based on (well, mostly copied from) the code from the 2.4 kernel by
- * Dale Farnsworth <dfarnsworth@mvista.com> and Kent Borg.
- *
- * Copyright (C) 2004 Sylvain Munaut <tnt@246tNt.com>
- * Copyright (C) 2003 Montavista Software, Inc
- */
-
-#include <common.h>
-#include <asm/processor.h>
-#include <io.h>
-#include <command.h>
-#include <mach/sdma.h>
-#include <asm/bitops.h>
-#include <mach/clocks.h>
-
-struct irq_action {
-	interrupt_handler_t *handler;
-	void *arg;
-	ulong count;
-};
-
-static struct irq_action irq_handlers[NR_IRQS];
-
-static struct mpc5xxx_intr *intr;
-static struct mpc5xxx_sdma *sdma;
-
-static void mpc5xxx_ic_disable(unsigned int irq)
-{
-	u32 val;
-
-	if (irq == MPC5XXX_IRQ0) {
-		val = in_be32(&intr->ctrl);
-		val &= ~(1 << 11);
-		out_be32(&intr->ctrl, val);
-	} else if (irq < MPC5XXX_IRQ1) {
-		BUG();
-	} else if (irq <= MPC5XXX_IRQ3) {
-		val = in_be32(&intr->ctrl);
-		val &= ~(1 << (10 - (irq - MPC5XXX_IRQ1)));
-		out_be32(&intr->ctrl, val);
-	} else if (irq < MPC5XXX_SDMA_IRQ_BASE) {
-		val = in_be32(&intr->main_mask);
-		val |= 1 << (16 - (irq - MPC5XXX_MAIN_IRQ_BASE));
-		out_be32(&intr->main_mask, val);
-	} else if (irq < MPC5XXX_PERP_IRQ_BASE) {
-		val = in_be32(&sdma->IntMask);
-		val |= 1 << (irq - MPC5XXX_SDMA_IRQ_BASE);
-		out_be32(&sdma->IntMask, val);
-	} else {
-		val = in_be32(&intr->per_mask);
-		val |= 1 << (31 - (irq - MPC5XXX_PERP_IRQ_BASE));
-		out_be32(&intr->per_mask, val);
-	}
-}
-
-static void mpc5xxx_ic_enable(unsigned int irq)
-{
-	u32 val;
-
-	if (irq == MPC5XXX_IRQ0) {
-		val = in_be32(&intr->ctrl);
-		val |= 1 << 11;
-		out_be32(&intr->ctrl, val);
-	} else if (irq < MPC5XXX_IRQ1) {
-		BUG();
-	} else if (irq <= MPC5XXX_IRQ3) {
-		val = in_be32(&intr->ctrl);
-		val |= 1 << (10 - (irq - MPC5XXX_IRQ1));
-		out_be32(&intr->ctrl, val);
-	} else if (irq < MPC5XXX_SDMA_IRQ_BASE) {
-		val = in_be32(&intr->main_mask);
-		val &= ~(1 << (16 - (irq - MPC5XXX_MAIN_IRQ_BASE)));
-		out_be32(&intr->main_mask, val);
-	} else if (irq < MPC5XXX_PERP_IRQ_BASE) {
-		val = in_be32(&sdma->IntMask);
-		val &= ~(1 << (irq - MPC5XXX_SDMA_IRQ_BASE));
-		out_be32(&sdma->IntMask, val);
-	} else {
-		val = in_be32(&intr->per_mask);
-		val &= ~(1 << (31 - (irq - MPC5XXX_PERP_IRQ_BASE)));
-		out_be32(&intr->per_mask, val);
-	}
-}
-
-static void mpc5xxx_ic_ack(unsigned int irq)
-{
-	u32 val;
-
-	/*
-	 * Only some irqs are reset here, others in interrupting hardware.
-	 */
-
-	switch (irq) {
-	case MPC5XXX_IRQ0:
-		val = in_be32(&intr->ctrl);
-		val |= 0x08000000;
-		out_be32(&intr->ctrl, val);
-		break;
-	case MPC5XXX_CCS_IRQ:
-		val = in_be32(&intr->enc_status);
-		val |= 0x00000400;
-		out_be32(&intr->enc_status, val);
-		break;
-	case MPC5XXX_IRQ1:
-		val = in_be32(&intr->ctrl);
-		val |= 0x04000000;
-		out_be32(&intr->ctrl, val);
-		break;
-	case MPC5XXX_IRQ2:
-		val = in_be32(&intr->ctrl);
-		val |= 0x02000000;
-		out_be32(&intr->ctrl, val);
-		break;
-	case MPC5XXX_IRQ3:
-		val = in_be32(&intr->ctrl);
-		val |= 0x01000000;
-		out_be32(&intr->ctrl, val);
-		break;
-	default:
-		if (irq >= MPC5XXX_SDMA_IRQ_BASE
-		    && irq < (MPC5XXX_SDMA_IRQ_BASE + MPC5XXX_SDMA_IRQ_NUM)) {
-			out_be32(&sdma->IntPend,
-				 1 << (irq - MPC5XXX_SDMA_IRQ_BASE));
-		}
-		break;
-	}
-}
-
-static void mpc5xxx_ic_disable_and_ack(unsigned int irq)
-{
-	mpc5xxx_ic_disable(irq);
-	mpc5xxx_ic_ack(irq);
-}
-
-static void mpc5xxx_ic_end(unsigned int irq)
-{
-	mpc5xxx_ic_enable(irq);
-}
-
-void mpc5xxx_init_irq(void)
-{
-	u32 intr_ctrl;
-
-	/* Remap the necessary zones */
-	intr = (struct mpc5xxx_intr *)(MPC5XXX_ICTL);
-	sdma = (struct mpc5xxx_sdma *)(MPC5XXX_SDMA);
-
-	/* Disable all interrupt sources. */
-	out_be32(&sdma->IntPend, 0xffffffff);	/* 1 means clear pending */
-	out_be32(&sdma->IntMask, 0xffffffff);	/* 1 means disabled */
-	out_be32(&intr->per_mask, 0x7ffffc00);	/* 1 means disabled */
-	out_be32(&intr->main_mask, 0x00010fff);	/* 1 means disabled */
-	intr_ctrl = in_be32(&intr->ctrl);
-	intr_ctrl |= 0x0f000000 |	/* clear IRQ 0-3 */
-	    0x00ff0000 |	/* IRQ 0-3 level sensitive low active */
-	    0x00001000 |	/* MEE master external enable */
-	    0x00000000 |	/* 0 means disable IRQ 0-3 */
-	    0x00000001;		/* CEb route critical normally */
-	out_be32(&intr->ctrl, intr_ctrl);
-
-	/* Zero a bunch of the priority settings.  */
-	out_be32(&intr->per_pri1, 0);
-	out_be32(&intr->per_pri2, 0);
-	out_be32(&intr->per_pri3, 0);
-	out_be32(&intr->main_pri1, 0);
-	out_be32(&intr->main_pri2, 0);
-}
-
-int mpc5xxx_get_irq(struct pt_regs *regs)
-{
-	u32 status;
-	int irq = -1;
-
-	status = in_be32(&intr->enc_status);
-
-	if (status & 0x00000400) {	/* critical */
-		irq = (status >> 8) & 0x3;
-		if (irq == 2)	/* high priority peripheral */
-			goto peripheral;
-		irq += MPC5XXX_CRIT_IRQ_BASE;
-	} else if (status & 0x00200000) {	/* main */
-		irq = (status >> 16) & 0x1f;
-		if (irq == 4)	/* low priority peripheral */
-			goto peripheral;
-		irq += MPC5XXX_MAIN_IRQ_BASE;
-	} else if (status & 0x20000000) {	/* peripheral */
-	      peripheral:
-		irq = (status >> 24) & 0x1f;
-		if (irq == 0) {	/* bestcomm */
-			status = in_be32(&sdma->IntPend);
-			irq = ffs(status) + MPC5XXX_SDMA_IRQ_BASE - 1;
-		} else
-			irq += MPC5XXX_PERP_IRQ_BASE;
-	}
-
-	return irq;
-}
-
-/****************************************************************************/
-
-int interrupt_init_cpu(ulong * decrementer_count)
-{
-	*decrementer_count = get_timebase_clock() / 1000;
-
-	mpc5xxx_init_irq();
-
-	return 0;
-}
-
-/****************************************************************************/
-
-/*
- * Handle external interrupts
- */
-void external_interrupt(struct pt_regs *regs)
-{
-	int irq, unmask = 1;
-
-	irq = mpc5xxx_get_irq(regs);
-
-	mpc5xxx_ic_disable_and_ack(irq);
-
-	enable_interrupts();
-
-	if (irq_handlers[irq].handler != NULL)
-		(*irq_handlers[irq].handler) (irq_handlers[irq].arg);
-	else {
-		printf("\nBogus External Interrupt IRQ %d\n", irq);
-		/*
-		 * turn off the bogus interrupt, otherwise it
-		 * might repeat forever
-		 */
-		unmask = 0;
-	}
-
-	if (unmask)
-		mpc5xxx_ic_end(irq);
-}
-
-void timer_interrupt_cpu(struct pt_regs *regs)
-{
-	/* nothing to do here */
-	return;
-}
-
-/****************************************************************************/
-
-/*
- * Install and free a interrupt handler.
- */
-
-void irq_install_handler(int irq, interrupt_handler_t * handler, void *arg)
-{
-	if (irq < 0 || irq >= NR_IRQS) {
-		printf("irq_install_handler: bad irq number %d\n", irq);
-		return;
-	}
-
-	if (irq_handlers[irq].handler != NULL)
-		printf("irq_install_handler: 0x%08lx replacing 0x%08lx\n",
-		       (ulong) handler, (ulong) irq_handlers[irq].handler);
-
-	irq_handlers[irq].handler = handler;
-	irq_handlers[irq].arg = arg;
-
-	mpc5xxx_ic_enable(irq);
-}
-
-void irq_free_handler(int irq)
-{
-	if (irq < 0 || irq >= NR_IRQS) {
-		printf("irq_free_handler: bad irq number %d\n", irq);
-		return;
-	}
-
-	mpc5xxx_ic_disable(irq);
-
-	irq_handlers[irq].handler = NULL;
-	irq_handlers[irq].arg = NULL;
-}
-
-/****************************************************************************/
-
-#if (CONFIG_COMMANDS & CFG_CMD_IRQ)
-void do_irqinfo(struct command * cmdtp, bd_t * bd, int flag, int argc, char *argv[])
-{
-	int irq, re_enable;
-	u32 intr_ctrl;
-	char *irq_config[] = { "level sensitive, active high",
-		"edge sensitive, rising active edge",
-		"edge sensitive, falling active edge",
-		"level sensitive, active low"
-	};
-
-	re_enable = disable_interrupts();
-
-	intr_ctrl = in_be32(&intr->ctrl);
-	printf("Interrupt configuration:\n");
-
-	for (irq = 0; irq <= 3; irq++) {
-		printf("IRQ%d: %s\n", irq,
-		       irq_config[(intr_ctrl >> (22 - 2 * irq)) & 0x3]);
-	}
-
-	puts("\nInterrupt-Information:\n" "Nr  Routine   Arg       Count\n");
-
-	for (irq = 0; irq < NR_IRQS; irq++)
-		if (irq_handlers[irq].handler != NULL)
-			printf("%02d  %08lx  %08lx  %ld\n", irq,
-			       (ulong) irq_handlers[irq].handler,
-			       (ulong) irq_handlers[irq].arg,
-			       irq_handlers[irq].count);
-
-	if (re_enable)
-		enable_interrupts();
-}
-#endif
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index dc53c8a..7a4c16b 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -140,11 +140,6 @@ _start_of_vectors:
 /* Instruction Storage exception. */
 	STD_EXCEPTION(0x400, InstStorage, UnknownException)
 
-/* External Interrupt exception. */
-#ifdef CONFIG_USE_IRQ
-	STD_EXCEPTION(0x500, ExtInterrupt, external_interrupt)
-#endif
-
 /* Alignment exception. */
 	. = 0x600
 Alignment:
@@ -184,11 +179,7 @@ ProgramCheck:
 	/* I guess we could implement decrementer, and may have
 	 * to someday for timekeeping.
 	 */
-#ifdef CONFIG_USE_IRQ
-	STD_EXCEPTION(0x900, Decrementer, timer_interrupt)
-#else
 	STD_EXCEPTION(0x900, Decrementer, UnknownException)
-#endif
 	STD_EXCEPTION(0xa00, Trap_0a, UnknownException)
 	STD_EXCEPTION(0xb00, Trap_0b, UnknownException)
 	STD_EXCEPTION(0xc00, SystemCall, UnknownException)
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 5074a06..1c5ae5d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -124,14 +124,6 @@ void __attribute__((noreturn)) reset_cpu(unsigned long addr)
 	exit(0);
 }
 
-void enable_interrupts(void)
-{
-}
-
-void disable_interrupt(void)
-{
-}
-
 int linux_read(int fd, void *buf, size_t count)
 {
 	ssize_t ret;
diff --git a/commands/bootm.c b/commands/bootm.c
index f11138a..731b74d 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -331,8 +331,6 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	 * recover from any failures any more...
 	 */
 
-	disable_interrupts();
-
 	puts ("OK\n");
 
 	/* loop through the registered handlers */
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index c1f7f68..e1cfd85 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -302,18 +302,14 @@ static int macb_phy_read(struct mii_device *mdev, int addr, int reg)
 	unsigned long netctl;
 	unsigned long netstat;
 	unsigned long frame;
-	int iflag;
 	int value;
 	uint64_t start;
 
 	debug("%s\n", __func__);
 
-	iflag = disable_interrupts();
 	netctl = readl(macb->regs + MACB_NCR);
 	netctl |= MACB_BIT(MPE);
 	writel(netctl, macb->regs + MACB_NCR);
-	if (iflag)
-		enable_interrupts();
 
 	frame = (MACB_BF(SOF, 1)
 		 | MACB_BF(RW, 2)
@@ -334,12 +330,9 @@ static int macb_phy_read(struct mii_device *mdev, int addr, int reg)
 	frame = readl(macb->regs + MACB_MAN);
 	value = MACB_BFEXT(DATA, frame);
 
-	iflag = disable_interrupts();
 	netctl = readl(macb->regs + MACB_NCR);
 	netctl &= ~MACB_BIT(MPE);
 	writel(netctl, macb->regs + MACB_NCR);
-	if (iflag)
-		enable_interrupts();
 
 	return value;
 }
@@ -355,12 +348,9 @@ static int macb_phy_write(struct mii_device *mdev, int addr, int reg, int value)
 
 	debug("%s\n", __func__);
 
-	iflag = disable_interrupts();
 	netctl = readl(macb->regs + MACB_NCR);
 	netctl |= MACB_BIT(MPE);
 	writel(netctl, macb->regs + MACB_NCR);
-	if (iflag)
-		enable_interrupts();
 
 	frame = (MACB_BF(SOF, 1)
 		 | MACB_BF(RW, 1)
@@ -374,12 +364,9 @@ static int macb_phy_write(struct mii_device *mdev, int addr, int reg, int value)
 		netstat = readl(macb->regs + MACB_NSR);
 	} while (!(netstat & MACB_BIT(IDLE)));
 
-	iflag = disable_interrupts();
 	netctl = readl(macb->regs + MACB_NCR);
 	netctl &= ~MACB_BIT(MPE);
 	writel(netctl, macb->regs + MACB_NCR);
-	if (iflag)
-		enable_interrupts();
 
 	return 0;
 }
diff --git a/include/common.h b/include/common.h
index e34bbea..d63ad02 100644
--- a/include/common.h
+++ b/include/common.h
@@ -107,25 +107,6 @@ long	get_ram_size  (volatile long *, long);
 /* $(CPU)/cpu.c */
 void __noreturn reset_cpu(unsigned long addr);
 
-/* $(CPU)/interrupts.c */
-//void	timer_interrupt	   (struct pt_regs *);
-//void	external_interrupt (struct pt_regs *);
-void	irq_install_handler(int, interrupt_handler_t *, void *);
-void	irq_free_handler   (int);
-#ifdef CONFIG_USE_IRQ
-void	enable_interrupts  (void);
-int	disable_interrupts (void);
-#else
-static inline void enable_interrupts(void)
-{
-}
-
-static inline int disable_interrupts(void)
-{
-	return 0;
-}
-#endif
-
 /* lib_$(ARCH)/time.c */
 void	udelay (unsigned long);
 void	mdelay (unsigned long);
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
