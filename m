Delivery-date: Sat, 08 Jan 2022 18:17:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLP-00Echp-2w
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLN-0005BG-1y
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOrCaZfUpRf0dJjtFl3CANd16wO1wbI3slCtNhIJSAQ=; b=vHQYe4+fY2rEN1
	wUYQypV8GMpgNkeSzK3b4hkC1kkYhHzsy8O8WquHnBegj8UG7GQxnB3uwfp683Hk7QL6210SO4pHA
	Z8mdmpiL16etsLMo8e7663oo4OCw9cygDp3QGov3Trhd9n9JfBISuPd54z2rNbsoe5TJ//rRByaUr
	U5Tu8S+xDn9tD3rRkvUCkCIqL+dtRdAgZfyKBoDGDfz2vodOWKWsA1tYQUX0M4iutUNlVR+fzMWFa
	xDliIs95j6ujGFlfq/drkx80F8k4hcB2BBZjXJyvhSh4vPwPLiC1LMh0wPfPxjJGu4/3yX8DnPUlQ
	3j1vPrr5K7AAD8a3o3Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FK2-006k08-I2; Sat, 08 Jan 2022 17:16:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJP-006jew-OK
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004Ay-Ff; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002Smn-HB; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:23 +0100
Message-Id: <20220108171524.587144-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091527_998860_952BB98C 
X-CRM114-Status: GOOD (  24.17  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] RISC-V: add stacktrace support via frame pointer walking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make debugging more convenient by implementing stack_dump() and changing
exception handlers to print stack trace along with the register dump.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                                    |  5 ++
 arch/riscv/Kconfig                          | 10 +++
 arch/riscv/cpu/interrupts.c                 |  3 +
 arch/riscv/include/asm/barebox-riscv-head.h |  1 +
 arch/riscv/include/asm/ptrace.h             | 10 +--
 arch/riscv/include/asm/unwind.h             |  8 ++-
 arch/riscv/lib/Makefile                     |  1 +
 arch/riscv/lib/stacktrace.c                 | 79 +++++++++++++++++++++
 common/Kconfig                              | 12 ++++
 9 files changed, 123 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/lib/stacktrace.c

diff --git a/Makefile b/Makefile
index ab9d3e677e19..a6b6a5be20aa 100644
--- a/Makefile
+++ b/Makefile
@@ -632,6 +632,11 @@ endif # need-config
 
 KBUILD_CFLAGS		+= -ggdb3
 
+ifdef CONFIG_FRAME_POINTER
+KBUILD_CFLAGS	+= -fno-omit-frame-pointer -fno-optimize-sibling-calls
+KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
+endif
+
 # Force gcc to behave correct even for buggy distributions
 KBUILD_CFLAGS          += $(call cc-option, -fno-stack-protector)
 
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index e093ed4226de..1190cd42723f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -85,6 +85,16 @@ config RISCV_EXCEPTIONS
 	default y
 	select ARCH_HAS_DATA_ABORT_MASK
 
+config RISCV_UNWIND
+	bool "enable stack unwinding support"
+	select ARCH_HAS_STACK_DUMP
+	select ARCH_WANT_FRAME_POINTERS
+	help
+	  This option enables stack unwinding support in barebox
+	  using the information automatically generated by the
+	  compiler. The resulting kernel image is slightly bigger but
+	  the performance is not affected.
+
 config HAS_NMON
 	bool
 
diff --git a/arch/riscv/cpu/interrupts.c b/arch/riscv/cpu/interrupts.c
index 1f2d7b885737..0bb56d441d96 100644
--- a/arch/riscv/cpu/interrupts.c
+++ b/arch/riscv/cpu/interrupts.c
@@ -14,6 +14,7 @@
 #include <asm/ptrace.h>
 #include <asm/irq.h>
 #include <asm/csr.h>
+#include <asm/unwind.h>
 #include <abort.h>
 #include <pbl.h>
 
@@ -81,6 +82,8 @@ static void report_trap(const struct pt_regs *regs)
 	       regs->epc, regs->ra, regs->badaddr);
 
 	show_regs(regs);
+
+	unwind_backtrace(regs);
 }
 
 
diff --git a/arch/riscv/include/asm/barebox-riscv-head.h b/arch/riscv/include/asm/barebox-riscv-head.h
index a4c33472cd53..4d62c20d1b2d 100644
--- a/arch/riscv/include/asm/barebox-riscv-head.h
+++ b/arch/riscv/include/asm/barebox-riscv-head.h
@@ -23,6 +23,7 @@
 		".ascii \"" magic2 "\"\n"      /* magic 2 */                          \
 		".word 0\n"                    /* reserved (PE-COFF offset) */        \
 		"1:\n"                                                                \
