Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Ew-Iv
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:39 +0200
Message-Id: <1312786003-14734-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ARM: remove unused exception
To: barebox@lists.infradead.org

The exception vector at 0x14 is not used on arm, so no need
to bind this address to a exception handler. Remove the
corresponding code

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S |    5 -----
 arch/arm/cpu/interrupts.c |   13 -------------
 arch/arm/cpu/start.c      |    2 +-
 3 files changed, 1 insertions(+), 19 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 4741bb8..a879755 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -136,11 +136,6 @@ data_abort:
 	bl 	do_data_abort
 
 	.align	5
-.globl not_used
-not_used:
-	get_bad_stack
-	bad_save_user_regs
-	bl 	do_not_used
 
 .globl irq
 .globl fiq
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 5168921..68b2931 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -173,19 +173,6 @@ void do_data_abort (struct pt_regs *pt_regs)
 }
 
 /**
- * The CPU catches a not-used(?) abort.
- * @param[in] pt_regs Register set content when the accident happens
- *
- * FIXME: What does it mean, why is reset the only solution?
- */
-void do_not_used (struct pt_regs *pt_regs)
-{
-	printf ("not used\n");
-	show_regs (pt_regs);
-	bad_mode ();
-}
-
-/**
  * The CPU catches a fast interrupt request.
  * @param[in] pt_regs Register set content when the interrupt happens
  *
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f20ce74..5e09300 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -36,7 +36,7 @@ void __naked __section(.text_entry) exception_vectors(void)
 		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
 		"ldr pc, =prefetch_abort\n"		/* prefetch abort */
 		"ldr pc, =data_abort\n"			/* data abort */
-		"ldr pc, =not_used\n"			/* (reserved) */
+		"1: bne 1b\n"				/* (reserved) */
 		"ldr pc, =irq\n"			/* irq (interrupt) */
 		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
 #else
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
