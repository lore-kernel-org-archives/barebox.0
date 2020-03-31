Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKVN-0000lf-7g
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 17:16:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id f206so10601042pfa.10
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 10:16:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 10:16:32 -0700
Message-Id: <20200331171632.7031-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Drop unused marcros in exceptions.S
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Those macrs looks like a leftover from the time Barebox had some code
to deal with IRQs. That code is gone and there are no users for those
marcros in the codebase anymore. Drop them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/exceptions.S | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index eda0d6ab8..55014c8d4 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -55,26 +55,6 @@
 	mov	r0, sp
 	.endm

-	.macro	irq_save_user_regs
-	sub	sp, sp, #S_FRAME_SIZE
-	stmia	sp, {r0 - r12}			@ Calling r0-r12
-	add     r8, sp, #S_PC
-	stmdb   r8, {sp, lr}^                   @ Calling SP, LR
-	str     lr, [r8, #0]                    @ Save calling PC
-	mrs     r6, spsr
-	str     r6, [r8, #4]                    @ Save CPSR
-	str     r0, [r8, #8]                    @ Save OLD_R0
-	mov	r0, sp
-	.endm
-
-	.macro	irq_restore_user_regs
-	ldmia	sp, {r0 - lr}^			@ Calling r0 - lr
-	mov	r0, r0
-	ldr	lr, [sp, #S_PC]			@ Get PC
-	add	sp, sp, #S_FRAME_SIZE
-	subs	pc, lr, #4			@ return & move spsr_svc into cpsr
-	.endm
-
 	.macro get_bad_stack
 	ldr	r13, =abort_stack
 	str	lr, [r13]			@ save caller lr / spsr
@@ -103,14 +83,6 @@
 do_abort_\@:
 	.endm

-	.macro get_irq_stack			@ setup IRQ stack
-	ldr	sp, IRQ_STACK_START
-	.endm
-
-	.macro get_fiq_stack			@ setup FIQ stack
-	ldr	sp, FIQ_STACK_START
-	.endm
-
 /*
  * exception handlers
  */
--
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
