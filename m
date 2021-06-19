Delivery-date: Sat, 19 Jun 2021 06:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2V-0004f5-2O
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2S-0002Gt-S7
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuG/0qxdeJeVkxxHOT0l9XDmbRO7LT39CXi4883CauY=; b=00WlaR+bEvVjSv
	bOrZvdpPoxXbtnxLkNTF91VH6REAtL7JoWY3k6AD1p7A/vIFDckUJpS928rT30uRNld6335XeGHkv
	3m+noUxfHjMOq9U7NhdG7ThDy5GYDXPySUxp2CbkjPuk0okYrqdkUeIpNUcLSk/Z1Uo/RpliL3WZA
	Nh7676+WTLp4LaxUaLdPaYDVga4YYHTiYKvZxGRmLBEyvAr65jU/EQSBN1kFmVoTCHlbKLIOgMmSq
	99uMMpEkc2FZdsMeMaeLwHOxnDGwzeuH4I8kKf9j9dtoMHzccGBgE1qalaQWo+n1BFfj0wfnIYjcv
	FDjzPjJEi+3idHpxIStw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT0s-00GKHI-NV; Sat, 19 Jun 2021 04:55:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwy-00GHoS-NY
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008M7-9o; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Kv-Pf; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:36 +0200
Message-Id: <20210619045055.779-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215121_184259_E9C3D05A 
X-CRM114-Status: GOOD (  18.77  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/29] RISC-V: add exception support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add S- and M-Mode support for dumping registers when catching unexpected
CPU exceptions. Load access faults when data_abort_mask is active will
be skipped over. This allows outputting xxx when doing md /dev/mem for
non-accessible space.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig                   |   5 +
 arch/riscv/boot/start.c              |   3 +
 arch/riscv/boot/uncompress.c         |   3 +
 arch/riscv/cpu/Makefile              |   3 +
 arch/riscv/cpu/interrupts.c          | 130 ++++++++++++++++++++++++
 arch/riscv/cpu/mtrap.S               |  30 ++++++
 arch/riscv/cpu/strap.S               |  30 ++++++
 arch/riscv/include/asm/asm-offsets.h |   1 +
 arch/riscv/include/asm/irq.h         | 107 ++++++++++++++++++++
 arch/riscv/include/asm/ptrace.h      | 143 +++++++++++++++++++++++++++
 arch/riscv/include/asm/unwind.h      |   9 ++
 arch/riscv/lib/asm-offsets.c         |  46 +++++++++
 12 files changed, 510 insertions(+)
 create mode 100644 arch/riscv/cpu/interrupts.c
 create mode 100644 arch/riscv/cpu/mtrap.S
 create mode 100644 arch/riscv/cpu/strap.S
 create mode 100644 arch/riscv/include/asm/asm-offsets.h
 create mode 100644 arch/riscv/include/asm/irq.h
 create mode 100644 arch/riscv/include/asm/ptrace.h
 create mode 100644 arch/riscv/include/asm/unwind.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index bbafdea1b959..a814a1a45b1c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -77,6 +77,11 @@ config RISCV_OPTIMZED_STRING_FUNCTIONS
 	  These functions work faster than the normal versions but increase
 	  your binary size.
 
+config RISCV_EXCEPTIONS
+	bool "enable exception handling support"
+	default y
+	select ARCH_HAS_DATA_ABORT_MASK
+
 config HAS_NMON
 	bool
 
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 82bd02d0a0d0..72ab93cb7691 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -16,6 +16,7 @@
 #include <uncompress.h>
 #include <malloc.h>
 #include <compressed-dtb.h>
+#include <asm/irq.h>
 
 #include <debug_ll.h>
 
@@ -122,6 +123,8 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 
 	barrier();
 
+	irq_init_vector(__riscv_mode(flags));
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	riscv_endmem = endmem;
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 35a91e8cb62a..c6c20b38e390 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -14,6 +14,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/unaligned.h>
+#include <asm/irq.h>
 
 #include <debug_ll.h>
 
@@ -32,6 +33,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
+	irq_init_vector(__riscv_mode(flags));
+
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = input_data + get_runtime_offset();
 	pg_end = input_data_end + get_runtime_offset();
diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
index 9ce77ad869cd..717baaaaa727 100644
--- a/arch/riscv/cpu/Makefile
+++ b/arch/riscv/cpu/Makefile
@@ -2,3 +2,6 @@
 
 obj-y += core.o time.o
 obj-$(CONFIG_HAS_DMA) += dma.o
+obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
+obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
+obj-pbl-y += interrupts.o
diff --git a/arch/riscv/cpu/interrupts.c b/arch/riscv/cpu/interrupts.c
new file mode 100644
index 000000000000..df6d3e6e010b
--- /dev/null
+++ b/arch/riscv/cpu/interrupts.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2016-17 Microsemi Corporation.
+ * Padmarao Begari, Microsemi Corporation <padmarao.begari@microsemi.com>
+ *
+ * Copyright (C) 2017 Andes Technology Corporation
+ * Rick Chen, Andes Technology Corporation <rick@andestech.com>
+ *
+ * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
+ */
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/ptrace.h>
+#include <asm/irq.h>
+#include <asm/csr.h>
+#include <abort.h>
+#include <pbl.h>
+
+#define MCAUSE32_INT	0x80000000
+#define MCAUSE64_INT	0x8000000000000000
+
+#ifdef CONFIG_64BIT
+# define MCAUSE_INT MCAUSE64_INT
+#else
+# define MCAUSE_INT MCAUSE32_INT
+#endif
+
+static void show_regs(const struct pt_regs *regs)
+{
+	printf("\nsp:  " REG_FMT " gp:  " REG_FMT " tp:  " REG_FMT "\n",
+	       regs->sp, regs->gp, regs->tp);
+	printf("t0:  " REG_FMT " t1:  " REG_FMT " t2:  " REG_FMT "\n",
+	       regs->t0, regs->t1, regs->t2);
+	printf("s0:  " REG_FMT " s1:  " REG_FMT " a0:  " REG_FMT "\n",
+	       regs->s0, regs->s1, regs->a0);
+	printf("a1:  " REG_FMT " a2:  " REG_FMT " a3:  " REG_FMT "\n",
+	       regs->a1, regs->a2, regs->a3);
+	printf("a4:  " REG_FMT " a5:  " REG_FMT " a6:  " REG_FMT "\n",
+	       regs->a4, regs->a5, regs->a6);
+	printf("a7:  " REG_FMT " s2:  " REG_FMT " s3:  " REG_FMT "\n",
+	       regs->a7, regs->s2, regs->s3);
+	printf("s4:  " REG_FMT " s5:  " REG_FMT " s6:  " REG_FMT "\n",
+	       regs->s4, regs->s5, regs->s6);
+	printf("s7:  " REG_FMT " s8:  " REG_FMT " s9:  " REG_FMT "\n",
+	       regs->s7, regs->s8, regs->s9);
+	printf("s10: " REG_FMT " s11: " REG_FMT " t3:  " REG_FMT "\n",
+	       regs->s10, regs->s11, regs->t3);
+	printf("t4:  " REG_FMT " t5:  " REG_FMT " t6:  " REG_FMT "\n",
+	       regs->t4, regs->t5, regs->t6);
+}
+
+static void report_trap(const struct pt_regs *regs)
+{
+	static const char * const exception_code[] = {
+		[0]  = "Instruction address misaligned",
+		[1]  = "Instruction access fault",
+		[2]  = "Illegal instruction",
+		[3]  = "Breakpoint",
+		[4]  = "Load address misaligned",
+		[5]  = "Load access fault",
+		[6]  = "Store/AMO address misaligned",
+		[7]  = "Store/AMO access fault",
+		[8]  = "Environment call from U-mode",
+		[9]  = "Environment call from S-mode",
+		[10] = "Reserved",
+		[11] = "Environment call from M-mode",
+		[12] = "Instruction page fault",
+		[13] = "Load page fault",
+		[14] = "Reserved",
+		[15] = "Store/AMO page fault",
+
+	};
+
+	printf("Unhandled exception: %ld", regs->cause);
+
+	if (regs->cause < ARRAY_SIZE(exception_code))
+		printf(" \"%s\"\n", exception_code[regs->cause]);
+
+	printf("E [<" REG_FMT ">] ra: [<" REG_FMT ">] tval: " REG_FMT "\n",
+	       regs->epc, regs->ra, regs->badaddr);
+
+	show_regs(regs);
+}
+
+
+
+#ifdef __PBL__
+
+static inline bool skip_data_abort(struct pt_regs *regs)
+{
+	return false;
+}
+
+#else
+
+static volatile bool riscv_data_abort_occurred;
+static volatile bool riscv_ignore_data_abort;
+
+void data_abort_mask(void)
+{
+	riscv_data_abort_occurred = false;
+	riscv_ignore_data_abort = true;
+}
+
+int data_abort_unmask(void)
+{
+	riscv_ignore_data_abort = false;
+	return riscv_data_abort_occurred;
+}
+
+static inline bool skip_data_abort(struct pt_regs *regs)
+{
+	return regs->cause == EXC_LOAD_ACCESS && riscv_ignore_data_abort;
+}
+
+#endif
+
+unsigned long handle_trap(struct pt_regs *regs)
+{
+	if (skip_data_abort(regs))
+		goto skip;
+
+	report_trap(regs);
+	hang();
+
+skip:
+	return regs->epc + 4;
+}
+
diff --git a/arch/riscv/cpu/mtrap.S b/arch/riscv/cpu/mtrap.S
new file mode 100644
index 000000000000..e4aba7d69415
--- /dev/null
+++ b/arch/riscv/cpu/mtrap.S
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 FORTH-ICS/CARV
+ *  Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <asm/asm.h>
+#include <asm/irq.h>
+#include <linux/linkage.h>
+
+.section .text.mtrap_entry
+ENTRY(mtrap_entry)
+	addi sp, sp, -PT_SIZE_ON_STACK
+        pt_regs_push sp
+	csrr t1, mstatus
+	csrr t2, mepc
+	csrr t3, mtval
+	csrr t4, mcause
+
+	REG_S t1, PT_STATUS(sp)
+	REG_S t2, PT_EPC(sp)
+	REG_S t3, PT_BADADDR(sp)
+	REG_S t4, PT_CAUSE(sp)
+	mv a0, sp
+	jal handle_trap
+	csrw mepc, a0
+        pt_regs_pop sp
+	addi sp, sp, PT_SIZE_ON_STACK
+	mret
+ENDPROC(mtrap_entry)
diff --git a/arch/riscv/cpu/strap.S b/arch/riscv/cpu/strap.S
new file mode 100644
index 000000000000..c1d684c19425
--- /dev/null
+++ b/arch/riscv/cpu/strap.S
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 FORTH-ICS/CARV
+ *  Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <asm/asm.h>
+#include <asm/irq.h>
+#include <linux/linkage.h>
+
+.section .text.strap_entry
+ENTRY(strap_entry)
+	addi sp, sp, -PT_SIZE_ON_STACK
+        pt_regs_push sp
+	csrr t1, sstatus
+	csrr t2, sepc
+	csrr t3, stval
+	csrr t4, scause
+
+	REG_S t1, PT_STATUS(sp)
+	REG_S t2, PT_EPC(sp)
+	REG_S t3, PT_BADADDR(sp)
+	REG_S t4, PT_CAUSE(sp)
+	mv a0, sp
+	jal handle_trap
+	csrw sepc, a0
+        pt_regs_pop sp
+	addi sp, sp, PT_SIZE_ON_STACK
+	sret
+ENDPROC(strap_entry)
diff --git a/arch/riscv/include/asm/asm-offsets.h b/arch/riscv/include/asm/asm-offsets.h
new file mode 100644
index 000000000000..d370ee36a182
--- /dev/null
+++ b/arch/riscv/include/asm/asm-offsets.h
@@ -0,0 +1 @@
+#include <generated/asm-offsets.h>
diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
new file mode 100644
index 000000000000..fde7589baa80
--- /dev/null
+++ b/arch/riscv/include/asm/irq.h
@@ -0,0 +1,107 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef RISCV_ASM_IRQ_H__
+#define RISCV_ASM_IRQ_H__
+
+#include <asm/csr.h>
+#include <asm/system.h>
+#include <asm/asm.h>
+#include <asm/asm-offsets.h>
+#include <asm/ptrace.h>
+
+#ifndef __ASSEMBLY__
+#include <asm/barebox-riscv.h>
+void strap_entry(void);
+void mtrap_entry(void);
+unsigned long handle_trap(struct pt_regs *regs);
+
+static inline void irq_init_vector(enum riscv_mode mode)
+{
+	switch (mode) {
+#ifdef CONFIG_RISCV_EXCEPTIONS
+	case RISCV_S_MODE:
+		asm volatile ("csrw stvec, %0; csrw sie, zero" : :
+			      "r"(strap_entry + get_runtime_offset()));
+		break;
+	case RISCV_M_MODE:
+		asm volatile ("csrw mtvec, %0; csrw mie, zero" : :
+			      "r"(mtrap_entry + get_runtime_offset()));
+		break;
+#endif
+	default:
+		break;
+	}
+}
+
+#else
+
+.macro	pt_regs_push ptr
+	REG_S ra,  PT_RA(\ptr)	/* x1 */
+	REG_S sp,  PT_SP(\ptr)	/* x2 */
+	REG_S gp,  PT_GP(\ptr)	/* x3 */
+	REG_S tp,  PT_TP(\ptr)	/* x4 */
+	REG_S t0,  PT_T0(\ptr)	/* x5 */
+	REG_S t1,  PT_T1(\ptr)	/* x6 */
+	REG_S t2,  PT_T2(\ptr)	/* x7 */
+	REG_S s0,  PT_S0(\ptr)	/* x8/fp */
+	REG_S s1,  PT_S1(\ptr)	/* x9 */
+	REG_S a0,  PT_A0(\ptr)	/* x10 */
+	REG_S a1,  PT_A1(\ptr)	/* x11 */
+	REG_S a2,  PT_A2(\ptr)	/* x12 */
+	REG_S a3,  PT_A3(\ptr)	/* x13 */
+	REG_S a4,  PT_A4(\ptr)	/* x14 */
+	REG_S a5,  PT_A5(\ptr)	/* x15 */
+	REG_S a6,  PT_A6(\ptr)	/* x16 */
+	REG_S a7,  PT_A7(\ptr)	/* x17 */
+	REG_S s2,  PT_S2(\ptr)	/* x18 */
+	REG_S s3,  PT_S3(\ptr)	/* x19 */
+	REG_S s4,  PT_S4(\ptr)	/* x20 */
+	REG_S s5,  PT_S5(\ptr)	/* x21 */
+	REG_S s6,  PT_S6(\ptr)	/* x22 */
+	REG_S s7,  PT_S7(\ptr)	/* x23 */
+	REG_S s8,  PT_S8(\ptr)	/* x24 */
+	REG_S s9,  PT_S9(\ptr)	/* x25 */
+	REG_S s10, PT_S10(\ptr)	/* x26 */
+	REG_S s11, PT_S11(\ptr)	/* x27 */
+	REG_S t3,  PT_T3(\ptr)	/* x28 */
+	REG_S t4,  PT_T4(\ptr)	/* x29 */
+	REG_S t5,  PT_T5(\ptr)	/* x30 */
+	REG_S t6,  PT_T6(\ptr)	/* x31 */
+.endm
+
+.macro	pt_regs_pop ptr
+	REG_L ra,  PT_RA(\ptr)	/* x1 */
+	REG_L sp,  PT_SP(\ptr)	/* x2 */
+	REG_L gp,  PT_GP(\ptr)	/* x3 */
+	REG_L tp,  PT_TP(\ptr)	/* x4 */
+	REG_L t0,  PT_T0(\ptr)	/* x5 */
+	REG_L t1,  PT_T1(\ptr)	/* x6 */
+	REG_L t2,  PT_T2(\ptr)	/* x7 */
+	REG_L s0,  PT_S0(\ptr)	/* x8/fp */
+	REG_L s1,  PT_S1(\ptr)	/* x9 */
+	REG_L a0,  PT_A0(\ptr)	/* x10 */
+	REG_L a1,  PT_A1(\ptr)	/* x11 */
+	REG_L a2,  PT_A2(\ptr)	/* x12 */
+	REG_L a3,  PT_A3(\ptr)	/* x13 */
+	REG_L a4,  PT_A4(\ptr)	/* x14 */
+	REG_L a5,  PT_A5(\ptr)	/* x15 */
+	REG_L a6,  PT_A6(\ptr)	/* x16 */
+	REG_L a7,  PT_A7(\ptr)	/* x17 */
+	REG_L s2,  PT_S2(\ptr)	/* x18 */
+	REG_L s3,  PT_S3(\ptr)	/* x19 */
+	REG_L s4,  PT_S4(\ptr)	/* x20 */
+	REG_L s5,  PT_S5(\ptr)	/* x21 */
+	REG_L s6,  PT_S6(\ptr)	/* x22 */
+	REG_L s7,  PT_S7(\ptr)	/* x23 */
+	REG_L s8,  PT_S8(\ptr)	/* x24 */
+	REG_L s9,  PT_S9(\ptr)	/* x25 */
+	REG_L s10, PT_S10(\ptr)	/* x26 */
+	REG_L s11, PT_S11(\ptr)	/* x27 */
+	REG_L t3,  PT_T3(\ptr)	/* x28 */
+	REG_L t4,  PT_T4(\ptr)	/* x29 */
+	REG_L t5,  PT_T5(\ptr)	/* x30 */
+	REG_L t6,  PT_T6(\ptr)	/* x31 */
+.endm
+
+#endif
+
+#endif
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
new file mode 100644
index 000000000000..b5e792f6669b
--- /dev/null
+++ b/arch/riscv/include/asm/ptrace.h
@@ -0,0 +1,143 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ */
+
+#ifndef _ASM_RISCV_PTRACE_H
+#define _ASM_RISCV_PTRACE_H
+
+#include <asm/csr.h>
+#include <linux/compiler.h>
+
+#ifndef __ASSEMBLY__
+
+struct pt_regs {
+	unsigned long epc;
+	unsigned long ra;
+	unsigned long sp;
+	unsigned long gp;
+	unsigned long tp;
+	unsigned long t0;
+	unsigned long t1;
+	unsigned long t2;
+	unsigned long s0;
+	unsigned long s1;
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+	unsigned long a4;
+	unsigned long a5;
+	unsigned long a6;
+	unsigned long a7;
+	unsigned long s2;
+	unsigned long s3;
+	unsigned long s4;
+	unsigned long s5;
+	unsigned long s6;
+	unsigned long s7;
+	unsigned long s8;
+	unsigned long s9;
+	unsigned long s10;
+	unsigned long s11;
+	unsigned long t3;
+	unsigned long t4;
+	unsigned long t5;
+	unsigned long t6;
+	/* Supervisor/Machine CSRs */
+	unsigned long status;
+	unsigned long badaddr;
+	unsigned long cause;
+};
+
+#ifdef CONFIG_64BIT
+#define REG_FMT "%016lx"
+#else
+#define REG_FMT "%08lx"
+#endif
+
+#define user_mode(regs) (((regs)->status & SR_PP) == 0)
+
+#define MAX_REG_OFFSET offsetof(struct pt_regs, cause)
+
+/* Helpers for working with the instruction pointer */
+static inline unsigned long instruction_pointer(struct pt_regs *regs)
+{
+	return regs->epc;
+}
+static inline void instruction_pointer_set(struct pt_regs *regs,
+					   unsigned long val)
+{
+	regs->epc = val;
+}
+
+#define profile_pc(regs) instruction_pointer(regs)
+
+/* Helpers for working with the user stack pointer */
+static inline unsigned long user_stack_pointer(struct pt_regs *regs)
+{
+	return regs->sp;
+}
+static inline void user_stack_pointer_set(struct pt_regs *regs,
+					  unsigned long val)
+{
+	regs->sp =  val;
+}
+
+/* Valid only for Kernel mode traps. */
+static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
+{
+	return regs->sp;
+}
+
+/* Helpers for working with the frame pointer */
+static inline unsigned long frame_pointer(struct pt_regs *regs)
+{
+	return regs->s0;
+}
+static inline void frame_pointer_set(struct pt_regs *regs,
+				     unsigned long val)
+{
+	regs->s0 = val;
+}
+
+static inline unsigned long regs_return_value(struct pt_regs *regs)
+{
+	return regs->a0;
+}
+
+static inline void regs_set_return_value(struct pt_regs *regs,
+					 unsigned long val)
+{
+	regs->a0 = val;
+}
+
+extern int regs_query_register_offset(const char *name);
+extern unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs,
+					       unsigned int n);
+
+void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
+			   unsigned long frame_pointer);
+int do_syscall_trace_enter(struct pt_regs *regs);
+void do_syscall_trace_exit(struct pt_regs *regs);
+
+/**
+ * regs_get_register() - get register value from its offset
+ * @regs:	pt_regs from which register value is gotten
+ * @offset:	offset of the register.
+ *
+ * regs_get_register returns the value of a register whose offset from @regs.
+ * The @offset is the offset of the register in struct pt_regs.
+ * If @offset is bigger than MAX_REG_OFFSET, this returns 0.
+ */
+static inline unsigned long regs_get_register(struct pt_regs *regs,
+					      unsigned int offset)
+{
+	if (unlikely(offset > MAX_REG_OFFSET))
+		return 0;
+
+	return *(unsigned long *)((unsigned long)regs + offset);
+}
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_RISCV_PTRACE_H */
diff --git a/arch/riscv/include/asm/unwind.h b/arch/riscv/include/asm/unwind.h
new file mode 100644
index 000000000000..9e5c8b542094
--- /dev/null
+++ b/arch/riscv/include/asm/unwind.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef RISCV_ASM_UNWIND_H__
+#define RISCV_ASM_UNWIND_H__
+
+struct pt_regs;
+
+void unwind_backtrace(struct pt_regs *regs);
+
+#endif
diff --git a/arch/riscv/lib/asm-offsets.c b/arch/riscv/lib/asm-offsets.c
index 22f382b71e7b..4b869690f198 100644
--- a/arch/riscv/lib/asm-offsets.c
+++ b/arch/riscv/lib/asm-offsets.c
@@ -5,8 +5,54 @@
  */
 
 #include <linux/kbuild.h>
