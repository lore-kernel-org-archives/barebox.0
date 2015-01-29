Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGezK-0006WY-FU
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:37:49 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0T2bHnr029277
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:37:17 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t0T2bGA03434
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:37:16 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:37:11 +0900
Message-Id: <1422499032-30353-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] Import missing linkage.h from Linux 3.19-rc6
To: barebox@lists.infradead.org

Since include/linux/linkage.h includes <asm/linkage.h>,
each architecture should generally have <asm/linkage.h>.

Import linkage.h from the corresponding architecture
of Linux 3.19-rc6.

Note:
  arch/efi/include/asm/linkage.h is a copy of
  arch/x86/include/asm/linkage.h.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/efi/include/asm/linkage.h      | 61 +++++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/linkage.h     | 13 ++++++++
 arch/nios2/include/asm/linkage.h    | 25 +++++++++++++++
 arch/openrisc/include/asm/linkage.h | 25 +++++++++++++++
 arch/ppc/include/asm/linkage.h      | 15 +++++++++
 arch/x86/include/asm/linkage.h      | 61 +++++++++++++++++++++++++++++++++++++
 include/asm-generic/linkage.h       |  8 +++++
 7 files changed, 208 insertions(+)
 create mode 100644 arch/efi/include/asm/linkage.h
 create mode 100644 arch/mips/include/asm/linkage.h
 create mode 100644 arch/nios2/include/asm/linkage.h
 create mode 100644 arch/openrisc/include/asm/linkage.h
 create mode 100644 arch/ppc/include/asm/linkage.h
 create mode 100644 arch/x86/include/asm/linkage.h
 create mode 100644 include/asm-generic/linkage.h

