Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZdnRy-0002zO-Ny
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 22:51:16 +0000
Received: by lagj9 with SMTP id j9so58573198lag.2
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 15:50:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 01:50:45 +0300
Message-Id: <1442789445-10778-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
References: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: refactor SPL start.S code
To: barebox@lists.infradead.org

This commit removes code duplication by using
MIPS PBL macros in the SPL start.S file.

One of the side effects of this patch is that
the only <asm/pbl_macros.h> header file is depends
on the <generated/utsrelease.h> header file.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S | 108 ++++---------------------------------------------
 1 file changed, 7 insertions(+), 101 deletions(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 7e2ae5e..1ddce95 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -1,8 +1,7 @@
 /*
  * Startup Code for MIPS CPU
  *
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- * Used code copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
+ * Copyright (C) 2011, 2015 Antony Pavlov <antonynpavlov@gmail.com>
  *
  * This file is part of barebox.
  * See file CREDITS for list of people who contributed to this project.
@@ -18,32 +17,7 @@
  *
  */
 
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
+#include <asm/pbl_macros.h>
 
 	.set noreorder
 	.text
@@ -52,91 +26,23 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 
 EXPORT(_start)
 
-	b	__start
-	 nop
+	mips_barebox_10h
 
-	.org	0x10
-	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
-	.byte	0
-
-	.align 4
-__start:
 	/* disable watchpoints */
 	mtc0	zero, CP0_WATCHLO
 	mtc0	zero, CP0_WATCHHI
 
-	/* disable interrupts */
-	mfc0	k0, CP0_STATUS
-	li	k1, ~ST0_IE
-	and	k0, k1
-	mtc0	k0, CP0_STATUS
+	mips_disable_interrupts
 
-	/* copy barebox to link location */
-	ADR	a0, _start, t1	/* a0 <- pc-relative position of _start */
+	copy_to_link_location _start
 
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
+	stack_setup
 
 	la	v0, main_entry
-	jal     v0
+	jal	v0
 	 nop
 
 	/* No return */
-
 __error:
 	b __error
 	 nop
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