+		"li fp, 0\n"                                                          \
 	)
 
 #define __barebox_riscv_header(instr, load_offset, version, magic1, magic2) \
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index b5e792f6669b..319c50f946a8 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -61,7 +61,7 @@ struct pt_regs {
 #define MAX_REG_OFFSET offsetof(struct pt_regs, cause)
 
 /* Helpers for working with the instruction pointer */
-static inline unsigned long instruction_pointer(struct pt_regs *regs)
+static inline unsigned long instruction_pointer(const struct pt_regs *regs)
 {
 	return regs->epc;
 }
@@ -74,7 +74,7 @@ static inline void instruction_pointer_set(struct pt_regs *regs,
 #define profile_pc(regs) instruction_pointer(regs)
 
 /* Helpers for working with the user stack pointer */
-static inline unsigned long user_stack_pointer(struct pt_regs *regs)
+static inline unsigned long user_stack_pointer(const struct pt_regs *regs)
 {
 	return regs->sp;
 }
@@ -85,13 +85,13 @@ static inline void user_stack_pointer_set(struct pt_regs *regs,
 }
 
 /* Valid only for Kernel mode traps. */
-static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
+static inline unsigned long kernel_stack_pointer(const struct pt_regs *regs)
 {
 	return regs->sp;
 }
 
 /* Helpers for working with the frame pointer */
-static inline unsigned long frame_pointer(struct pt_regs *regs)
+static inline unsigned long frame_pointer(const struct pt_regs *regs)
 {
 	return regs->s0;
 }
@@ -101,7 +101,7 @@ static inline void frame_pointer_set(struct pt_regs *regs,
 	regs->s0 = val;
 }
 
-static inline unsigned long regs_return_value(struct pt_regs *regs)
+static inline unsigned long regs_return_value(const struct pt_regs *regs)
 {
 	return regs->a0;
 }
diff --git a/arch/riscv/include/asm/unwind.h b/arch/riscv/include/asm/unwind.h
index 9e5c8b542094..00f7845147b1 100644
--- a/arch/riscv/include/asm/unwind.h
+++ b/arch/riscv/include/asm/unwind.h
@@ -4,6 +4,12 @@
 
 struct pt_regs;
 
-void unwind_backtrace(struct pt_regs *regs);
+#if defined CONFIG_RISCV_UNWIND && !defined __PBL__
+void unwind_backtrace(const struct pt_regs *regs);
+#else
+static inline void unwind_backtrace(const struct pt_regs *regs)
+{
+}
+#endif
 
 #endif
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index a399de7399cb..f3db5320f751 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
 obj-$(CONFIG_RISCV_SBI) += sbi.o
 obj-$(CONFIG_CMD_RISCV_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_BOOTM) += bootm.o
+obj-$(CONFIG_RISCV_UNWIND) += stacktrace.o
diff --git a/arch/riscv/lib/stacktrace.c b/arch/riscv/lib/stacktrace.c
new file mode 100644
index 000000000000..663938019ee6
--- /dev/null
+++ b/arch/riscv/lib/stacktrace.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2008 ARM Limited
+ * Copyright (C) 2014 Regents of the University of California
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ *
+ * Framepointer assisted stack unwinder
+ */
+
+#include <linux/kernel.h>
+#include <printk.h>
+#include <asm/unwind.h>
+#include <asm/ptrace.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
+
+struct stackframe {
+	unsigned long fp;
+	unsigned long ra;
+};
+
+static void dump_backtrace_entry(unsigned long where, unsigned long from)
+{
+#ifdef CONFIG_KALLSYMS
+	printf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+#else
+	printf("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+#endif
+}
+
+static int unwind_frame(struct stackframe *frame, unsigned long *sp)
+{
+	unsigned long low, high;
+	unsigned long fp = frame->fp;
+
+	low = *sp;
+	high = ALIGN(low, STACK_SIZE);
+
+	if (fp < low || fp > high - sizeof(struct stackframe) || fp & 0x7)
+		return -1;
+
+	*frame = *((struct stackframe *)fp - 1);
+	*sp = fp;
+
+	return 0;
+}
+
+void unwind_backtrace(const struct pt_regs *regs)
+{
+        struct stackframe frame = {};
+	register unsigned long current_sp asm ("sp");
+	unsigned long sp = 0;
+
+	if (regs) {
+		frame.fp = frame_pointer(regs);
+		frame.ra = regs->ra;
+	} else {
+		sp = current_sp;
+		frame.fp = (unsigned long)__builtin_frame_address(0);
+		frame.ra = (unsigned long)unwind_backtrace;
+	}
+
+	printf("Call trace:\n");
+	for (;;) {
+		unsigned long where = frame.ra;
+		int ret;
+
+		ret = unwind_frame(&frame, &sp);
+		if (ret < 0)
+			break;
+
+		dump_backtrace_entry(where, frame.ra);
+	}
+}
+
+void dump_stack(void)
+{
+	unwind_backtrace(NULL);
+}
diff --git a/common/Kconfig b/common/Kconfig
index 2f014509da0d..060e21d9fedf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1209,6 +1209,18 @@ config DEBUG_LL
 	  platform *will not work*, so this option should not be enabled
 	  for builds that are intended to be portable.
 
+config ARCH_WANT_FRAME_POINTERS
+	bool
+
+config FRAME_POINTER
+	bool "Compile barebox with frame pointers" if COMPILE_TEST
+	default y if ARCH_WANT_FRAME_POINTERS
+	help
+	  Selected by platforms that expect frame pointer usage, e.g.
+	  when stack unwinding is enabled. The resulting barebox image
+	  will be slightly larger and slower, but it can give precise
+	  debugging information when print stack traces.
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

