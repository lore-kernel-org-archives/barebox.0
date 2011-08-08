Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001F0-N1
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:43 +0200
Message-Id: <1312786003-14734-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: some cleanup in interrupts.c
To: barebox@lists.infradead.org

- Don't call panic with "resetting CPU...". Depending on the
  configuration the system might also hang.
- panic does not return, so no need to call reset_cpu afterwards
- bundle show_regs and panic into a seperate functions to not have
  to call both functions from each exception handler

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c |   43 +++++++++++++++++++++----------------------
 1 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 0c21bc1..3d2077f 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -30,15 +30,6 @@
 #include <asm/unwind.h>
 
 /**
- * FIXME
- */
-static void bad_mode (void)
-{
-	panic ("Resetting CPU ...\n");
-	reset_cpu (0);
-}
-
-/**
  * Display current register set content
  * @param[in] regs Guess what
  */
@@ -82,6 +73,13 @@ void show_regs (struct pt_regs *regs)
 #endif
 }
 
+static void __noreturn do_exception(struct pt_regs *pt_regs)
+{
+	show_regs(pt_regs);
+
+	panic("");
+}
+
 /**
  * The CPU runs into an undefined instruction. That really should not happen!
  * @param[in] pt_regs Register set content when the accident happens
@@ -89,8 +87,7 @@ void show_regs (struct pt_regs *regs)
 void do_undefined_instruction (struct pt_regs *pt_regs)
 {
 	printf ("undefined instruction\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	do_exception(pt_regs);
 }
 
 /**
@@ -103,8 +100,7 @@ void do_undefined_instruction (struct pt_regs *pt_regs)
 void do_software_interrupt (struct pt_regs *pt_regs)
 {
 	printf ("software interrupt\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	do_exception(pt_regs);
 }
 
 /**
@@ -116,8 +112,7 @@ void do_software_interrupt (struct pt_regs *pt_regs)
 void do_prefetch_abort (struct pt_regs *pt_regs)
 {
 	printf ("prefetch abort\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	do_exception(pt_regs);
 }
 
 /**
@@ -128,9 +123,15 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
-	printf ("data abort\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	u32 far;
+
+	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
+
+	printf("unable to handle %s at address 0x%08x\n",
+			far < PAGE_SIZE ? "NULL pointer dereference" :
+			"paging request", far);
+
+	do_exception(pt_regs);
 }
 
 /**
@@ -142,8 +143,7 @@ void do_data_abort (struct pt_regs *pt_regs)
 void do_fiq (struct pt_regs *pt_regs)
 {
 	printf ("fast interrupt request\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	do_exception(pt_regs);
 }
 
 /**
@@ -155,6 +155,5 @@ void do_fiq (struct pt_regs *pt_regs)
 void do_irq (struct pt_regs *pt_regs)
 {
 	printf ("interrupt request\n");
-	show_regs (pt_regs);
-	bad_mode ();
+	do_exception(pt_regs);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
