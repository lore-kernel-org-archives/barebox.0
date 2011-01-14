Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pdlpl-0002Wi-4j
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 15:45:06 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 14 Jan 2011 16:44:19 +0100
Message-Id: <1295019859-14396-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1295019859-14396-1-git-send-email-plagnioj@jcrosoft.com>
References: <1295019859-14396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] arm: libgcc update to linux v2.6.37
To: barebox@lists.infradead.org

This patch removes the inclusion of libgcc functions into Barebox on the ARM
architecture. Only the really needed functions are provided in the lib_arm
directory. Those implementations are copied from Linux where they are well
proven related to reliably, performance.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/Makefile           |   13 +-
 arch/arm/lib/__aeabi_idivmod.S  |   50 ------
 arch/arm/lib/__aeabi_uidivmod.S |   51 ------
 arch/arm/lib/_ashldi3.S         |   50 ------
 arch/arm/lib/_ashrdi3.S         |   50 ------
 arch/arm/lib/_divsi3.S          |  144 ----------------
 arch/arm/lib/_lshrdi3.S         |   49 ------
 arch/arm/lib/_modsi3.S          |  101 -----------
 arch/arm/lib/_udivsi3.S         |   81 ---------
 arch/arm/lib/_umodsi3.S         |   89 ----------
 arch/arm/lib/ashldi3.S          |   53 ++++++
 arch/arm/lib/ashrdi3.S          |   53 ++++++
 arch/arm/lib/lib1funcs.S        |  348 +++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/lshrdi3.S          |   53 ++++++
 14 files changed, 511 insertions(+), 674 deletions(-)
 delete mode 100644 arch/arm/lib/__aeabi_idivmod.S
 delete mode 100644 arch/arm/lib/__aeabi_uidivmod.S
 delete mode 100644 arch/arm/lib/_ashldi3.S
 delete mode 100644 arch/arm/lib/_ashrdi3.S
 delete mode 100644 arch/arm/lib/_divsi3.S
 delete mode 100644 arch/arm/lib/_lshrdi3.S
 delete mode 100644 arch/arm/lib/_modsi3.S
 delete mode 100644 arch/arm/lib/_udivsi3.S
 delete mode 100644 arch/arm/lib/_umodsi3.S
 create mode 100644 arch/arm/lib/ashldi3.S
 create mode 100644 arch/arm/lib/ashrdi3.S
 create mode 100644 arch/arm/lib/lib1funcs.S
 create mode 100644 arch/arm/lib/lshrdi3.S

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 1d7f15a..89cb72b 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,12 +1,5 @@
 obj-y	+= armlinux.o
-obj-y	+= _ashldi3.o
-obj-y	+= _ashrdi3.o
 obj-y	+= div0.o
-obj-y	+= _divsi3.o
-obj-y	+= _modsi3.o
-obj-y	+= _udivsi3.o
-obj-y	+= _umodsi3.o
-obj-y	+= _lshrdi3.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
 obj-y	+= io-readsb.o
@@ -15,8 +8,10 @@ obj-y	+= io-readsl.o
 obj-y	+= io-writesb.o
 obj-y	+= io-writesw-armv4.o
 obj-y	+= io-writesl.o
