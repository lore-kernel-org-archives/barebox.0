Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZiM-0001a6-7r
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 09:31:17 +0000
Received: from geraet.fritz.box (muedsl-82-207-203-222.citykom.de
 [82.207.203.222]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 0FF281C0019
 for <barebox@lists.infradead.org>; Wed,  1 Apr 2020 09:31:11 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  1 Apr 2020 11:31:03 +0200
Message-Id: <20200401093104.959691-4-ahmad@a3f.at>
In-Reply-To: <20200401093104.959691-1-ahmad@a3f.at>
References: <20200401093104.959691-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 3/4] ARM: rethrow CPU exceptions as sjlj-exceptions
To: barebox@lists.infradead.org

Having to differentiate between hardware and software exceptions is
confusing, especially for newcomers. Be more welcoming by just treating
them the same.

Reviewed-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/interrupts.c | 32 +++++++++-----------------------
 common/startup.c          | 32 ++++++++++++++++++++++++++++++--
 2 files changed, 39 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index b9b91f315312..497167e4d2ab 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -27,6 +27,7 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 #include <init.h>
+#include "exceptions.h"
 
 /* Avoid missing prototype warning, called from assembly */
 void do_undefined_instruction (struct pt_regs *pt_regs);
@@ -80,11 +81,9 @@ void show_regs (struct pt_regs *regs)
 #endif
 }
 
-static void __noreturn do_exception(struct pt_regs *pt_regs)
+static void __noreturn do_exception(int exception, struct pt_regs *pt_regs)
 {
-	show_regs(pt_regs);
-
-	panic("");
+	THROW_DATA(exception, NULL, XCEPT_DATA_NONDYN(pt_regs));
 }
 
 /**
@@ -93,8 +92,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
  */
 void do_undefined_instruction (struct pt_regs *pt_regs)
 {
-	printf ("undefined instruction\n");
-	do_exception(pt_regs);
+	do_exception(UndefinedInstructionException, pt_regs);
 }
 
 /**
@@ -106,8 +104,7 @@ void do_undefined_instruction (struct pt_regs *pt_regs)
  */
 void do_software_interrupt (struct pt_regs *pt_regs)
 {
-	printf ("software interrupt\n");
-	do_exception(pt_regs);
+	do_exception(SoftwareInterruptException, pt_regs);
 }
 
 /**
@@ -118,8 +115,7 @@ void do_software_interrupt (struct pt_regs *pt_regs)
  */
 void do_prefetch_abort (struct pt_regs *pt_regs)
 {
-	printf ("prefetch abort\n");
-	do_exception(pt_regs);
+	do_exception(PrefetchAbortException, pt_regs);
 }
 
 /**
@@ -130,15 +126,7 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
-	u32 far;
-
-	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
-
-	printf("unable to handle %s at address 0x%08x\n",
-			far < PAGE_SIZE ? "NULL pointer dereference" :
-			"paging request", far);
-
-	do_exception(pt_regs);
+	do_exception(DataAbortException, pt_regs);
 }
 
 /**
@@ -149,8 +137,7 @@ void do_data_abort (struct pt_regs *pt_regs)
  */
 void do_fiq (struct pt_regs *pt_regs)
 {
-	printf ("fast interrupt request\n");
-	do_exception(pt_regs);
+	do_exception(FiqException, pt_regs);
 }
 
 /**
@@ -161,8 +148,7 @@ void do_fiq (struct pt_regs *pt_regs)
  */
 void do_irq (struct pt_regs *pt_regs)
 {
-	printf ("interrupt request\n");
-	do_exception(pt_regs);
+	do_exception(IrqException, pt_regs);
 }
 
 extern volatile int arm_ignore_data_abort;
diff --git a/common/startup.c b/common/startup.c
index 41da1359def6..32f247c0276a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -45,6 +45,8 @@
 #include <console_countdown.h>
 #include <environment.h>
 #include <linux/ctype.h>
+#include <asm/unwind.h>
+#include <exceptions.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -370,13 +372,39 @@ void __noreturn start_barebox(void)
 			while (1)
 				run_shell();
 		}
-	} CATCH_ALL {
-		panic("Unhandled exception");
+	} CATCH_ERRORS {
+		unwind_backtrace(GET_DATA);
+	} CATCH(UndefinedInstructionException) {
+		printf ("undefined instruction\n");
+		show_regs(GET_DATA);
+	} CATCH(SoftwareInterruptException) {
+		printf ("software interrupt\n");
+		show_regs(GET_DATA);
+	} CATCH(PrefetchAbortException) {
+		printf ("prefetch abort\n");
+		show_regs(GET_DATA);
+	} CATCH(DataAbortException) {
+		u32 far;
+
+		asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
+
+		printf("unable to handle %s at address 0x%08x\n",
+				far < PAGE_SIZE ? "NULL pointer dereference" :
+				"paging request", far);
+
+		show_regs((void*)((unsigned long)GET_DATA & ~1U));
+	} CATCH(FiqException) {
+		printf ("fast interrupt request\n");
+		show_regs(GET_DATA);
+	} CATCH (IrqException) {
+		printf ("interrupt request\n");
+		show_regs(GET_DATA);
 	}
 
 
 	ENDTRY;
 
+	panic("Unhandled exception");
 }
 
 void __noreturn hang (void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
