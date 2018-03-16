Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosF-0008BZ-H9
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 60/78] ARM: aarch64: implement stacktraces
Date: Fri, 16 Mar 2018 13:53:36 +0100
Message-Id: <20180316125354.23462-61-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Implement stacktraces as a great debugging aid. On aarch64 this is cheap
enough to be enabled unconditionally. Unwinding code is taken from the
Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c      |  4 +-
 arch/arm/include/asm/barebox.h    |  4 +-
 arch/arm/include/asm/stacktrace.h |  2 +
 arch/arm/lib64/Makefile           |  1 +
 arch/arm/lib64/stacktrace.c       | 86 +++++++++++++++++++++++++++++++++++++++
 5 files changed, 95 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/lib64/stacktrace.c

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index ffdb87af94..9ed6ed9761 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -44,7 +44,9 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
 	show_regs(pt_regs);
 
-	panic("");
+	unwind_backtrace(pt_regs);
+
+	panic("panic: unhandled exception");
 }
 
 /**
diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
index 5a6622235b..4e89466593 100644
--- a/arch/arm/include/asm/barebox.h
+++ b/arch/arm/include/asm/barebox.h
@@ -2,9 +2,11 @@
 #define _BAREBOX_H_	1
 
 #ifdef CONFIG_ARM_UNWIND
-#ifndef CONFIG_CPU_V8
 #define ARCH_HAS_STACK_DUMP
 #endif
+
+#ifdef CONFIG_CPU_V8
+#define ARCH_HAS_STACK_DUMP
 #endif
 
 #ifdef CONFIG_ARM_EXCEPTIONS
diff --git a/arch/arm/include/asm/stacktrace.h b/arch/arm/include/asm/stacktrace.h
index 10f70e1675..602e79ced4 100644
--- a/arch/arm/include/asm/stacktrace.h
+++ b/arch/arm/include/asm/stacktrace.h
@@ -4,7 +4,9 @@
 struct stackframe {
 	unsigned long fp;
 	unsigned long sp;
+#ifdef CONFIG_CPU_32
 	unsigned long lr;
+#endif
 	unsigned long pc;
 };
 
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 679ca556e5..77647128a5 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -1,3 +1,4 @@
+obj-y += stacktrace.o
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
diff --git a/arch/arm/lib64/stacktrace.c b/arch/arm/lib64/stacktrace.c
new file mode 100644
index 0000000000..b8352c1454
--- /dev/null
+++ b/arch/arm/lib64/stacktrace.c
@@ -0,0 +1,86 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <asm/stacktrace.h>
+
+#define THREAD_SIZE 16384
+
+/*
+ * AArch64 PCS assigns the frame pointer to x29.
+ *
+ * A simple function prologue looks like this:
+ * 	sub	sp, sp, #0x10
+ *   	stp	x29, x30, [sp]
+ *	mov	x29, sp
+ *
+ * A simple function epilogue looks like this:
+ *	mov	sp, x29
+ *	ldp	x29, x30, [sp]
+ *	add	sp, sp, #0x10
+ */
+int unwind_frame(struct stackframe *frame)
+{
+	unsigned long high, low;
+	unsigned long fp = frame->fp;
+
+	low  = frame->sp;
+	high = ALIGN(low, THREAD_SIZE);
+
+	if (fp < low || fp > high - 0x18 || fp & 0xf)
+		return -EINVAL;
+
+	frame->sp = fp + 0x10;
+	frame->fp = *(unsigned long *)(fp);
+	frame->pc = *(unsigned long *)(fp + 8);
+
+	return 0;
+}
+
+void dump_backtrace_entry(unsigned long where, unsigned long from)
+{
+#ifdef CONFIG_KALLSYMS
+	printf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+#else
+	printf("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+#endif
+}
+
+void unwind_backtrace(struct pt_regs *regs)
+{
+        struct stackframe frame = {};
+	register unsigned long current_sp asm ("sp");
+
+	if (regs) {
+		frame.fp = regs->regs[29];
+		frame.pc = regs->elr;
+	} else {
+		frame.fp = (unsigned long)__builtin_frame_address(0);
+		frame.sp = current_sp;
+		frame.pc = (unsigned long)unwind_backtrace;
+	}
+
+	printf("Call trace:\n");
+	while (1) {
+		unsigned long where = frame.pc;
+		int ret;
+
+		ret = unwind_frame(&frame);
+		if (ret < 0)
+			break;
+		dump_backtrace_entry(where, frame.pc);
+	}
+}
+
+void dump_stack(void)
+{
+	unwind_backtrace(NULL);
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
