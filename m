Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZhEX-0003up-Jj
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 12:10:51 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so927387lbo.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 04:10:49 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 16:10:38 +0400
Message-Id: <1353154239-31574-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/3] MIPS: boot: realize _start in C
To: barebox@lists.infradead.org

The pbl will be incharge of the lowlevel init and
barebox relocation. So we can skip it in barebox itself
and use simple _start.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/Makefile     |    1 -
 arch/mips/boot/main_entry.c |   18 ++++++
 arch/mips/boot/start.S      |  142 -------------------------------------------
 3 files changed, 18 insertions(+), 143 deletions(-)
 delete mode 100644 arch/mips/boot/start.S

diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index 6b093f1..4f11a48 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1,4 +1,3 @@
-obj-y += start.o
 obj-y += main_entry.o
 
 pbl-y += start-pbl.o main_entry-pbl.o
diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 0a33c45..422d40b 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -22,6 +22,8 @@
 #include <asm/cpu-features.h>
 #include <asm/mipsregs.h>
 #include <asm/addrspace.h>
+#include <asm/regdef.h>
+#include <asm-generic/memory_layout.h>
 
 extern void start_barebox(void);
 extern void handle_reserved(void);
@@ -92,3 +94,19 @@ void main_entry(void)
 
 	start_barebox();
 }
+
+void __naked __section(.text_entry) _start(void)
+{
+	u32 r;
+
+	/* setup the stack */
+	r = STACK_BASE + STACK_SIZE - 16;
+
+	__asm__ __volatile__(
+		"move\t$sp, %0\n\t"
+		: /* no outputs */
+		: "r" (r)
+	);
+
+	main_entry();
+}
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
deleted file mode 100644
index 7e2ae5e..0000000
--- a/arch/mips/boot/start.S
+++ /dev/null
@@ -1,142 +0,0 @@
-/*
- * Startup Code for MIPS CPU
- *
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- * Used code copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <asm/regdef.h>
-#include <asm/mipsregs.h>
-#include <asm/asm.h>
-#include <asm-generic/memory_layout.h>
-#include <generated/compile.h>
-#include <generated/utsrelease.h>
-
-	/*
-	 * ADR macro instruction (inspired by ARM)
-	 *
-	 * ARM architecture doesn't have PC-relative jump instruction
-	 * like MIPS' B/BAL insns.  When ARM makes PC-relative jumps,
-	 * it uses ADR insn.  ADR is used to get a destination address
-	 * of 'label' against current PC.  With this, ARM can safely
-	 * make PC-relative jumps.
-	 */
-	.macro	ADR rd label temp
-	.set	push
-	.set	noreorder
-	move	\temp, ra			# preserve ra beforehand
-	bal	_pc
-	 nop
-_pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
-	move	ra, \temp			# within pc +/- 32KB
-	.set	pop
-	.endm
-
-	.set noreorder
-	.text
-	.section ".text_bare_init"
-	.align 4
-
-EXPORT(_start)
-
-	b	__start
-	 nop
-
-	.org	0x10
-	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
-	.byte	0
-
-	.align 4
-__start:
-	/* disable watchpoints */
-	mtc0	zero, CP0_WATCHLO
-	mtc0	zero, CP0_WATCHHI
-
-	/* disable interrupts */
-	mfc0	k0, CP0_STATUS
-	li	k1, ~ST0_IE
-	and	k0, k1
-	mtc0	k0, CP0_STATUS
-
-	/* copy barebox to link location */
-	ADR	a0, _start, t1	/* a0 <- pc-relative position of _start */
-
-	la	a1, _start	/* link (RAM) _start address */
-
-	beq	a0, a1, stack_setup
-	 nop
-
-	la	t0, _start
-	la	t1, __bss_start
-	subu	t2, t1, t0	/* t2 <- size of barebox */
-	addu	a2, a0, t2	/* a2 <- source end address */
-
-#define LONGSIZE	4
-
-copy_loop:
-	/* copy from source address [a0] */
-	lw		t4, LONGSIZE * 0(a0)
-	lw		t5, LONGSIZE * 1(a0)
-	lw		t6, LONGSIZE * 2(a0)
-	lw		t7, LONGSIZE * 3(a0)
-	/* copy fo target address [a1] */
-	sw		t4, LONGSIZE * 0(a1)
-	sw		t5, LONGSIZE * 1(a1)
-	sw		t6, LONGSIZE * 2(a1)
-	sw		t7, LONGSIZE * 3(a1)
-	addi		a0, LONGSIZE * 4
-	subu		t3, a0, a2
-	blez		t3, copy_loop
-	addi		a1, LONGSIZE * 4
-
-	/*
-	 * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
-	 *
-	 * 11.2.2 Stack Argument Structure in o32
-	 * ...
-	 * At the point where a function is called, sp must be
-	 * eight-byte-aligned, matching the alignment of the largest
-	 * basic types -- a long long integer or a floating-point double.
-	 * The eight-byte alignment is not required by 32-bit MIPS integer
-	 * hardware, but it's essential for compatibility with CPUs with
-	 * 64-bit registers, and thus part of the rules. Subroutines fit
-	 * in with this by always adjusting the stack pointer by a multiple
-	 * of eight.
-	 * ...
-	 * SGI's n32 and n64 standards call for the stack to be maintained
-	 * with 16-byte alignment.
-	 *
-	 */
-
-#if (STACK_BASE + STACK_SIZE) % 16 != 0
-#error stack pointer must be 16-byte-aligned
-#endif
-
-stack_setup:
-	la	sp, STACK_BASE + STACK_SIZE
-
-	/* reserve four 32-bit argument slots */
-	addiu	sp, -16
-
-	la	v0, main_entry
-	jal     v0
-	 nop
-
-	/* No return */
-
-__error:
-	b __error
-	 nop
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