-obj-$(CONFIG_AEABI)				+= __aeabi_idivmod.o
-obj-$(CONFIG_AEABI)				+= __aeabi_uidivmod.o
+obj-y	+= lib1funcs.o
+obj-y	+= ashrdi3.o
+obj-y	+= ashldi3.o
+obj-y	+= lshrdi3.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 
diff --git a/arch/arm/lib/__aeabi_idivmod.S b/arch/arm/lib/__aeabi_idivmod.S
deleted file mode 100644
index 07de06b..0000000
--- a/arch/arm/lib/__aeabi_idivmod.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/*
- * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
- *
- * Author: Nicolas Pitre <nico@fluxnic.net>
- *   - contributed to gcc-3.4 on Sep 30, 2003
- *   - adapted for the Linux kernel on Oct 2, 2003
- */
-
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; see the file COPYING.  If not, write to
-the Free Software Foundation, 59 Temple Place - Suite 330,
-Boston, MA 02111-1307, USA.  */
-
-
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section .text.__aeabi_idivmod
-
-ENTRY(__aeabi_idivmod)
-
-	stmfd	sp!, {r0, r1, ip, lr}
-	bl	__aeabi_idiv
-	ldmfd	sp!, {r1, r2, ip, lr}
-	mul	r3, r0, r2
-	sub	r1, r1, r3
-	mov	pc, lr
-
-ENDPROC(__aeabi_idivmod)
diff --git a/arch/arm/lib/__aeabi_uidivmod.S b/arch/arm/lib/__aeabi_uidivmod.S
deleted file mode 100644
index 0e7694c..0000000
--- a/arch/arm/lib/__aeabi_uidivmod.S
+++ /dev/null
@@ -1,51 +0,0 @@
-/*
- * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
- *
- * Author: Nicolas Pitre <nico@fluxnic.net>
- *   - contributed to gcc-3.4 on Sep 30, 2003
- *   - adapted for the Linux kernel on Oct 2, 2003
- */
-
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; see the file COPYING.  If not, write to
-the Free Software Foundation, 59 Temple Place - Suite 330,
-Boston, MA 02111-1307, USA.  */
-
-
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section .text.__aeabi_uidivmod
-
-ENTRY(__aeabi_uidivmod)
-
-	stmfd	sp!, {r0, r1, ip, lr}
-	bl	__aeabi_uidiv
-	ldmfd	sp!, {r1, r2, ip, lr}
-	mul	r3, r0, r2
-	sub	r1, r1, r3
-	mov	pc, lr
-
-ENDPROC(__aeabi_uidivmod)
-
diff --git a/arch/arm/lib/_ashldi3.S b/arch/arm/lib/_ashldi3.S
deleted file mode 100644
index e1c1bf3..0000000
--- a/arch/arm/lib/_ashldi3.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; see the file COPYING.  If not, write to
-the Free Software Foundation, 51 Franklin Street, Fifth Floor,
-Boston, MA 02110-1301, USA.  */
-
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-
-	.section .text.__ashldi3
-
-.globl __ashldi3
-__ashldi3:
-.globl __aeabi_llsl
-__aeabi_llsl:
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	ah, ah, lsl r2
-	movpl	ah, al, lsl r3
-	orrmi	ah, ah, al, lsr ip
-	mov	al, al, lsl r2
-	mov	pc, lr
diff --git a/arch/arm/lib/_ashrdi3.S b/arch/arm/lib/_ashrdi3.S
deleted file mode 100644
index e631554..0000000
--- a/arch/arm/lib/_ashrdi3.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; see the file COPYING.  If not, write to
-the Free Software Foundation, 51 Franklin Street, Fifth Floor,
-Boston, MA 02110-1301, USA.  */
-
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-
-	.section .text.__ashrdi3
-
-.globl __ashrdi3
-__ashrdi3:
-.globl __aeabi_lasr
-__aeabi_lasr:
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	al, al, lsr r2
-	movpl	al, ah, asr r3
-	orrmi	al, al, ah, lsl ip
-	mov	ah, ah, asr r2
-	mov	pc, lr
diff --git a/arch/arm/lib/_divsi3.S b/arch/arm/lib/_divsi3.S
deleted file mode 100644
index 2fbb49d..0000000
--- a/arch/arm/lib/_divsi3.S
+++ /dev/null
@@ -1,144 +0,0 @@
-
-.macro ARM_DIV_BODY dividend, divisor, result, curbit
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\curbit, \divisor
-	clz	\result, \dividend
-	sub	\result, \curbit, \result
-	mov	\curbit, #1
-	mov	\divisor, \divisor, lsl \result
-	mov	\curbit, \curbit, lsl \result
-	mov	\result, #0
-
-#else
-
-	@ Initially shift the divisor left 3 bits if possible,
-	@ set curbit accordingly.  This allows for curbit to be located
-	@ at the left end of each 4 bit nibbles in the division loop
-	@ to save one loop in most cases.
-	tst	\divisor, #0xe0000000
-	moveq	\divisor, \divisor, lsl #3
-	moveq	\curbit, #8
-	movne	\curbit, #1
-
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-1:	cmp	\divisor, #0x10000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #4
-	movlo	\curbit, \curbit, lsl #4
-	blo	1b
-
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-1:	cmp	\divisor, #0x80000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #1
-	movlo	\curbit, \curbit, lsl #1
-	blo	1b
-
-	mov	\result, #0
-
-#endif
-
-	@ Division loop
-1:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	orrhs	\result,   \result,   \curbit
-	cmp	\dividend, \divisor,  lsr #1
-	subhs	\dividend, \dividend, \divisor, lsr #1
-	orrhs	\result,   \result,   \curbit,  lsr #1
-	cmp	\dividend, \divisor,  lsr #2
-	subhs	\dividend, \dividend, \divisor, lsr #2
-	orrhs	\result,   \result,   \curbit,  lsr #2
-	cmp	\dividend, \divisor,  lsr #3
-	subhs	\dividend, \dividend, \divisor, lsr #3
-	orrhs	\result,   \result,   \curbit,  lsr #3
-	cmp	\dividend, #0			@ Early termination?
-	movnes	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
-	movne	\divisor,  \divisor, lsr #4
-	bne	1b
-
-.endm
-
-.macro ARM_DIV2_ORDER divisor, order
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\order, \divisor
-	rsb	\order, \order, #31
-
-#else
-
-	cmp	\divisor, #(1 << 16)
-	movhs	\divisor, \divisor, lsr #16
-	movhs	\order, #16
-	movlo	\order, #0
-
-	cmp	\divisor, #(1 << 8)
-	movhs	\divisor, \divisor, lsr #8
-	addhs	\order, \order, #8
-
-	cmp	\divisor, #(1 << 4)
-	movhs	\divisor, \divisor, lsr #4
-	addhs	\order, \order, #4
-
-	cmp	\divisor, #(1 << 2)
-	addhi	\order, \order, #3
-	addls	\order, \order, \divisor, lsr #1
-
-#endif
-
-.endm
-
-	.section .text.__divsi3
-
-	.align	5
-.globl __divsi3
-__divsi3:
-.globl __aeabi_idiv
-__aeabi_idiv:
-	cmp	r1, #0
-	eor	ip, r0, r1			@ save the sign of the result.
-	beq	Ldiv0
-	rsbmi	r1, r1, #0			@ loops below use unsigned.
-	subs	r2, r1, #1			@ division by 1 or -1 ?
-	beq	10f
-	movs	r3, r0
-	rsbmi	r3, r0, #0			@ positive dividend value
-	cmp	r3, r1
-	bls	11f
-	tst	r1, r2				@ divisor is power of 2 ?
-	beq	12f
-
-	ARM_DIV_BODY r3, r1, r0, r2
-
-	cmp	ip, #0
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-10:	teq	ip, r0				@ same sign ?
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-11:	movlo	r0, #0
-	moveq	r0, ip, asr #31
-	orreq	r0, r0, #1
-	mov	pc, lr
-
-12:	ARM_DIV2_ORDER r1, r2
-
-	cmp	ip, #0
-	mov	r0, r3, lsr r2
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-Ldiv0:
-
-	str	lr, [sp, #-4]!
-	bl	__div0
-	mov	r0, #0			@ About as wrong as it could be.
-	ldr	pc, [sp], #4
diff --git a/arch/arm/lib/_lshrdi3.S b/arch/arm/lib/_lshrdi3.S
deleted file mode 100644
index 71e7f3e..0000000
--- a/arch/arm/lib/_lshrdi3.S
+++ /dev/null
@@ -1,49 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; see the file COPYING.  If not, write to
-the Free Software Foundation, 51 Franklin Street, Fifth Floor,
-Boston, MA 02110-1301, USA.  */
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-	.section .text.__lshrdi3
-
-.globl __lshrdi3
-__lshrdi3:
-.globl __aeabi_llsr
-__aeabi_llsr:
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	al, al, lsr r2
-	movpl	al, ah, lsr r3
-	orrmi	al, al, ah, lsl ip
-	mov	ah, ah, lsr r2
-	mov	pc, lr
-
diff --git a/arch/arm/lib/_modsi3.S b/arch/arm/lib/_modsi3.S
deleted file mode 100644
index d17f8f0..0000000
--- a/arch/arm/lib/_modsi3.S
+++ /dev/null
@@ -1,101 +0,0 @@
-
-	.section .text.__modsi3
-
-.macro ARM_MOD_BODY dividend, divisor, order, spare
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\order, \divisor
-	clz	\spare, \dividend
-	sub	\order, \order, \spare
-	mov	\divisor, \divisor, lsl \order
-
-#else
-
-	mov	\order, #0
-
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-1:	cmp	\divisor, #0x10000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #4
-	addlo	\order, \order, #4
-	blo	1b
-
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-1:	cmp	\divisor, #0x80000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #1
-	addlo	\order, \order, #1
-	blo	1b
-
-#endif
-
-	@ Perform all needed substractions to keep only the reminder.
-	@ Do comparisons in batch of 4 first.
-	subs	\order, \order, #3		@ yes, 3 is intended here
-	blt	2f
-
-1:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	cmp	\dividend, \divisor,  lsr #1
-	subhs	\dividend, \dividend, \divisor, lsr #1
-	cmp	\dividend, \divisor,  lsr #2
-	subhs	\dividend, \dividend, \divisor, lsr #2
-	cmp	\dividend, \divisor,  lsr #3
-	subhs	\dividend, \dividend, \divisor, lsr #3
-	cmp	\dividend, #1
-	mov	\divisor, \divisor, lsr #4
-	subges	\order, \order, #4
-	bge	1b
-
-	tst	\order, #3
-	teqne	\dividend, #0
-	beq	5f
-
-	@ Either 1, 2 or 3 comparison/substractions are left.
-2:	cmn	\order, #2
-	blt	4f
-	beq	3f
-	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	mov	\divisor,  \divisor,  lsr #1
-3:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	mov	\divisor,  \divisor,  lsr #1
-4:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-5:
-.endm
-
-	.align	5
-.globl __modsi3
-__modsi3:
-	cmp	r1, #0
-	beq	Ldiv0
-	rsbmi	r1, r1, #0			@ loops below use unsigned.
-	movs	ip, r0				@ preserve sign of dividend
-	rsbmi	r0, r0, #0			@ if negative make positive
-	subs	r2, r1, #1			@ compare divisor with 1
-	cmpne	r0, r1				@ compare dividend with divisor
-	moveq	r0, #0
-	tsthi	r1, r2				@ see if divisor is power of 2
-	andeq	r0, r0, r2
-	bls	10f
-
-	ARM_MOD_BODY r0, r1, r2, r3
-
-10:	cmp	ip, #0
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-
-Ldiv0:
-
-	str	lr, [sp, #-4]!
-	bl	__div0
-	mov	r0, #0			@ About as wrong as it could be.
-	ldr	pc, [sp], #4
diff --git a/arch/arm/lib/_udivsi3.S b/arch/arm/lib/_udivsi3.S
deleted file mode 100644
index bc89b27..0000000
--- a/arch/arm/lib/_udivsi3.S
+++ /dev/null
@@ -1,81 +0,0 @@
-/* # 1 "libgcc1.S" */
-@ libgcc1 routines for ARM cpu.
-@ Division routines, written by Richard Earnshaw, (rearnsha@armltd.co.uk)
-dividend	.req	r0
-divisor		.req	r1
-result		.req	r2
-curbit		.req	r3
-/* ip		.req	r12	*/
-/* sp		.req	r13	*/
-/* lr		.req	r14	*/
-/* pc		.req	r15	*/
-	.section .text.__udivsi3
-
-	.globl	 __udivsi3
-	.type  __udivsi3       ,function
-	.globl   __aeabi_uidiv
-	.type  __aeabi_uidiv   ,function
-	.align	0
- __udivsi3      :
-__aeabi_uidiv   :
-	cmp	divisor, #0
-	beq	Ldiv0
-	mov	curbit, #1
-	mov	result, #0
-	cmp	dividend, divisor
-	bcc	Lgot_result
-Loop1:
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-	cmp	divisor, #0x10000000
-	cmpcc	divisor, dividend
-	movcc	divisor, divisor, lsl #4
-	movcc	curbit, curbit, lsl #4
-	bcc	Loop1
-Lbignum:
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-	cmp	divisor, #0x80000000
-	cmpcc	divisor, dividend
-	movcc	divisor, divisor, lsl #1
-	movcc	curbit, curbit, lsl #1
-	bcc	Lbignum
-Loop3:
-	@ Test for possible subtractions, and note which bits
-	@ are done in the result.  On the final pass, this may subtract
-	@ too much from the dividend, but the result will be ok, since the
-	@ "bit" will have been shifted out at the bottom.
-	cmp	dividend, divisor
-	subcs	dividend, dividend, divisor
-	orrcs	result, result, curbit
-	cmp	dividend, divisor, lsr #1
-	subcs	dividend, dividend, divisor, lsr #1
-	orrcs	result, result, curbit, lsr #1
-	cmp	dividend, divisor, lsr #2
-	subcs	dividend, dividend, divisor, lsr #2
-	orrcs	result, result, curbit, lsr #2
-	cmp	dividend, divisor, lsr #3
-	subcs	dividend, dividend, divisor, lsr #3
-	orrcs	result, result, curbit, lsr #3
-	cmp	dividend, #0			@ Early termination?
-	movnes	curbit, curbit, lsr #4		@ No, any more bits to do?
-	movne	divisor, divisor, lsr #4
-	bne	Loop3
-Lgot_result:
-	mov	r0, result
-	mov 	pc, lr
-Ldiv0:
-	str	lr, [sp, #-4]!
-	bl	 __div0       (PLT)
-	mov	r0, #0			@ about as wrong as it could be
-	ldmia	sp!, {pc}
-	.size  __udivsi3       , . -  __udivsi3
-/* # 235 "libgcc1.S" */
-/* # 320 "libgcc1.S" */
-/* # 421 "libgcc1.S" */
-/* # 433 "libgcc1.S" */
-/* # 456 "libgcc1.S" */
-/* # 500 "libgcc1.S" */
-/* # 580 "libgcc1.S" */
diff --git a/arch/arm/lib/_umodsi3.S b/arch/arm/lib/_umodsi3.S
deleted file mode 100644
index 58186e9..0000000
--- a/arch/arm/lib/_umodsi3.S
+++ /dev/null
@@ -1,89 +0,0 @@
-/* # 1 "libgcc1.S" */
-@ libgcc1 routines for ARM cpu.
-@ Division routines, written by Richard Earnshaw, (rearnsha@armltd.co.uk)
-/* # 145 "libgcc1.S" */
-dividend	.req	r0
-divisor		.req	r1
-overdone	.req	r2
-curbit		.req	r3
-/* ip		.req	r12	*/
-/* sp		.req	r13	*/
-/* lr		.req	r14	*/
-/* pc		.req	r15	*/
-	.section .text.__umodsi3
-
-	.globl	 __umodsi3
-	.type  __umodsi3       ,function
-	.align 0
- __umodsi3      :
-	cmp	divisor, #0
-	beq	Ldiv0
-	mov	curbit, #1
-	cmp	dividend, divisor
-	movcc  	pc, lr
-Loop1:
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-	cmp	divisor, #0x10000000
-	cmpcc	divisor, dividend
-	movcc	divisor, divisor, lsl #4
-	movcc	curbit, curbit, lsl #4
-	bcc	Loop1
-Lbignum:
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-	cmp	divisor, #0x80000000
-	cmpcc	divisor, dividend
-	movcc	divisor, divisor, lsl #1
-	movcc	curbit, curbit, lsl #1
-	bcc	Lbignum
-Loop3:
-	@ Test for possible subtractions.  On the final pass, this may
-	@ subtract too much from the dividend, so keep track of which
-	@ subtractions are done, we can fix them up afterwards...
-	mov	overdone, #0
-	cmp	dividend, divisor
-	subcs	dividend, dividend, divisor
-	cmp	dividend, divisor, lsr #1
-	subcs	dividend, dividend, divisor, lsr #1
-	orrcs	overdone, overdone, curbit, ror #1
-	cmp	dividend, divisor, lsr #2
-	subcs	dividend, dividend, divisor, lsr #2
-	orrcs	overdone, overdone, curbit, ror #2
-	cmp	dividend, divisor, lsr #3
-	subcs	dividend, dividend, divisor, lsr #3
-	orrcs	overdone, overdone, curbit, ror #3
-	mov	ip, curbit
-	cmp	dividend, #0			@ Early termination?
-	movnes	curbit, curbit, lsr #4		@ No, any more bits to do?
-	movne	divisor, divisor, lsr #4
-	bne	Loop3
-	@ Any subtractions that we should not have done will be recorded in
-	@ the top three bits of "overdone".  Exactly which were not needed
-	@ are governed by the position of the bit, stored in ip.
-	@ If we terminated early, because dividend became zero,
-	@ then none of the below will match, since the bit in ip will not be
-	@ in the bottom nibble.
-	ands	overdone, overdone, #0xe0000000
-	moveq  	pc, lr				@ No fixups needed
-	tst	overdone, ip, ror #3
-	addne	dividend, dividend, divisor, lsr #3
-	tst	overdone, ip, ror #2
-	addne	dividend, dividend, divisor, lsr #2
-	tst	overdone, ip, ror #1
-	addne	dividend, dividend, divisor, lsr #1
-	mov 	pc, lr
-Ldiv0:
-	str	lr, [sp, #-4]!
-	bl	 __div0       (PLT)
-	mov	r0, #0			@ about as wrong as it could be
-	ldmia	sp!, {pc}
-	.size  __umodsi3       , . -  __umodsi3
-/* # 320 "libgcc1.S" */
-/* # 421 "libgcc1.S" */
-/* # 433 "libgcc1.S" */
-/* # 456 "libgcc1.S" */
-/* # 500 "libgcc1.S" */
-/* # 580 "libgcc1.S" */
diff --git a/arch/arm/lib/ashldi3.S b/arch/arm/lib/ashldi3.S
new file mode 100644
index 0000000..638deb1
--- /dev/null
+++ b/arch/arm/lib/ashldi3.S
@@ -0,0 +1,53 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 51 Franklin Street, Fifth Floor,
+Boston, MA 02110-1301, USA.  */
+
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+ENTRY(__ashldi3)
+ENTRY(__aeabi_llsl)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	ah, ah, lsl r2
+	movpl	ah, al, lsl r3
+ ARM(	orrmi	ah, ah, al, lsr ip	)
+ THUMB(	lsrmi	r3, al, ip		)
+ THUMB(	orrmi	ah, ah, r3		)
+	mov	al, al, lsl r2
+	mov	pc, lr
+
+ENDPROC(__ashldi3)
+ENDPROC(__aeabi_llsl)
diff --git a/arch/arm/lib/ashrdi3.S b/arch/arm/lib/ashrdi3.S
new file mode 100644
index 0000000..015e8aa
--- /dev/null
+++ b/arch/arm/lib/ashrdi3.S
@@ -0,0 +1,53 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 51 Franklin Street, Fifth Floor,
+Boston, MA 02110-1301, USA.  */
+
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+ENTRY(__ashrdi3)
+ENTRY(__aeabi_lasr)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	al, al, lsr r2
+	movpl	al, ah, asr r3
+ ARM(	orrmi	al, al, ah, lsl ip	)
+ THUMB(	lslmi	r3, ah, ip		)
+ THUMB(	orrmi	al, al, r3		)
+	mov	ah, ah, asr r2
+	mov	pc, lr
+
+ENDPROC(__ashrdi3)
+ENDPROC(__aeabi_lasr)
diff --git a/arch/arm/lib/lib1funcs.S b/arch/arm/lib/lib1funcs.S
new file mode 100644
index 0000000..6dc0648
--- /dev/null
+++ b/arch/arm/lib/lib1funcs.S
@@ -0,0 +1,348 @@
+/*
+ * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
+ *
+ * Author: Nicolas Pitre <nico@fluxnic.net>
+ *   - contributed to gcc-3.4 on Sep 30, 2003
+ *   - adapted for the Linux kernel on Oct 2, 2003
+ */
+
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 59 Temple Place - Suite 330,
+Boston, MA 02111-1307, USA.  */
+
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+
+.macro ARM_DIV_BODY dividend, divisor, result, curbit
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\curbit, \divisor
+	clz	\result, \dividend
+	sub	\result, \curbit, \result
+	mov	\curbit, #1
+	mov	\divisor, \divisor, lsl \result
+	mov	\curbit, \curbit, lsl \result
+	mov	\result, #0
+	
+#else
+
+	@ Initially shift the divisor left 3 bits if possible,
+	@ set curbit accordingly.  This allows for curbit to be located
+	@ at the left end of each 4 bit nibbles in the division loop
+	@ to save one loop in most cases.
+	tst	\divisor, #0xe0000000
+	moveq	\divisor, \divisor, lsl #3
+	moveq	\curbit, #8
+	movne	\curbit, #1
+
+	@ Unless the divisor is very big, shift it up in multiples of
+	@ four bits, since this is the amount of unwinding in the main
+	@ division loop.  Continue shifting until the divisor is 
+	@ larger than the dividend.
+1:	cmp	\divisor, #0x10000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #4
+	movlo	\curbit, \curbit, lsl #4
+	blo	1b
+
+	@ For very big divisors, we must shift it a bit at a time, or
+	@ we will be in danger of overflowing.
+1:	cmp	\divisor, #0x80000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #1
+	movlo	\curbit, \curbit, lsl #1
+	blo	1b
+
+	mov	\result, #0
+
+#endif
+
+	@ Division loop
+1:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	orrhs	\result,   \result,   \curbit
+	cmp	\dividend, \divisor,  lsr #1
+	subhs	\dividend, \dividend, \divisor, lsr #1
+	orrhs	\result,   \result,   \curbit,  lsr #1
+	cmp	\dividend, \divisor,  lsr #2
+	subhs	\dividend, \dividend, \divisor, lsr #2
+	orrhs	\result,   \result,   \curbit,  lsr #2
+	cmp	\dividend, \divisor,  lsr #3
+	subhs	\dividend, \dividend, \divisor, lsr #3
+	orrhs	\result,   \result,   \curbit,  lsr #3
+	cmp	\dividend, #0			@ Early termination?
+	movnes	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
+	movne	\divisor,  \divisor, lsr #4
+	bne	1b
+
+.endm
+
+
+.macro ARM_DIV2_ORDER divisor, order
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\order, \divisor
+	rsb	\order, \order, #31
+
+#else
+
+	cmp	\divisor, #(1 << 16)
+	movhs	\divisor, \divisor, lsr #16
+	movhs	\order, #16
+	movlo	\order, #0
+
+	cmp	\divisor, #(1 << 8)
+	movhs	\divisor, \divisor, lsr #8
+	addhs	\order, \order, #8
+
+	cmp	\divisor, #(1 << 4)
+	movhs	\divisor, \divisor, lsr #4
+	addhs	\order, \order, #4
+
+	cmp	\divisor, #(1 << 2)
+	addhi	\order, \order, #3
+	addls	\order, \order, \divisor, lsr #1
+
+#endif
+
+.endm
+
+
+.macro ARM_MOD_BODY dividend, divisor, order, spare
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\order, \divisor
+	clz	\spare, \dividend
+	sub	\order, \order, \spare
+	mov	\divisor, \divisor, lsl \order
+
+#else
+
+	mov	\order, #0
+
+	@ Unless the divisor is very big, shift it up in multiples of
+	@ four bits, since this is the amount of unwinding in the main
+	@ division loop.  Continue shifting until the divisor is 
+	@ larger than the dividend.
+1:	cmp	\divisor, #0x10000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #4
+	addlo	\order, \order, #4
+	blo	1b
+
+	@ For very big divisors, we must shift it a bit at a time, or
+	@ we will be in danger of overflowing.
+1:	cmp	\divisor, #0x80000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #1
+	addlo	\order, \order, #1
+	blo	1b
+
+#endif
+
+	@ Perform all needed substractions to keep only the reminder.
+	@ Do comparisons in batch of 4 first.
+	subs	\order, \order, #3		@ yes, 3 is intended here
+	blt	2f
+
+1:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	cmp	\dividend, \divisor,  lsr #1
+	subhs	\dividend, \dividend, \divisor, lsr #1
+	cmp	\dividend, \divisor,  lsr #2
+	subhs	\dividend, \dividend, \divisor, lsr #2
+	cmp	\dividend, \divisor,  lsr #3
+	subhs	\dividend, \dividend, \divisor, lsr #3
+	cmp	\dividend, #1
+	mov	\divisor, \divisor, lsr #4
+	subges	\order, \order, #4
+	bge	1b
+
+	tst	\order, #3
+	teqne	\dividend, #0
+	beq	5f
+
+	@ Either 1, 2 or 3 comparison/substractions are left.
+2:	cmn	\order, #2
+	blt	4f
+	beq	3f
+	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	mov	\divisor,  \divisor,  lsr #1
+3:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	mov	\divisor,  \divisor,  lsr #1
+4:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+5:
+.endm
+
+
+ENTRY(__udivsi3)
+ENTRY(__aeabi_uidiv)
+
+	subs	r2, r1, #1
+	moveq	pc, lr
+	bcc	Ldiv0
+	cmp	r0, r1
+	bls	11f
+	tst	r1, r2
+	beq	12f
+
+	ARM_DIV_BODY r0, r1, r2, r3
+
+	mov	r0, r2
+	mov	pc, lr
+
+11:	moveq	r0, #1
+	movne	r0, #0
+	mov	pc, lr
+
+12:	ARM_DIV2_ORDER r1, r2
+
+	mov	r0, r0, lsr r2
+	mov	pc, lr
+
+ENDPROC(__udivsi3)
+ENDPROC(__aeabi_uidiv)
+
+ENTRY(__umodsi3)
+
+	subs	r2, r1, #1			@ compare divisor with 1
+	bcc	Ldiv0
+	cmpne	r0, r1				@ compare dividend with divisor
+	moveq   r0, #0
+	tsthi	r1, r2				@ see if divisor is power of 2
+	andeq	r0, r0, r2
+	movls	pc, lr
+
+	ARM_MOD_BODY r0, r1, r2, r3
+
+	mov	pc, lr
+
+ENDPROC(__umodsi3)
+
+ENTRY(__divsi3)
+ENTRY(__aeabi_idiv)
+
+	cmp	r1, #0
+	eor	ip, r0, r1			@ save the sign of the result.
+	beq	Ldiv0
+	rsbmi	r1, r1, #0			@ loops below use unsigned.
+	subs	r2, r1, #1			@ division by 1 or -1 ?
+	beq	10f
+	movs	r3, r0
+	rsbmi	r3, r0, #0			@ positive dividend value
+	cmp	r3, r1
+	bls	11f
+	tst	r1, r2				@ divisor is power of 2 ?
+	beq	12f
+
+	ARM_DIV_BODY r3, r1, r0, r2
+
+	cmp	ip, #0
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+10:	teq	ip, r0				@ same sign ?
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+11:	movlo	r0, #0
+	moveq	r0, ip, asr #31
+	orreq	r0, r0, #1
+	mov	pc, lr
+
+12:	ARM_DIV2_ORDER r1, r2
+
+	cmp	ip, #0
+	mov	r0, r3, lsr r2
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+ENDPROC(__divsi3)
+ENDPROC(__aeabi_idiv)
+
+ENTRY(__modsi3)
+
+	cmp	r1, #0
+	beq	Ldiv0
+	rsbmi	r1, r1, #0			@ loops below use unsigned.
+	movs	ip, r0				@ preserve sign of dividend
+	rsbmi	r0, r0, #0			@ if negative make positive
+	subs	r2, r1, #1			@ compare divisor with 1
+	cmpne	r0, r1				@ compare dividend with divisor
+	moveq	r0, #0
+	tsthi	r1, r2				@ see if divisor is power of 2
+	andeq	r0, r0, r2
+	bls	10f
+
+	ARM_MOD_BODY r0, r1, r2, r3
+
+10:	cmp	ip, #0
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+ENDPROC(__modsi3)
+
+#ifdef CONFIG_AEABI
+
+ENTRY(__aeabi_uidivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_uidiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_uidivmod)
+
+ENTRY(__aeabi_idivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_idiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_idivmod)
+
+#endif
+
+Ldiv0:
+
+	str	lr, [sp, #-8]!
+	bl	__div0
+	mov	r0, #0			@ About as wrong as it could be.
+	ldr	pc, [sp], #8
+
+
diff --git a/arch/arm/lib/lshrdi3.S b/arch/arm/lib/lshrdi3.S
new file mode 100644
index 0000000..f83d449
--- /dev/null
+++ b/arch/arm/lib/lshrdi3.S
@@ -0,0 +1,53 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 51 Franklin Street, Fifth Floor,
+Boston, MA 02110-1301, USA.  */
+
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+ENTRY(__lshrdi3)
+ENTRY(__aeabi_llsr)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	al, al, lsr r2
+	movpl	al, ah, lsr r3
+ ARM(	orrmi	al, al, ah, lsl ip	)
+ THUMB(	lslmi	r3, ah, ip		)
+ THUMB(	orrmi	al, al, r3		)
+	mov	ah, ah, lsr r2
+	mov	pc, lr
+
+ENDPROC(__lshrdi3)
+ENDPROC(__aeabi_llsr)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
