Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YR2p8-0001Bj-76
 for barebox@lists.infradead.org; Thu, 26 Feb 2015 18:06:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2015 19:05:44 +0100
Message-Id: <1424973945-8008-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
References: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: Allow to mask data aborts
To: Barebox List <barebox@lists.infradead.org>

Sometimes it's useful to test if a memory operation works or
aborts. This adds data_abort_mask() to ignore data aborts and
data_abort_unmask() to enable them again. This is used in the
next step for the 'md' command so that illegal addresses just
show 'xxxxxxxx' instead of crashing the system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S      | 22 ++++++++++++++++++++++
 arch/arm/cpu/interrupts.c      | 17 +++++++++++++++++
 arch/arm/include/asm/barebox.h |  4 ++++
 include/abort.h                | 37 +++++++++++++++++++++++++++++++++++++
 4 files changed, 80 insertions(+)
 create mode 100644 include/abort.h

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 167c8d1..51c3903 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -88,6 +88,21 @@
 	movs	pc, lr
 	.endm
 
+	.macro try_data_abort
+	ldr	r13, =arm_ignore_data_abort	@ check try mode
+	ldr	r13, [r13]
+	cmp	r13, #0
+	beq	do_abort_\@
+	ldr	r13, =arm_data_abort_occured
+	str	r13, [r13]
+	mrs	r13, spsr			@ read saved CPSR
+	tst	r13, #1<<5			@ check Thumb mode
+	subeq	lr, #4				@ next ARM instr
+	subne	lr, #6				@ next Thumb instr
+	movs	pc, lr
+do_abort_\@:
+	.endm
+
 	.macro get_irq_stack			@ setup IRQ stack
 	ldr	sp, IRQ_STACK_START
 	.endm
@@ -122,6 +137,7 @@ prefetch_abort:
 
 	.align	5
 data_abort:
+	try_data_abort
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_data_abort
@@ -202,5 +218,11 @@ _fiq: .word fiq
 
 .section .data
 .align 4
+.global arm_ignore_data_abort
+arm_ignore_data_abort:
+.word arm_ignore_data_abort /* When != 0 data aborts are ignored */
+.global arm_data_abort_occured
+arm_data_abort_occured:
+.word arm_data_abort_occured /* set != 0 by the data abort handler */
 abort_stack:
 .space 8
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 6e60adc..8064776 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -23,6 +23,7 @@
  */
 
 #include <common.h>
+#include <abort.h>
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 
@@ -161,3 +162,19 @@ void do_irq (struct pt_regs *pt_regs)
 	printf ("interrupt request\n");
 	do_exception(pt_regs);
 }
+
+extern volatile int arm_ignore_data_abort;
+extern volatile int arm_data_abort_occured;
+
+void data_abort_mask(void)
+{
+	arm_data_abort_occured = 0;
+	arm_ignore_data_abort = 1;
+}
+
+int data_abort_unmask(void)
+{
+	arm_ignore_data_abort = 0;
+
+	return arm_data_abort_occured;
+}
diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
index 2b08d68..31a8e15 100644
--- a/arch/arm/include/asm/barebox.h
+++ b/arch/arm/include/asm/barebox.h
@@ -5,4 +5,8 @@
 #define ARCH_HAS_STACK_DUMP
 #endif
 
+#ifdef CONFIG_ARM_EXCEPTIONS
+#define ARCH_HAS_DATA_ABORT_MASK
+#endif
+
 #endif	/* _BAREBOX_H_ */
diff --git a/include/abort.h b/include/abort.h
new file mode 100644
index 0000000..7f14cb0
--- /dev/null
+++ b/include/abort.h
@@ -0,0 +1,37 @@
+#ifndef __ABORT_H
+#define __ABORT_H
+
+#include <asm/barebox.h>
+
+#ifdef ARCH_HAS_DATA_ABORT_MASK
+
+/*
+ * data_abort_mask - ignore data aborts
+ *
+ * If data aborts are ignored the data abort handler
+ * will just return.
+ */
+void data_abort_mask(void);
+
+/*
+ * data_abort_unmask - Enable data aborts
+ *
+ * returns true if a data abort has happened between calling data_abort_mask()
+ * and data_abort_unmask()
+ */
+int data_abort_unmask(void);
+
+#else
+
+static inline void data_abort_mask(void)
+{
+}
+
+static inline int data_abort_unmask(void)
+{
+	return 0;
+}
+
+#endif
+
+#endif /* __ABORT_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
