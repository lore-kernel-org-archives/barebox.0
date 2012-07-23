Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StQiv-0007Vk-S5
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 22:03:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Jul 2012 00:03:05 +0200
Message-Id: <1343080985-4068-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: move exception vector table to exceptions.S
To: barebox@lists.infradead.org

start.c has nothing to do with the exception vector table anymore,
so move it next to the exception handling code in exceptions.S

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S |   28 +++++++++++++++++++---------
 arch/arm/cpu/start.c      |   25 -------------------------
 2 files changed, 19 insertions(+), 34 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index c08537a..7f94f9f 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -109,39 +109,30 @@ _STACK_START:
 	.arm
 
 	.align  5
-.globl undefined_instruction
 undefined_instruction:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_undefined_instruction
 
 	.align	5
-.globl software_interrupt
 software_interrupt:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_software_interrupt
 
 	.align	5
-.globl prefetch_abort
 prefetch_abort:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_prefetch_abort
 
 	.align	5
-.globl data_abort
 data_abort:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_data_abort
 
 	.align	5
-
-.globl irq
-.globl fiq
-
-	.align	5
 irq:
 	get_bad_stack
 	bad_save_user_regs
@@ -153,3 +144,22 @@ fiq:
 	bad_save_user_regs
 	bl 	do_fiq
 
+.section .text_exceptions
+1:	b 1b				/* reset */
+#ifdef CONFIG_ARM_EXCEPTIONS
+	ldr pc, =undefined_instruction	/* undefined instruction */
+	ldr pc, =software_interrupt	/* software interrupt (SWI) */
+	ldr pc, =prefetch_abort		/* prefetch abort */
+	ldr pc, =data_abort		/* data abort */
+1:	b 1b				/* (reserved) */
+	ldr pc, =irq			/* irq (interrupt) */
+	ldr pc, =fiq			/* fiq (fast interrupt) */
+#else
+1:	b 1b				/* undefined instruction */
+1:	b 1b				/* software interrupt (SWI) */
+1:	b 1b				/* prefetch abort */
+1:	b 1b				/* data abort */
+1:	b 1b				/* (reserved) */
+1:	b 1b				/* irq (interrupt) */
+1:	b 1b				/* fiq (fast interrupt) */
+#endif
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index cabe4d2..112403e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -33,31 +33,6 @@ void __naked __section(.text_entry) start(void)
 	barebox_arm_head();
 }
 
-void __naked __section(.text_exceptions) exception_vectors(void)
-{
-	__asm__ __volatile__ (
-		".arm\n"
-		"b reset\n"				/* reset */
-#ifdef CONFIG_ARM_EXCEPTIONS
-		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
-		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
-		"ldr pc, =prefetch_abort\n"		/* prefetch abort */
-		"ldr pc, =data_abort\n"			/* data abort */
-		"1: b 1b\n"				/* (reserved) */
-		"ldr pc, =irq\n"			/* irq (interrupt) */
-		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
-#else
-		"1: b 1b\n"				/* undefined instruction */
-		"1: b 1b\n"				/* software interrupt (SWI) */
-		"1: b 1b\n"				/* prefetch abort */
-		"1: b 1b\n"				/* data abort */
-		"1: b 1b\n"				/* (reserved) */
-		"1: b 1b\n"				/* irq (interrupt) */
-		"1: b 1b\n"				/* fiq (fast interrupt) */
-#endif
-	);
-}
-
 /*
  * The actual reset vector. This code is position independent and usually
  * does not run at the address it's linked at.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
