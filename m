Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pdlpk-0002Wb-Eb
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 15:45:01 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 14 Jan 2011 16:44:18 +0100
Message-Id: <1295019859-14396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] Thumb-2: Add macros for the unified assembler syntax
To: barebox@lists.infradead.org
Cc: Catalin Marinas <catalin.marinas@arm.com>

from linux kernel v2.6.37

This patch adds various C and assembler macros that help with using
the unified assembler syntax for compiling files to either ARM or
Thumb-2 modes.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig               |    3 +
 arch/arm/Makefile              |    1 +
 arch/arm/include/asm/unified.h |  130 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 134 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/include/asm/unified.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f1536a5..cb46edc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -78,6 +78,9 @@ source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-s3c24xx/Kconfig
 source arch/arm/mach-versatile/Kconfig
 
+config ARM_ASM_UNIFIED
+	bool
+
 config AEABI
 	bool "Use the ARM EABI to compile barebox"
 	help
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c90960e..04a8292 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -35,6 +35,7 @@ CFLAGS_ABI	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-th
 endif
 
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
+AFLAGS   += -include asm/unified.h
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
new file mode 100644
index 0000000..bc63116
--- /dev/null
+++ b/arch/arm/include/asm/unified.h
@@ -0,0 +1,130 @@
+/*
+ * include/asm-arm/unified.h - Unified Assembler Syntax helper macros
+ *
+ * Copyright (C) 2008 ARM Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ */
+
+#ifndef __ASM_UNIFIED_H
+#define __ASM_UNIFIED_H
+
+#if defined(__ASSEMBLY__) && defined(CONFIG_ARM_ASM_UNIFIED)
+	.syntax unified
+#endif
+
+#ifdef CONFIG_THUMB2_KERNEL
+
+#if __GNUC__ < 4
+#error Thumb-2 kernel requires gcc >= 4
+#endif
+
+/* The CPSR bit describing the instruction set (Thumb) */
+#define PSR_ISETSTATE	PSR_T_BIT
+
+#define ARM(x...)
+#define THUMB(x...)	x
+#ifdef __ASSEMBLY__
+#define W(instr)	instr.w
+#endif
+#define BSYM(sym)	sym + 1
+
+#else	/* !CONFIG_THUMB2_KERNEL */
+
+/* The CPSR bit describing the instruction set (ARM) */
+#define PSR_ISETSTATE	0
+
+#define ARM(x...)	x
+#define THUMB(x...)
+#ifdef __ASSEMBLY__
+#define W(instr)	instr
+#endif
+#define BSYM(sym)	sym
+
+#endif	/* CONFIG_THUMB2_KERNEL */
+
+#ifndef CONFIG_ARM_ASM_UNIFIED
+
+/*
+ * If the unified assembly syntax isn't used (in ARM mode), these
+ * macros expand to an empty string
+ */
+#ifdef __ASSEMBLY__
+	.macro	it, cond
+	.endm
+	.macro	itt, cond
+	.endm
+	.macro	ite, cond
+	.endm
+	.macro	ittt, cond
+	.endm
+	.macro	itte, cond
+	.endm
+	.macro	itet, cond
+	.endm
+	.macro	itee, cond
+	.endm
+	.macro	itttt, cond
+	.endm
+	.macro	ittte, cond
+	.endm
+	.macro	ittet, cond
+	.endm
+	.macro	ittee, cond
+	.endm
+	.macro	itett, cond
+	.endm
+	.macro	itete, cond
+	.endm
+	.macro	iteet, cond
+	.endm
+	.macro	iteee, cond
+	.endm
+#else	/* !__ASSEMBLY__ */
+__asm__(
+"	.macro	it, cond\n"
+"	.endm\n"
+"	.macro	itt, cond\n"
+"	.endm\n"
+"	.macro	ite, cond\n"
+"	.endm\n"
+"	.macro	ittt, cond\n"
+"	.endm\n"
+"	.macro	itte, cond\n"
+"	.endm\n"
+"	.macro	itet, cond\n"
+"	.endm\n"
+"	.macro	itee, cond\n"
+"	.endm\n"
+"	.macro	itttt, cond\n"
+"	.endm\n"
+"	.macro	ittte, cond\n"
+"	.endm\n"
+"	.macro	ittet, cond\n"
+"	.endm\n"
+"	.macro	ittee, cond\n"
+"	.endm\n"
+"	.macro	itett, cond\n"
+"	.endm\n"
+"	.macro	itete, cond\n"
+"	.endm\n"
+"	.macro	iteet, cond\n"
+"	.endm\n"
+"	.macro	iteee, cond\n"
+"	.endm\n");
+#endif	/* __ASSEMBLY__ */
+
+#endif	/* CONFIG_ARM_ASM_UNIFIED */
+
+#endif	/* !__ASM_UNIFIED_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
