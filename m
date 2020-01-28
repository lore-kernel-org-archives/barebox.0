Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJaH-00062V-Qx
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 05:38:47 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 Jan 2020 06:38:19 +0100
Message-Id: <20200128053821.677207-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
References: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 2/5] ARM: import setjmp implementation from U-Boot
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/include/asm/setjmp.h | 29 +++++++++++++++++++++++++
 arch/arm/lib32/Makefile       |  2 ++
 arch/arm/lib32/setjmp.S       | 36 ++++++++++++++++++++++++++++++
 arch/arm/lib64/Makefile       |  1 +
 arch/arm/lib64/setjmp.S       | 41 +++++++++++++++++++++++++++++++++++
 5 files changed, 109 insertions(+)
 create mode 100644 arch/arm/include/asm/setjmp.h
 create mode 100644 arch/arm/lib32/setjmp.S
 create mode 100644 arch/arm/lib64/setjmp.S

diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
new file mode 100644
index 0000000000..62bac613d6
--- /dev/null
+++ b/arch/arm/include/asm/setjmp.h
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
+ * (C) Copyright 2016 Alexander Graf <agraf@suse.de>
+ */
+
+#ifndef _SETJMP_H_
+#define _SETJMP_H_	1
+
+#include <asm/types.h>
+
+/*
+ * This really should be opaque, but the EFI implementation wrongly
+ * assumes that a 'struct jmp_buf_data' is defined.
+ */
+struct jmp_buf_data {
+#if defined(__aarch64__)
+	u64  regs[13];
+#else
+	u32  regs[10];  /* r4-r9, sl, fp, sp, lr */
+#endif
+};
+
+typedef struct jmp_buf_data jmp_buf[1];
+
+int setjmp(jmp_buf jmp);
+void longjmp(jmp_buf jmp, int ret);
+
+#endif /* _SETJMP_H_ */
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index cd43147e66..cfcf3bc8f1 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -28,3 +28,5 @@ extra-y += barebox.lds
 pbl-y	+= lib1funcs.o
 pbl-y	+= ashldi3.o
 pbl-y	+= div0.o
+
+obj-pbl-y	+= setjmp.o
diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
new file mode 100644
index 0000000000..f0606a7f66
--- /dev/null
+++ b/arch/arm/lib32/setjmp.S
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) 2017 Theobroma Systems Design und Consulting GmbH
+ */
+
+#include <config.h>
+#include <asm/assembler.h>
+#include <linux/linkage.h>
+
+.pushsection .text.setjmp, "ax"
+ENTRY(setjmp)
+	/*
+	 * A subroutine must preserve the contents of the registers
+	 * r4-r8, r10, r11 (v1-v5, v7 and v8) and SP (and r9 in PCS
+	 * variants that designate r9 as v6).
+	 */
+	mov  ip, sp
+	stm  a1, {v1-v8, ip, lr}
+	mov  a1, #0
+	bx   lr
+ENDPROC(setjmp)
+.popsection
+
+.pushsection .text.longjmp, "ax"
+ENTRY(longjmp)
+	ldm  a1, {v1-v8, ip, lr}
+	mov  sp, ip
+	mov  a1, a2
+	/* If we were passed a return value of zero, return one instead */
+	cmp  a1, #0
+	bne  1f
+	mov  a1, #1
+1:
+	bx   lr
+ENDPROC(longjmp)
+.popsection
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 5068431342..69cb3d8ea1 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -5,5 +5,6 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o string.o
 extra-y += barebox.lds
 obj-pbl-y   += runtime-offset.o
+obj-pbl-y   += setjmp.o
 
 pbl-y	+= div0.o pbl.o
diff --git a/arch/arm/lib64/setjmp.S b/arch/arm/lib64/setjmp.S
new file mode 100644
index 0000000000..1b8d000eb4
--- /dev/null
+++ b/arch/arm/lib64/setjmp.S
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * (C) 2017 Theobroma Systems Design und Consulting GmbH
+ */
+
+#include <config.h>
+#include <asm/macro.h>
+#include <linux/linkage.h>
+
+.pushsection .text.setjmp, "ax"
+ENTRY(setjmp)
+	/* Preserve all callee-saved registers and the SP */
+	stp  x19, x20, [x0,#0]
+	stp  x21, x22, [x0,#16]
+	stp  x23, x24, [x0,#32]
+	stp  x25, x26, [x0,#48]
+	stp  x27, x28, [x0,#64]
+	stp  x29, x30, [x0,#80]
+	mov  x2, sp
+	str  x2, [x0, #96]
+	mov  x0, #0
+	ret
+ENDPROC(setjmp)
+.popsection
+
+.pushsection .text.longjmp, "ax"
+ENTRY(longjmp)
+	ldp  x19, x20, [x0,#0]
+	ldp  x21, x22, [x0,#16]
+	ldp  x23, x24, [x0,#32]
+	ldp  x25, x26, [x0,#48]
+	ldp  x27, x28, [x0,#64]
+	ldp  x29, x30, [x0,#80]
+	ldr  x2, [x0,#96]
+	mov  sp, x2
+	/* Move the return value in place, but return 1 if passed 0. */
+	adds x0, xzr, x1
+	csinc x0, x0, xzr, ne
+	ret
+ENDPROC(longjmp)
+.popsection
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
