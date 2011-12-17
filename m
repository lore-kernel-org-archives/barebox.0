Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvcd-0008P8-9a
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:05 +0100
Message-Id: <1324133529-2036-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ARM: update string functions from Linux Kernel
To: barebox@lists.infradead.org

The newer versions contain fixes for Thumb-2 mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/copy_template.S    |   24 ++++++++++-
 arch/arm/lib/findbit.S          |   84 ++++++++++++++++++++++++---------------
 arch/arm/lib/io-writesw-armv4.S |   11 +++--
 arch/arm/lib/memcpy.S           |    7 ++-
 4 files changed, 85 insertions(+), 41 deletions(-)

diff --git a/arch/arm/lib/copy_template.S b/arch/arm/lib/copy_template.S
index 61b6e54..d8eb063 100644
--- a/arch/arm/lib/copy_template.S
+++ b/arch/arm/lib/copy_template.S
@@ -57,6 +57,13 @@
  *
  *	Restore registers with the values previously saved with the
  *	'preserv' macro. Called upon code termination.
+ *
+ * LDR1W_SHIFT
+ * STR1W_SHIFT
+ *
+ *	Correction to be applied to the "ip" register when branching into
+ *	the ldr1w or str1w instructions (some of these macros may expand to
+ *	than one 32bit instruction in Thumb-2)
  */
 
 
@@ -99,9 +106,15 @@
 
 5:		ands	ip, r2, #28
 		rsb	ip, ip, #32
+#if LDR1W_SHIFT > 0
+		lsl	ip, ip, #LDR1W_SHIFT
+#endif
 		addne	pc, pc, ip		@ C is always clear here
 		b	7f
-6:		nop
+6:
+		.rept	(1 << LDR1W_SHIFT)
+		W(nop)
+		.endr
 		ldr1w	r1, r3, abort=20f
 		ldr1w	r1, r4, abort=20f
 		ldr1w	r1, r5, abort=20f
@@ -110,9 +123,16 @@
 		ldr1w	r1, r8, abort=20f
 		ldr1w	r1, lr, abort=20f
 
+#if LDR1W_SHIFT < STR1W_SHIFT
+		lsl	ip, ip, #STR1W_SHIFT - LDR1W_SHIFT
+#elif LDR1W_SHIFT > STR1W_SHIFT
+		lsr	ip, ip, #LDR1W_SHIFT - STR1W_SHIFT
+#endif
 		add	pc, pc, ip
 		nop
-		nop
+		.rept	(1 << STR1W_SHIFT)
+		W(nop)
+		.endr
 		str1w	r0, r3, abort=20f
 		str1w	r0, r4, abort=20f
 		str1w	r0, r5, abort=20f
diff --git a/arch/arm/lib/findbit.S b/arch/arm/lib/findbit.S
index 7fa93a5..ef4caff 100644
--- a/arch/arm/lib/findbit.S
+++ b/arch/arm/lib/findbit.S
@@ -14,18 +14,22 @@
  *   also call with zero size.
  * Reworked by rmk.
  */
-	.section .text.basic_bit_functions
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+                .text
 
 /*
  * Purpose  : Find a 'zero' bit
  * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
  */
-	.globl _find_first_zero_bit_le;
-_find_first_zero_bit_le:
+ENTRY(_find_first_zero_bit_le)
 		teq	r1, #0
 		beq	3f
 		mov	r2, #0