diff --git a/arch/efi/include/asm/linkage.h b/arch/efi/include/asm/linkage.h
new file mode 100644
index 0000000..79327e9
--- /dev/null
+++ b/arch/efi/include/asm/linkage.h
@@ -0,0 +1,61 @@
+#ifndef _ASM_X86_LINKAGE_H
+#define _ASM_X86_LINKAGE_H
+
+#include <linux/stringify.h>
+
+#undef notrace
+#define notrace __attribute__((no_instrument_function))
+
+#ifdef CONFIG_X86_32
+#define asmlinkage CPP_ASMLINKAGE __attribute__((regparm(0)))
+
+/*
+ * Make sure the compiler doesn't do anything stupid with the
+ * arguments on the stack - they are owned by the *caller*, not
+ * the callee. This just fools gcc into not spilling into them,
+ * and keeps it from doing tailcall recursion and/or using the
+ * stack slots for temporaries, since they are live and "used"
+ * all the way to the end of the function.
+ *
+ * NOTE! On x86-64, all the arguments are in registers, so this
+ * only matters on a 32-bit kernel.
+ */
+#define asmlinkage_protect(n, ret, args...) \
+	__asmlinkage_protect##n(ret, ##args)
+#define __asmlinkage_protect_n(ret, args...) \
+	__asm__ __volatile__ ("" : "=r" (ret) : "0" (ret), ##args)
+#define __asmlinkage_protect0(ret) \
+	__asmlinkage_protect_n(ret)
+#define __asmlinkage_protect1(ret, arg1) \
+	__asmlinkage_protect_n(ret, "m" (arg1))
+#define __asmlinkage_protect2(ret, arg1, arg2) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2))
+#define __asmlinkage_protect3(ret, arg1, arg2, arg3) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3))
+#define __asmlinkage_protect4(ret, arg1, arg2, arg3, arg4) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4))
+#define __asmlinkage_protect5(ret, arg1, arg2, arg3, arg4, arg5) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4), "m" (arg5))
+#define __asmlinkage_protect6(ret, arg1, arg2, arg3, arg4, arg5, arg6) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4), "m" (arg5), "m" (arg6))
+
+#endif /* CONFIG_X86_32 */
+
+#ifdef __ASSEMBLY__
+
+#define GLOBAL(name)	\
+	.globl name;	\
+	name:
+
+#if defined(CONFIG_X86_64) || defined(CONFIG_X86_ALIGNMENT_16)
+#define __ALIGN		.p2align 4, 0x90
+#define __ALIGN_STR	__stringify(__ALIGN)
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_X86_LINKAGE_H */
+
diff --git a/arch/mips/include/asm/linkage.h b/arch/mips/include/asm/linkage.h
new file mode 100644
index 0000000..2767dda
--- /dev/null
+++ b/arch/mips/include/asm/linkage.h
@@ -0,0 +1,13 @@
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
+
+#ifdef __ASSEMBLY__
+#include <asm/asm.h>
+#endif
+
+#define __weak __attribute__((weak))
+#define cond_syscall(x) asm(".weak\t" #x "\n" #x "\t=\tsys_ni_syscall")
+#define SYSCALL_ALIAS(alias, name)					\
+	asm ( #alias " = " #name "\n\t.globl " #alias)
+
+#endif
diff --git a/arch/nios2/include/asm/linkage.h b/arch/nios2/include/asm/linkage.h
new file mode 100644
index 0000000..e0c6dec
--- /dev/null
+++ b/arch/nios2/include/asm/linkage.h
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2009 Thomas Chou <thomas@wytron.com.tw>
+ *
+ * All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
+ * NON INFRINGEMENT.  See the GNU General Public License for more
+ * details.
+ */
+
+#ifndef _ASM_NIOS2_LINKAGE_H
+#define _ASM_NIOS2_LINKAGE_H
+
+/* This file is required by include/linux/linkage.h */
+#define __ALIGN .align 4
+#define __ALIGN_STR ".align 4"
+
+#endif
diff --git a/arch/openrisc/include/asm/linkage.h b/arch/openrisc/include/asm/linkage.h
new file mode 100644
index 0000000..e263875
--- /dev/null
+++ b/arch/openrisc/include/asm/linkage.h
@@ -0,0 +1,25 @@
+/*
+ * OpenRISC Linux
+ *
+ * Linux architectural port borrowing liberally from similar works of
+ * others.  All original copyrights apply as per the original source
+ * declaration.
+ *
+ * OpenRISC implementation:
+ * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
+ * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
+ * et al.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __ASM_OPENRISC_LINKAGE_H
+#define __ASM_OPENRISC_LINKAGE_H
+
+#define __ALIGN      .align 0
+#define __ALIGN_STR ".align 0"
+
+#endif /* __ASM_OPENRISC_LINKAGE_H */
diff --git a/arch/ppc/include/asm/linkage.h b/arch/ppc/include/asm/linkage.h
new file mode 100644
index 0000000..e3ad5c7
--- /dev/null
+++ b/arch/ppc/include/asm/linkage.h
@@ -0,0 +1,15 @@
+#ifndef _ASM_POWERPC_LINKAGE_H
+#define _ASM_POWERPC_LINKAGE_H
+
+#ifdef CONFIG_PPC64
+#if !defined(_CALL_ELF) || _CALL_ELF != 2
+#define cond_syscall(x) \
+	asm ("\t.weak " #x "\n\t.set " #x ", sys_ni_syscall\n"		\
+	     "\t.weak ." #x "\n\t.set ." #x ", .sys_ni_syscall\n")
+#define SYSCALL_ALIAS(alias, name)					\
+	asm ("\t.globl " #alias "\n\t.set " #alias ", " #name "\n"	\
+	     "\t.globl ." #alias "\n\t.set ." #alias ", ." #name)
+#endif
+#endif
+
+#endif	/* _ASM_POWERPC_LINKAGE_H */
diff --git a/arch/x86/include/asm/linkage.h b/arch/x86/include/asm/linkage.h
new file mode 100644
index 0000000..79327e9
--- /dev/null
+++ b/arch/x86/include/asm/linkage.h
@@ -0,0 +1,61 @@
+#ifndef _ASM_X86_LINKAGE_H
+#define _ASM_X86_LINKAGE_H
+
+#include <linux/stringify.h>
+
+#undef notrace
+#define notrace __attribute__((no_instrument_function))
+
+#ifdef CONFIG_X86_32
+#define asmlinkage CPP_ASMLINKAGE __attribute__((regparm(0)))
+
+/*
+ * Make sure the compiler doesn't do anything stupid with the
+ * arguments on the stack - they are owned by the *caller*, not
+ * the callee. This just fools gcc into not spilling into them,
+ * and keeps it from doing tailcall recursion and/or using the
+ * stack slots for temporaries, since they are live and "used"
+ * all the way to the end of the function.
+ *
+ * NOTE! On x86-64, all the arguments are in registers, so this
+ * only matters on a 32-bit kernel.
+ */
+#define asmlinkage_protect(n, ret, args...) \
+	__asmlinkage_protect##n(ret, ##args)
+#define __asmlinkage_protect_n(ret, args...) \
+	__asm__ __volatile__ ("" : "=r" (ret) : "0" (ret), ##args)
+#define __asmlinkage_protect0(ret) \
+	__asmlinkage_protect_n(ret)
+#define __asmlinkage_protect1(ret, arg1) \
+	__asmlinkage_protect_n(ret, "m" (arg1))
+#define __asmlinkage_protect2(ret, arg1, arg2) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2))
+#define __asmlinkage_protect3(ret, arg1, arg2, arg3) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3))
+#define __asmlinkage_protect4(ret, arg1, arg2, arg3, arg4) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4))
+#define __asmlinkage_protect5(ret, arg1, arg2, arg3, arg4, arg5) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4), "m" (arg5))
+#define __asmlinkage_protect6(ret, arg1, arg2, arg3, arg4, arg5, arg6) \
+	__asmlinkage_protect_n(ret, "m" (arg1), "m" (arg2), "m" (arg3), \
+			      "m" (arg4), "m" (arg5), "m" (arg6))
+
+#endif /* CONFIG_X86_32 */
+
+#ifdef __ASSEMBLY__
+
+#define GLOBAL(name)	\
+	.globl name;	\
+	name:
+
+#if defined(CONFIG_X86_64) || defined(CONFIG_X86_ALIGNMENT_16)
+#define __ALIGN		.p2align 4, 0x90
+#define __ALIGN_STR	__stringify(__ALIGN)
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_X86_LINKAGE_H */
+
diff --git a/include/asm-generic/linkage.h b/include/asm-generic/linkage.h
new file mode 100644
index 0000000..fef7a01
--- /dev/null
+++ b/include/asm-generic/linkage.h
@@ -0,0 +1,8 @@
+#ifndef __ASM_GENERIC_LINKAGE_H
+#define __ASM_GENERIC_LINKAGE_H
+/*
+ * linux/linkage.h provides reasonable defaults.
+ * an architecture can override them by providing its own version.
+ */
+
+#endif /* __ASM_GENERIC_LINKAGE_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
