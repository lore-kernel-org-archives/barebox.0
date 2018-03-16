Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BW-1W
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:29 +0100
Message-Id: <20180316125354.23462-54-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 53/78] ARM: aarch64: move aarch64 exception support to
 separate file
To: Barebox List <barebox@lists.infradead.org>

The exception support for arm32 and aarch64 does not have much in
common. Move aarch64 exception support to a separate file to avoid
more ifdeffery.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile        |   3 +-
 arch/arm/cpu/interrupts.c    |  48 +-----------------
 arch/arm/cpu/interrupts_64.c | 116 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 118 insertions(+), 49 deletions(-)
 create mode 100644 arch/arm/cpu/interrupts_64.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index b2fed2be51..eb783481ea 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,6 +1,6 @@
 obj-y += cpu.o
 
-obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o
+obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o
 lwl-y += lowlevel$(S64).o
 
@@ -8,7 +8,6 @@ ifeq ($(CONFIG_CPU_32), y)
 obj-pbl-$(CONFIG_MMU) += mmu-early.o
 endif
 
-obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
 obj-y += start.o entry.o
 
 obj-pbl-y += setupc$(S64).o
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index c34108a4f8..73f023bd71 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -26,9 +26,8 @@
 #include <abort.h>
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
+#include <init.h>
 
-
-#if __LINUX_ARM_ARCH__ <= 7
 /**
  * Display current register set content
  * @param[in] regs Guess what
@@ -72,13 +71,10 @@ void show_regs (struct pt_regs *regs)
 	unwind_backtrace(regs);
 #endif
 }
-#endif
 
 static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
-#if __LINUX_ARM_ARCH__ <= 7
 	show_regs(pt_regs);
-#endif
 
 	panic("");
 }
@@ -126,8 +122,6 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
-
-#if __LINUX_ARM_ARCH__ <= 7
 	u32 far;
 
 	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
@@ -135,7 +129,6 @@ void do_data_abort (struct pt_regs *pt_regs)
 	printf("unable to handle %s at address 0x%08x\n",
 			far < PAGE_SIZE ? "NULL pointer dereference" :
 			"paging request", far);
-#endif
 
 	do_exception(pt_regs);
 }
@@ -164,45 +157,6 @@ void do_irq (struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
-#ifdef CONFIG_CPU_64v8
-void do_bad_sync(struct pt_regs *pt_regs)
-{
-	printf("bad sync\n");
-	do_exception(pt_regs);
-}
-
-void do_bad_irq(struct pt_regs *pt_regs)
-{
-	printf("bad irq\n");
-	do_exception(pt_regs);
-}
-
-void do_bad_fiq(struct pt_regs *pt_regs)
-{
-	printf("bad fiq\n");
-	do_exception(pt_regs);
-}
-
-void do_bad_error(struct pt_regs *pt_regs)
-{
-	printf("bad error\n");
-	do_exception(pt_regs);
-}
-
-void do_sync(struct pt_regs *pt_regs)
-{
-	printf("sync exception\n");
-	do_exception(pt_regs);
-}
-
-
-void do_error(struct pt_regs *pt_regs)
-{
-	printf("error exception\n");
-	do_exception(pt_regs);
-}
-#endif
-
 extern volatile int arm_ignore_data_abort;
 extern volatile int arm_data_abort_occurred;
 
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
new file mode 100644
index 0000000000..81fd941cfa
--- /dev/null
+++ b/arch/arm/cpu/interrupts_64.c
@@ -0,0 +1,116 @@
+/*
+ * interrupts_64.c - Interrupt Support Routines
+ *
+ * Copyright (c) 2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <abort.h>
+#include <asm/ptrace.h>
+#include <asm/unwind.h>
+#include <init.h>
+
+/**
+ * Display current register set content
+ * @param[in] regs Guess what
+ */
+void show_regs(struct pt_regs *regs)
+{
+}
+
+static void __noreturn do_exception(struct pt_regs *pt_regs)
+{
+	show_regs(pt_regs);
+
+	panic("");
+}
+
+/**
+ * The CPU catches a fast interrupt request.
+ * @param[in] pt_regs Register set content when the interrupt happens
+ *
+ * We never enable FIQs, so this should not happen
+ */
+void do_fiq(struct pt_regs *pt_regs)
+{
+	printf ("fast interrupt request\n");
+	do_exception(pt_regs);
+}
+
+/**
+ * The CPU catches a regular interrupt.
+ * @param[in] pt_regs Register set content when the interrupt happens
+ *
+ * We never enable interrupts, so this should not happen
+ */
+void do_irq(struct pt_regs *pt_regs)
+{
+	printf ("interrupt request\n");
+	do_exception(pt_regs);
+}
+
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
+
+extern volatile int arm_ignore_data_abort;
+extern volatile int arm_data_abort_occurred;
+
+void data_abort_mask(void)
+{
+	arm_data_abort_occurred = 0;
+	arm_ignore_data_abort = 1;
+}
+
+int data_abort_unmask(void)
+{
+	arm_ignore_data_abort = 0;
+
+	return arm_data_abort_occurred != 0;
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
