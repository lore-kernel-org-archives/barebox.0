Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqU7-0002Cv-Tq
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:13:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Oct 2012 09:13:37 +0200
Message-Id: <1349853217-19085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM exceptions: Do not use hardcoded STACK_BASE
To: barebox@lists.infradead.org

The exception handlers need some space to write to. Traditionally
this has been some stack space. This is not necessary at all, so
just use some variable and get rid of the compile time fixed stack
address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S |   15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 7f94f9f..fe63a37 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -37,9 +37,6 @@
 #define MODE_SVC	0x13
 #define I_BIT		0x80
 
-_STACK_START:
-	.word STACK_BASE + STACK_SIZE - 4
-
 /*
  * use bad_save_user_regs for abort/prefetch/undef/swi ...
  * use irq_save_user_regs / irq_restore_user_regs for IRQ/FIQ handling
@@ -48,8 +45,7 @@ _STACK_START:
 	.macro	bad_save_user_regs
 	sub	sp, sp, #S_FRAME_SIZE
 	stmia	sp, {r0 - r12}			@ Calling r0-r12
-	ldr	r2, _STACK_START
-	sub	r2, r2, #(8)  @ set base 2 words into abort stack
+	ldr	r2, =abort_stack
 	ldmia	r2, {r2 - r3}			@ get pc, cpsr
 	add	r0, sp, #S_FRAME_SIZE		@ restore sp_SVC
 
@@ -80,9 +76,7 @@ _STACK_START:
 	.endm
 
 	.macro get_bad_stack
-	ldr	r13, _STACK_START
-	sub	r13, r13, #(8) @ reserved a couple spots in abort stack
-
+	ldr	r13, =abort_stack
 	str	lr, [r13]			@ save caller lr / spsr
 	mrs	lr, spsr
 	str     lr, [r13, #4]
@@ -163,3 +157,8 @@ fiq:
 1:	b 1b				/* irq (interrupt) */
 1:	b 1b				/* fiq (fast interrupt) */
 #endif
+
+.section .data
+.align 4
+abort_stack:
+.space 8
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