-1:		ldrb	r3, [r0, r2, lsr #3]
+1:
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		eors	r3, r3, #0xff		@ invert bits
 		bne	.L_found		@ any now set - found zero bit
 		add	r2, r2, #8		@ next bit pointer
@@ -33,36 +37,40 @@ _find_first_zero_bit_le:
 		blo	1b
 3:		mov	r0, r1			@ no free bits
 		mov	pc, lr
+ENDPROC(_find_first_zero_bit_le)
 
 /*
  * Purpose  : Find next 'zero' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit,
- *					int offset)
+ * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
  */
-	.globl _find_next_zero_bit_le;
-_find_next_zero_bit_le:
+ENTRY(_find_next_zero_bit_le)
 		teq	r1, #0
 		beq	3b
 		ands	ip, r2, #7
 		beq	1b			@ If new byte, goto old routine
-		ldrb	r3, [r0, r2, lsr #3]
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		eor	r3, r3, #0xff		@ now looking for a 1 bit
 		movs	r3, r3, lsr ip		@ shift off unused bits
 		bne	.L_found
 		orr	r2, r2, #7		@ if zero, then no bits here
 		add	r2, r2, #1		@ align bit pointer
 		b	2b			@ loop for next bit
+ENDPROC(_find_next_zero_bit_le)
 
 /*
  * Purpose  : Find a 'one' bit
- * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit)
+ * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
  */
-	.globl _find_first_bit_le;
-_find_first_bit_le:
+ENTRY(_find_first_bit_le)
 		teq	r1, #0
 		beq	3f
 		mov	r2, #0
-1:		ldrb	r3, [r0, r2, lsr #3]
+1:
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		movs	r3, r3
 		bne	.L_found		@ any now set - found zero bit
 		add	r2, r2, #8		@ next bit pointer
@@ -70,34 +78,37 @@ _find_first_bit_le:
 		blo	1b
 3:		mov	r0, r1			@ no free bits
 		mov	pc, lr
+ENDPROC(_find_first_bit_le)
 
 /*
  * Purpose  : Find next 'one' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit,
- * 					int offset)
+ * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
  */
-	.globl _find_next_bit_le;
-_find_next_bit_le:
+ENTRY(_find_next_bit_le)
 		teq	r1, #0
 		beq	3b
 		ands	ip, r2, #7
 		beq	1b			@ If new byte, goto old routine
-		ldrb	r3, [r0, r2, lsr #3]
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		movs	r3, r3, lsr ip		@ shift off unused bits
 		bne	.L_found
 		orr	r2, r2, #7		@ if zero, then no bits here
 		add	r2, r2, #1		@ align bit pointer
 		b	2b			@ loop for next bit
+ENDPROC(_find_next_bit_le)
 
 #ifdef __ARMEB__
 
-	.globl _find_first_zero_bit_be;
-_find_first_zero_bit_be:
+ENTRY(_find_first_zero_bit_be)
 		teq	r1, #0
 		beq	3f
 		mov	r2, #0
 1:		eor	r3, r2, #0x18		@ big endian byte ordering
-		ldrb	r3, [r0, r3, lsr #3]
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		eors	r3, r3, #0xff		@ invert bits
 		bne	.L_found		@ any now set - found zero bit
 		add	r2, r2, #8		@ next bit pointer
@@ -105,29 +116,33 @@ _find_first_zero_bit_be:
 		blo	1b
 3:		mov	r0, r1			@ no free bits
 		mov	pc, lr
+ENDPROC(_find_first_zero_bit_be)
 
-	.globl _find_next_zero_bit_be;
-_find_next_zero_bit_be:
+ENTRY(_find_next_zero_bit_be)
 		teq	r1, #0
 		beq	3b
 		ands	ip, r2, #7
 		beq	1b			@ If new byte, goto old routine
 		eor	r3, r2, #0x18		@ big endian byte ordering
-		ldrb	r3, [r0, r3, lsr #3]
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		eor	r3, r3, #0xff		@ now looking for a 1 bit
 		movs	r3, r3, lsr ip		@ shift off unused bits
 		bne	.L_found
 		orr	r2, r2, #7		@ if zero, then no bits here
 		add	r2, r2, #1		@ align bit pointer
 		b	2b			@ loop for next bit
+ENDPROC(_find_next_zero_bit_be)
 
-	.globl _find_first_bit_be;
-_find_first_bit_be:
+ENTRY(_find_first_bit_be)
 		teq	r1, #0
 		beq	3f
 		mov	r2, #0
 1:		eor	r3, r2, #0x18		@ big endian byte ordering
-		ldrb	r3, [r0, r3, lsr #3]
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		movs	r3, r3
 		bne	.L_found		@ any now set - found zero bit
 		add	r2, r2, #8		@ next bit pointer
@@ -135,20 +150,23 @@ _find_first_bit_be:
 		blo	1b
 3:		mov	r0, r1			@ no free bits
 		mov	pc, lr
+ENDPROC(_find_first_bit_be)
 
-	.globl _find_next_bit_be;
-_find_next_bit_be:
+ENTRY(_find_next_bit_be)
 		teq	r1, #0
 		beq	3b
 		ands	ip, r2, #7
 		beq	1b			@ If new byte, goto old routine
 		eor	r3, r2, #0x18		@ big endian byte ordering
-		ldrb	r3, [r0, r3, lsr #3]
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
 		movs	r3, r3, lsr ip		@ shift off unused bits
 		bne	.L_found
 		orr	r2, r2, #7		@ if zero, then no bits here
 		add	r2, r2, #1		@ align bit pointer
 		b	2b			@ loop for next bit
+ENDPROC(_find_next_bit_be)
 
 #endif
 
@@ -157,8 +175,8 @@ _find_next_bit_be:
  */
 .L_found:
 #if __LINUX_ARM_ARCH__ >= 5
-		rsb	r1, r3, #0
-		and	r3, r3, r1
+		rsb	r0, r3, #0
+		and	r3, r3, r0
 		clz	r3, r3
 		rsb	r3, r3, #31
 		add	r0, r2, r3
@@ -173,5 +191,7 @@ _find_next_bit_be:
 		addeq	r2, r2, #1
 		mov	r0, r2
 #endif
+		cmp	r1, r0			@ Clamp to maxbit
+		movlo	r0, r1
 		mov	pc, lr
 
diff --git a/arch/arm/lib/io-writesw-armv4.S b/arch/arm/lib/io-writesw-armv4.S
index cd0aa7f..ff4f71b 100644
--- a/arch/arm/lib/io-writesw-armv4.S
+++ b/arch/arm/lib/io-writesw-armv4.S
@@ -22,8 +22,6 @@
 #endif
 		.endm
 
-.section .text.writesw
-
 .Loutsw_align:	movs	ip, r1, lsl #31
 		bne	.Loutsw_noalign
 
@@ -31,7 +29,7 @@
 		sub	r2, r2, #1
 		strh	r3, [r0]
 
-ENTRY(writesw)
+ENTRY(__raw_writesw)
 		teq	r2, #0
 		moveq	pc, lr
 		ands	r3, r1, #3
@@ -77,7 +75,10 @@ ENTRY(writesw)
 #endif
 
 .Loutsw_noalign:
-		ldr	r3, [r1, -r3]!
+ ARM(		ldr	r3, [r1, -r3]!	)
+ THUMB(		rsb	r3, r3, #0	)
+ THUMB(		ldr	r3, [r1, r3]	)
+ THUMB(		sub	r1, r3		)
 		subcs	r2, r2, #1
 		bcs	2f
 		subs	r2, r2, #2
@@ -96,4 +97,4 @@ ENTRY(writesw)
 3:		movne	ip, r3, lsr #8
 		strneh	ip, [r0]
 		mov	pc, lr
-ENDPROC(writesw)
+ENDPROC(__raw_writesw)
diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
index 513ed64..5123691 100644
--- a/arch/arm/lib/memcpy.S
+++ b/arch/arm/lib/memcpy.S
@@ -13,8 +13,11 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+#define LDR1W_SHIFT	0
+#define STR1W_SHIFT	0
+
 	.macro ldr1w ptr reg abort
-	ldr \reg, [\ptr], #4
+	W(ldr) \reg, [\ptr], #4
 	.endm
 
 	.macro ldr4w ptr reg1 reg2 reg3 reg4 abort
@@ -30,7 +33,7 @@
 	.endm
 
 	.macro str1w ptr reg abort
-	str \reg, [\ptr], #4
+	W(str) \reg, [\ptr], #4
 	.endm
 
 	.macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