+#include <linux/kernel.h>
+#include <asm/ptrace.h>
+
+#define STACK_ALIGN		16
 
 int main(void)
 {
+	DEFINE(PT_SIZE, sizeof(struct pt_regs));
+	OFFSET(PT_EPC, pt_regs, epc);
+	OFFSET(PT_RA, pt_regs, ra);
+	OFFSET(PT_FP, pt_regs, s0);
+	OFFSET(PT_S0, pt_regs, s0);
+	OFFSET(PT_S1, pt_regs, s1);
+	OFFSET(PT_S2, pt_regs, s2);
+	OFFSET(PT_S3, pt_regs, s3);
+	OFFSET(PT_S4, pt_regs, s4);
+	OFFSET(PT_S5, pt_regs, s5);
+	OFFSET(PT_S6, pt_regs, s6);
+	OFFSET(PT_S7, pt_regs, s7);
+	OFFSET(PT_S8, pt_regs, s8);
+	OFFSET(PT_S9, pt_regs, s9);
+	OFFSET(PT_S10, pt_regs, s10);
+	OFFSET(PT_S11, pt_regs, s11);
+	OFFSET(PT_SP, pt_regs, sp);
+	OFFSET(PT_TP, pt_regs, tp);
+	OFFSET(PT_A0, pt_regs, a0);
+	OFFSET(PT_A1, pt_regs, a1);
+	OFFSET(PT_A2, pt_regs, a2);
+	OFFSET(PT_A3, pt_regs, a3);
+	OFFSET(PT_A4, pt_regs, a4);
+	OFFSET(PT_A5, pt_regs, a5);
+	OFFSET(PT_A6, pt_regs, a6);
+	OFFSET(PT_A7, pt_regs, a7);
+	OFFSET(PT_T0, pt_regs, t0);
+	OFFSET(PT_T1, pt_regs, t1);
+	OFFSET(PT_T2, pt_regs, t2);
+	OFFSET(PT_T3, pt_regs, t3);
+	OFFSET(PT_T4, pt_regs, t4);
+	OFFSET(PT_T5, pt_regs, t5);
+	OFFSET(PT_T6, pt_regs, t6);
+	OFFSET(PT_GP, pt_regs, gp);
+	OFFSET(PT_STATUS, pt_regs, status);
+	OFFSET(PT_BADADDR, pt_regs, badaddr);
+	OFFSET(PT_CAUSE, pt_regs, cause);
+
+	/*
+	 * We allocate a pt_regs on the stack. This ensures the alignment is sane.
+	 */
+	DEFINE(PT_SIZE_ON_STACK, ALIGN(sizeof(struct pt_regs), STACK_ALIGN));
 	return 0;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

