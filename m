Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yajva-0008Vy-UD
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:57:08 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 98FD1103C1E5
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:19 +0100
Message-Id: <1427284580-30218-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150325115140.GD8125@ns203013.ovh.net>
 <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] arm: crypto: add sha1 assembly support
To: barebox@lists.infradead.org

from Linux 3.9

linux generic implementation

$ ls -al build/versatilpb/arch/arm/pbl/zbarebox.bin
-rw-r--r-- 1 root root 210829 Mar 24 13:21 build/versatilpb/arch/arm/pbl/zbarebox.bin

linux arm v4 asm implementation
$ ls -al build/versatilpb/arch/arm/pbl/zbarebox.bin
-rw-r--r-- 1 root root 207786 Mar 24 13:23 build/versatilpb/arch/arm/pbl/zbarebox.bin

we win 3043 bytes and speed cf code

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                  |   1 +
 arch/arm/crypto/Makefile           |   7 +
 arch/arm/crypto/sha1-armv4-large.S | 497 +++++++++++++++++++++++++++++++++++++
 arch/arm/crypto/sha1_glue.c        | 137 ++++++++++
 crypto/Kconfig                     |   8 +
 5 files changed, 650 insertions(+)
 create mode 100644 arch/arm/crypto/Makefile
 create mode 100644 arch/arm/crypto/sha1-armv4-large.S
 create mode 100644 arch/arm/crypto/sha1_glue.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 96c9f57..721aa9b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -269,6 +269,7 @@ endif
 
 common-y += $(BOARD) arch/arm/boards/ $(MACH)
 common-y += arch/arm/lib/ arch/arm/cpu/
+common-y += arch/arm/crypto/
 
 common-$(CONFIG_OFTREE) += arch/arm/dts/
 
diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
new file mode 100644
index 0000000..ffdb8c1
--- /dev/null
+++ b/arch/arm/crypto/Makefile
@@ -0,0 +1,7 @@
+#
+# Arch-specific CryptoAPI modules.
+#
+
+obj-$(CONFIG_DIGEST_SHA1_ARM) += sha1-arm.o
+
+sha1-arm-y	:= sha1-armv4-large.o sha1_glue.o
diff --git a/arch/arm/crypto/sha1-armv4-large.S b/arch/arm/crypto/sha1-armv4-large.S
new file mode 100644
index 0000000..99207c4
--- /dev/null
+++ b/arch/arm/crypto/sha1-armv4-large.S
@@ -0,0 +1,497 @@
+#define __ARM_ARCH__ __LINUX_ARM_ARCH__
+@ ====================================================================
+@ Written by Andy Polyakov <appro@fy.chalmers.se> for the OpenSSL
+@ project. The module is, however, dual licensed under OpenSSL and
+@ CRYPTOGAMS licenses depending on where you obtain it. For further
+@ details see http://www.openssl.org/~appro/cryptogams/.
+@ ====================================================================
+
+@ sha1_block procedure for ARMv4.
+@
+@ January 2007.
+
+@ Size/performance trade-off
+@ ====================================================================
+@ impl		size in bytes	comp cycles[*]	measured performance
+@ ====================================================================
+@ thumb		304		3212		4420
+@ armv4-small	392/+29%	1958/+64%	2250/+96%
+@ armv4-compact	740/+89%	1552/+26%	1840/+22%
+@ armv4-large	1420/+92%	1307/+19%	1370/+34%[***]
+@ full unroll	~5100/+260%	~1260/+4%	~1300/+5%
+@ ====================================================================
+@ thumb		= same as 'small' but in Thumb instructions[**] and
+@		  with recurring code in two private functions;
+@ small		= detached Xload/update, loops are folded;
+@ compact	= detached Xload/update, 5x unroll;
+@ large		= interleaved Xload/update, 5x unroll;
+@ full unroll	= interleaved Xload/update, full unroll, estimated[!];
+@
+@ [*]	Manually counted instructions in "grand" loop body. Measured
+@	performance is affected by prologue and epilogue overhead,
+@	i-cache availability, branch penalties, etc.
+@ [**]	While each Thumb instruction is twice smaller, they are not as
+@	diverse as ARM ones: e.g., there are only two arithmetic
+@	instructions with 3 arguments, no [fixed] rotate, addressing
+@	modes are limited. As result it takes more instructions to do
+@	the same job in Thumb, therefore the code is never twice as
+@	small and always slower.
+@ [***]	which is also ~35% better than compiler generated code. Dual-
+@	issue Cortex A8 core was measured to process input block in
+@	~990 cycles.
+
+@ August 2010.
+@
+@ Rescheduling for dual-issue pipeline resulted in 13% improvement on
+@ Cortex A8 core and in absolute terms ~870 cycles per input block
+@ [or 13.6 cycles per byte].
+
+@ February 2011.
+@
+@ Profiler-assisted and platform-specific optimization resulted in 10%
+@ improvement on Cortex A8 core and 12.2 cycles per byte.
+
+#include <linux/linkage.h>
+
+.text
+
+.align	2
+ENTRY(sha1_block_data_order)
+	stmdb	sp!,{r4-r12,lr}
+	add	r2,r1,r2,lsl#6	@ r2 to point at the end of r1
+	ldmia	r0,{r3,r4,r5,r6,r7}
+.Lloop:
+	ldr	r8,.LK_00_19
+	mov	r14,sp
+	sub	sp,sp,#15*4
+	mov	r5,r5,ror#30
+	mov	r6,r6,ror#30
+	mov	r7,r7,ror#30		@ [6]
+.L_00_15:
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r7,r8,r7,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r5,r6			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r7,r8,r7,ror#2			@ E+=K_00_19
+	eor	r10,r5,r6			@ F_xx_xx
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r4,r10,ror#2
+	add	r7,r7,r9			@ E+=X[i]
+	eor	r10,r10,r6,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r7,r7,r10			@ E+=F_00_19(B,C,D)
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r6,r8,r6,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r4,r5			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r6,r6,r7,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r6,r8,r6,ror#2			@ E+=K_00_19
+	eor	r10,r4,r5			@ F_xx_xx
+	add	r6,r6,r7,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r3,r10,ror#2
+	add	r6,r6,r9			@ E+=X[i]
+	eor	r10,r10,r5,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r6,r6,r10			@ E+=F_00_19(B,C,D)
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r5,r8,r5,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r3,r4			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r5,r5,r6,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r5,r8,r5,ror#2			@ E+=K_00_19
+	eor	r10,r3,r4			@ F_xx_xx
+	add	r5,r5,r6,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r7,r10,ror#2
+	add	r5,r5,r9			@ E+=X[i]
+	eor	r10,r10,r4,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r5,r5,r10			@ E+=F_00_19(B,C,D)
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r4,r8,r4,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r7,r3			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r4,r4,r5,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r4,r8,r4,ror#2			@ E+=K_00_19
+	eor	r10,r7,r3			@ F_xx_xx
+	add	r4,r4,r5,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r6,r10,ror#2
+	add	r4,r4,r9			@ E+=X[i]
+	eor	r10,r10,r3,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r4,r4,r10			@ E+=F_00_19(B,C,D)
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r3,r8,r3,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r6,r7			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r3,r3,r4,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r3,r8,r3,ror#2			@ E+=K_00_19
+	eor	r10,r6,r7			@ F_xx_xx
+	add	r3,r3,r4,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r5,r10,ror#2
+	add	r3,r3,r9			@ E+=X[i]
+	eor	r10,r10,r7,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r3,r3,r10			@ E+=F_00_19(B,C,D)
+	cmp	r14,sp
+	bne	.L_00_15		@ [((11+4)*5+2)*3]
+	sub	sp,sp,#25*4
+#if __ARM_ARCH__<7
+	ldrb	r10,[r1,#2]
+	ldrb	r9,[r1,#3]
+	ldrb	r11,[r1,#1]
+	add	r7,r8,r7,ror#2			@ E+=K_00_19
+	ldrb	r12,[r1],#4
+	orr	r9,r9,r10,lsl#8
+	eor	r10,r5,r6			@ F_xx_xx
+	orr	r9,r9,r11,lsl#16
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+	orr	r9,r9,r12,lsl#24
+#else
+	ldr	r9,[r1],#4			@ handles unaligned
+	add	r7,r8,r7,ror#2			@ E+=K_00_19
+	eor	r10,r5,r6			@ F_xx_xx
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+#ifdef __ARMEL__
+	rev	r9,r9				@ byte swap
+#endif
+#endif
+	and	r10,r4,r10,ror#2
+	add	r7,r7,r9			@ E+=X[i]
+	eor	r10,r10,r6,ror#2		@ F_00_19(B,C,D)
+	str	r9,[r14,#-4]!
+	add	r7,r7,r10			@ E+=F_00_19(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r6,r8,r6,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r4,r5			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r6,r6,r7,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r3,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r6,r6,r9			@ E+=X[i]
+	eor	r10,r10,r5,ror#2		@ F_00_19(B,C,D)
+	add	r6,r6,r10			@ E+=F_00_19(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r5,r8,r5,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r3,r4			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r5,r5,r6,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r7,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r5,r5,r9			@ E+=X[i]
+	eor	r10,r10,r4,ror#2		@ F_00_19(B,C,D)
+	add	r5,r5,r10			@ E+=F_00_19(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r4,r8,r4,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r7,r3			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r4,r4,r5,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r6,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r4,r4,r9			@ E+=X[i]
+	eor	r10,r10,r3,ror#2		@ F_00_19(B,C,D)
+	add	r4,r4,r10			@ E+=F_00_19(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r3,r8,r3,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r6,r7			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r3,r3,r4,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r5,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r3,r3,r9			@ E+=X[i]
+	eor	r10,r10,r7,ror#2		@ F_00_19(B,C,D)
+	add	r3,r3,r10			@ E+=F_00_19(B,C,D)
+
+	ldr	r8,.LK_20_39		@ [+15+16*4]
+	cmn	sp,#0			@ [+3], clear carry to denote 20_39
+.L_20_39_or_60_79:
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r7,r8,r7,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r5,r6			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	eor r10,r4,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r7,r7,r9			@ E+=X[i]
+	add	r7,r7,r10			@ E+=F_20_39(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r6,r8,r6,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r4,r5			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r6,r6,r7,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	eor r10,r3,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r6,r6,r9			@ E+=X[i]
+	add	r6,r6,r10			@ E+=F_20_39(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r5,r8,r5,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r3,r4			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r5,r5,r6,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	eor r10,r7,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r5,r5,r9			@ E+=X[i]
+	add	r5,r5,r10			@ E+=F_20_39(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r4,r8,r4,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r7,r3			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r4,r4,r5,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	eor r10,r6,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r4,r4,r9			@ E+=X[i]
+	add	r4,r4,r10			@ E+=F_20_39(B,C,D)
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r3,r8,r3,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r6,r7			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r3,r3,r4,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	eor r10,r5,r10,ror#2					@ F_xx_xx
+						@ F_xx_xx
+	add	r3,r3,r9			@ E+=X[i]
+	add	r3,r3,r10			@ E+=F_20_39(B,C,D)
+ ARM(	teq	r14,sp		)	@ preserve carry
+ THUMB(	mov	r11,sp		)
+ THUMB(	teq	r14,r11		)	@ preserve carry
+	bne	.L_20_39_or_60_79	@ [+((12+3)*5+2)*4]
+	bcs	.L_done			@ [+((12+3)*5+2)*4], spare 300 bytes
+
+	ldr	r8,.LK_40_59
+	sub	sp,sp,#20*4		@ [+2]
+.L_40_59:
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r7,r8,r7,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r5,r6			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r7,r7,r3,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r4,r10,ror#2					@ F_xx_xx
+	and r11,r5,r6					@ F_xx_xx
+	add	r7,r7,r9			@ E+=X[i]
+	add	r7,r7,r10			@ E+=F_40_59(B,C,D)
+	add	r7,r7,r11,ror#2
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r6,r8,r6,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r4,r5			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r6,r6,r7,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r3,r10,ror#2					@ F_xx_xx
+	and r11,r4,r5					@ F_xx_xx
+	add	r6,r6,r9			@ E+=X[i]
+	add	r6,r6,r10			@ E+=F_40_59(B,C,D)
+	add	r6,r6,r11,ror#2
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r5,r8,r5,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r3,r4			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r5,r5,r6,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r7,r10,ror#2					@ F_xx_xx
+	and r11,r3,r4					@ F_xx_xx
+	add	r5,r5,r9			@ E+=X[i]
+	add	r5,r5,r10			@ E+=F_40_59(B,C,D)
+	add	r5,r5,r11,ror#2
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r4,r8,r4,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r7,r3			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r4,r4,r5,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r6,r10,ror#2					@ F_xx_xx
+	and r11,r7,r3					@ F_xx_xx
+	add	r4,r4,r9			@ E+=X[i]
+	add	r4,r4,r10			@ E+=F_40_59(B,C,D)
+	add	r4,r4,r11,ror#2
+	ldr	r9,[r14,#15*4]
+	ldr	r10,[r14,#13*4]
+	ldr	r11,[r14,#7*4]
+	add	r3,r8,r3,ror#2			@ E+=K_xx_xx
+	ldr	r12,[r14,#2*4]
+	eor	r9,r9,r10
+	eor	r11,r11,r12			@ 1 cycle stall
+	eor	r10,r6,r7			@ F_xx_xx
+	mov	r9,r9,ror#31
+	add	r3,r3,r4,ror#27			@ E+=ROR(A,27)
+	eor	r9,r9,r11,ror#31
+	str	r9,[r14,#-4]!
+	and r10,r5,r10,ror#2					@ F_xx_xx
+	and r11,r6,r7					@ F_xx_xx
+	add	r3,r3,r9			@ E+=X[i]
+	add	r3,r3,r10			@ E+=F_40_59(B,C,D)
+	add	r3,r3,r11,ror#2
+	cmp	r14,sp
+	bne	.L_40_59		@ [+((12+5)*5+2)*4]
+
+	ldr	r8,.LK_60_79
+	sub	sp,sp,#20*4
+	cmp	sp,#0			@ set carry to denote 60_79
+	b	.L_20_39_or_60_79	@ [+4], spare 300 bytes
+.L_done:
+	add	sp,sp,#80*4		@ "deallocate" stack frame
+	ldmia	r0,{r8,r9,r10,r11,r12}
+	add	r3,r8,r3
+	add	r4,r9,r4
+	add	r5,r10,r5,ror#2
+	add	r6,r11,r6,ror#2
+	add	r7,r12,r7,ror#2
+	stmia	r0,{r3,r4,r5,r6,r7}
+	teq	r1,r2
+	bne	.Lloop			@ [+18], total 1307
+
+	ldmia	sp!,{r4-r12,pc}
+.align	2
+.LK_00_19:	.word	0x5a827999
+.LK_20_39:	.word	0x6ed9eba1
+.LK_40_59:	.word	0x8f1bbcdc
+.LK_60_79:	.word	0xca62c1d6
+ENDPROC(sha1_block_data_order)
+.asciz	"SHA1 block transform for ARMv4, CRYPTOGAMS by <appro@openssl.org>"
+.align	2
diff --git a/arch/arm/crypto/sha1_glue.c b/arch/arm/crypto/sha1_glue.c
new file mode 100644
index 0000000..176aa9e
--- /dev/null
+++ b/arch/arm/crypto/sha1_glue.c
@@ -0,0 +1,137 @@
+/*
+ * Cryptographic API.
+ * Glue code for the SHA1 Secure Hash Algorithm assembler implementation
+ *
+ * This file is based on sha1_generic.c and sha1_ssse3_glue.c
+ *
+ * Copyright (c) Alan Smithee.
+ * Copyright (c) Andrew McDonald <andrew@mcdonald.org.uk>
+ * Copyright (c) Jean-Francois Dive <jef@linuxbe.org>
+ * Copyright (c) Mathias Krause <minipli@googlemail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the Free
+ * Software Foundation; either version 2 of the License, or (at your option)
+ * any later version.
+ *
+ */
+
+#include <common.h>
+#include <digest.h>
+#include <init.h>
+#include <crypto/sha.h>
+#include <crypto/internal.h>
+#include <asm/byteorder.h>
+
+void sha1_block_data_order(u32 *digest,
+		const unsigned char *data, unsigned int rounds);
+
+
+static int sha1_init(struct digest *desc)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+
+	*sctx = (struct sha1_state){
+		.state = { SHA1_H0, SHA1_H1, SHA1_H2, SHA1_H3, SHA1_H4 },
+	};
+
+	return 0;
+}
+
+
+static int __sha1_update(struct sha1_state *sctx, const u8 *data,
+			 unsigned int len, unsigned int partial)
+{
+	unsigned int done = 0;
+
+	sctx->count += len;
+
+	if (partial) {
+		done = SHA1_BLOCK_SIZE - partial;
+		memcpy(sctx->buffer + partial, data, done);
+		sha1_block_data_order(sctx->state, sctx->buffer, 1);
+	}
+
+	if (len - done >= SHA1_BLOCK_SIZE) {
+		const unsigned int rounds = (len - done) / SHA1_BLOCK_SIZE;
+		sha1_block_data_order(sctx->state, data + done, rounds);
+		done += rounds * SHA1_BLOCK_SIZE;
+	}
+
+	memcpy(sctx->buffer, data + done, len - done);
+	return 0;
+}
+
+
+int sha1_update_arm(struct digest *desc, const void *data,
+			     unsigned long len)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	unsigned int partial = sctx->count % SHA1_BLOCK_SIZE;
+	int res;
+
+	/* Handle the fast case right here */
+	if (partial + len < SHA1_BLOCK_SIZE) {
+		sctx->count += len;
+		memcpy(sctx->buffer + partial, data, len);
+		return 0;
+	}
+	res = __sha1_update(sctx, data, len, partial);
+	return res;
+}
+EXPORT_SYMBOL_GPL(sha1_update_arm);
+
+
+/* Add padding and return the message digest. */
+static int sha1_final(struct digest *desc, u8 *out)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	unsigned int i, index, padlen;
+	__be32 *dst = (__be32 *)out;
+	__be64 bits;
+	static const u8 padding[SHA1_BLOCK_SIZE] = { 0x80, };
+
+	bits = cpu_to_be64(sctx->count << 3);
+
+	/* Pad out to 56 mod 64 and append length */
+	index = sctx->count % SHA1_BLOCK_SIZE;
+	padlen = (index < 56) ? (56 - index) : ((SHA1_BLOCK_SIZE+56) - index);
+	/* We need to fill a whole block for __sha1_update() */
+	if (padlen <= 56) {
+		sctx->count += padlen;
+		memcpy(sctx->buffer + index, padding, padlen);
+	} else {
+		__sha1_update(sctx, padding, padlen, index);
+	}
+	__sha1_update(sctx, (const u8 *)&bits, sizeof(bits), 56);
+
+	/* Store state in digest */
+	for (i = 0; i < 5; i++)
+		dst[i] = cpu_to_be32(sctx->state[i]);
+
+	/* Wipe context */
+	memset(sctx, 0, sizeof(*sctx));
+	return 0;
+}
+
+static struct digest_algo m = {
+	.base = {
+		.name		=	"sha1",
+		.driver_name	=	"sha1-asm",
+		.priority	=	150,
+	},
+
+	.init	=	sha1_init,
+	.update	=	sha1_update_arm,
+	.final	=	sha1_final,
+	.digest	=	digest_generic_digest,
+	.verify	=	digest_generic_verify,
+	.length	=	SHA1_DIGEST_SIZE,
+	.ctx_length =	sizeof(struct sha1_state),
+};
+
+static int sha1_mod_init(void)
+{
+	return digest_algo_register(&m);
+}
+device_initcall(sha1_mod_init);
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 5a69236..1816dbd 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -61,6 +61,14 @@ config DIGEST_HMAC_GENERIC
 	bool "HMAC"
 	select DIGEST_HMAC
 
+config DIGEST_SHA1_ARM
+	tristate "SHA1 digest algorithm (ARM-asm)"
+	depends on ARM
+	select SHA1
+	help
+	  SHA-1 secure hash standard (FIPS 180-1/DFIPS 180-2) implemented
+	  using optimized ARM assembler.
+
 endif
 
 config CRYPTO_PBKDF2
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
