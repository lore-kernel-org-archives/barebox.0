Delivery-date: Wed, 25 Sep 2024 16:11:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSjP-002cV2-0F
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:11:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSjO-0004qn-KO
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:11:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jr+iCDP8N/c6hoLc6jSPE6ZxRqIFm1p+h5i7UPOhaBI=; b=WwX8NBnIbCeqr7/4L9gqGROa0G
	op8fkahBjPTMGJaXo9iZPocVZf8G3q+po7n3oHzV0W7QTjMkUz19k3wu3fQtm7/4g2Q6yHL+3ZrHR
	74Locoeh/VXyoK7kTMTaufVx/Aehvg1/vKZo9JiVHrQJ+Nmc48uV0DCkG8kKtu7Inn5QyCTijU72b
	YqYC4AhqStS/CUKUIZBj6UP/sO7PkYq/aGxTS9h+hThPmfZhZr6bD6MKPM9foDO8aH7HHGfeuJ846
	MS2kzT7fbX0qGWExcDD97m0xm2GEwzfH4/+3B0bKWJP82yxZq0cB4SSmSlda40WqhRbl3MTE+NFhb
	C84rqFKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSis-00000005YFI-3f21;
	Wed, 25 Sep 2024 14:10:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSio-00000005YCs-2CLY
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:10:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSin-0004bl-6C; Wed, 25 Sep 2024 16:10:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSim-001StZ-PW; Wed, 25 Sep 2024 16:10:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1c;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-10-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272526; l=20256;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jLKwfnOeCje4y3J/3nULM1qkDQ2s8F1cXNQQakmNiis=;
 b=g5nEPMhfgj4tbd+20QMhQGV9pF7njlswfLlbjE7UwiKk9qJ5a7x3sW9MQKGdjJl2CI8H/sGgS
 2Hjcg9H4NHiDwUG8iPD6CNku5L06V6efSs1oyPiYBcsWleHMjfD5s9P
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_071026_949219_9DB3F430 
X-CRM114-Status: GOOD (  28.60  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] ARM: add optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now there has been no assembler optimized version of memmove() for
ARM. Add this from Linux for both ARM32 and ARM64. This also updates
memcpy() for ARM64 from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/cache.h   |   8 ++
 arch/arm/include/asm/string.h  |   4 +-
 arch/arm/lib32/Makefile        |   1 +
 arch/arm/lib32/memmove.S       | 206 +++++++++++++++++++++++++++++++
 arch/arm/lib64/copy_template.S |  11 +-
 arch/arm/lib64/memcpy.S        | 274 ++++++++++++++++++++++++++++++++++-------
 arch/arm/lib64/memset.S        |  18 +--
 arch/arm/lib64/string.c        |  17 +++
 include/string.h               |   2 +
 lib/string.c                   |   1 -
 10 files changed, 484 insertions(+), 58 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 261c30129a..dd022c1f23 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -3,6 +3,13 @@
 #ifndef __ASM_CACHE_H
 #define __ASM_CACHE_H
 
+#ifdef CONFIG_CPU_64
+#define L1_CACHE_SHIFT		(6)
+#define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
+#endif
+
+#ifndef __ASSEMBLY__
+
 void v8_invalidate_icache_all(void);
 void v8_flush_dcache_all(void);
 void v8_invalidate_dcache_all(void);
@@ -25,5 +32,6 @@ void arm_early_mmu_cache_invalidate(void);
 void sync_caches_for_execution(void);
 
 #include <asm-generic/cache.h>
+#endif
 
 #endif
diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index 2322b846b2..f79392e53d 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -9,10 +9,12 @@
 extern void *memcpy(void *, const void *, __kernel_size_t);
 #define __HAVE_ARCH_MEMSET
 extern void *memset(void *, int, __kernel_size_t);
-
+#define __HAVE_ARCH_MEMMOVE
+extern void *memmove(void *, const void *, __kernel_size_t);
 #endif
 
 extern void *__memcpy(void *, const void *, __kernel_size_t);
 extern void *__memset(void *, int, __kernel_size_t);
+extern void *__memmove(void *, const void *, __kernel_size_t);
 
 #endif
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 511a029062..a139a80fb8 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -21,6 +21,7 @@ obj-y	+= lshrdi3.o
 obj-y	+= runtime-offset.o
 pbl-y	+= runtime-offset.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memmove.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
diff --git a/arch/arm/lib32/memmove.S b/arch/arm/lib32/memmove.S
new file mode 100644
index 0000000000..6410554039
--- /dev/null
+++ b/arch/arm/lib32/memmove.S
@@ -0,0 +1,206 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *  linux/arch/arm/lib/memmove.S
+ *
+ *  Author:	Nicolas Pitre
+ *  Created:	Sep 28, 2005
+ *  Copyright:	(C) MontaVista Software Inc.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+#include <asm/unwind.h>
+
+		.text
+
+/*
+ * Prototype: void *memmove(void *dest, const void *src, size_t n);
+ *
+ * Note:
+ *
+ * If the memory regions don't overlap, we simply branch to memcpy which is
+ * normally a bit faster. Otherwise the copy is done going downwards.  This
+ * is a transposition of the code from copy_template.S but with the copy
+ * occurring in the opposite direction.
+ */
+
+ENTRY(__memmove)
+WEAK(memmove)
+	UNWIND(	.fnstart			)
+
+		subs	ip, r0, r1
+		cmphi	r2, ip
+		bls	__memcpy
+	UNWIND(	.fnend				)
+
+	UNWIND(	.fnstart			)
+	UNWIND(	.save	{r0, r4, fpreg, lr}	)
+		stmfd	sp!, {r0, r4, UNWIND(fpreg,) lr}
+	UNWIND(	.setfp	fpreg, sp		)
+	UNWIND(	mov	fpreg, sp		)
+		add	r1, r1, r2
+		add	r0, r0, r2
+		subs	r2, r2, #4
+		blt	8f
+		ands	ip, r0, #3
+	PLD(	pld	[r1, #-4]		)
+		bne	9f
+		ands	ip, r1, #3
+		bne	10f
+
+1:		subs	r2, r2, #(28)
+		stmfd	sp!, {r5, r6, r8, r9}
+		blt	5f
+
+	CALGN(	ands	ip, r0, #31		)
+	CALGN(	sbcsne	r4, ip, r2		)  @ C is always set here
+	CALGN(	bcs	2f			)
+	CALGN(	adr	r4, 6f			)
+	CALGN(	subs	r2, r2, ip		)  @ C is set here
+	CALGN(	rsb	ip, ip, #32		)
+	CALGN(	add	pc, r4, ip		)
+
+	PLD(	pld	[r1, #-4]		)
+2:	PLD(	subs	r2, r2, #96		)
+	PLD(	pld	[r1, #-32]		)
+	PLD(	blt	4f			)
+	PLD(	pld	[r1, #-64]		)
+	PLD(	pld	[r1, #-96]		)
+
+3:	PLD(	pld	[r1, #-128]		)
+4:		ldmdb	r1!, {r3, r4, r5, r6, r8, r9, ip, lr}
+		subs	r2, r2, #32
+		stmdb	r0!, {r3, r4, r5, r6, r8, r9, ip, lr}
+		bge	3b
+	PLD(	cmn	r2, #96			)
+	PLD(	bge	4b			)
+
+5:		ands	ip, r2, #28
+		rsb	ip, ip, #32
+		addne	pc, pc, ip		@ C is always clear here
+		b	7f
+6:		W(nop)
+		W(ldr)	r3, [r1, #-4]!
+		W(ldr)	r4, [r1, #-4]!
+		W(ldr)	r5, [r1, #-4]!
+		W(ldr)	r6, [r1, #-4]!
+		W(ldr)	r8, [r1, #-4]!
+		W(ldr)	r9, [r1, #-4]!
+		W(ldr)	lr, [r1, #-4]!
+
+		add	pc, pc, ip
+		nop
+		W(nop)
+		W(str)	r3, [r0, #-4]!
+		W(str)	r4, [r0, #-4]!
+		W(str)	r5, [r0, #-4]!
+		W(str)	r6, [r0, #-4]!
+		W(str)	r8, [r0, #-4]!
+		W(str)	r9, [r0, #-4]!
+		W(str)	lr, [r0, #-4]!
+
+	CALGN(	bcs	2b			)
+
+7:		ldmfd	sp!, {r5, r6, r8, r9}
+
+8:		movs	r2, r2, lsl #31
+		ldrbne	r3, [r1, #-1]!
+		ldrbcs	r4, [r1, #-1]!
+		ldrbcs	ip, [r1, #-1]
+		strbne	r3, [r0, #-1]!
+		strbcs	r4, [r0, #-1]!
+		strbcs	ip, [r0, #-1]
+		ldmfd	sp!, {r0, r4, UNWIND(fpreg,) pc}
+
+9:		cmp	ip, #2
+		ldrbgt	r3, [r1, #-1]!
+		ldrbge	r4, [r1, #-1]!
+		ldrb	lr, [r1, #-1]!
+		strbgt	r3, [r0, #-1]!
+		strbge	r4, [r0, #-1]!
+		subs	r2, r2, ip
+		strb	lr, [r0, #-1]!
+		blt	8b
+		ands	ip, r1, #3
+		beq	1b
+
+10:		bic	r1, r1, #3
+		cmp	ip, #2
+		ldr	r3, [r1, #0]
+		beq	17f
+		blt	18f
+
+
+		.macro	backward_copy_shift push pull
+
+		subs	r2, r2, #28
+		blt	14f
+
+	CALGN(	ands	ip, r0, #31		)
+	CALGN(	sbcsne	r4, ip, r2		)  @ C is always set here
+	CALGN(	subcc	r2, r2, ip		)
+	CALGN(	bcc	15f			)
+
+11:		stmfd	sp!, {r5, r6, r8 - r10}
+
+	PLD(	pld	[r1, #-4]		)
+	PLD(	subs	r2, r2, #96		)
+	PLD(	pld	[r1, #-32]		)
+	PLD(	blt	13f			)
+	PLD(	pld	[r1, #-64]		)
+	PLD(	pld	[r1, #-96]		)
+
+12:	PLD(	pld	[r1, #-128]		)
+13:		ldmdb   r1!, {r8, r9, r10, ip}
+		mov     lr, r3, lspush #\push
+		subs    r2, r2, #32
+		ldmdb   r1!, {r3, r4, r5, r6}
+		orr     lr, lr, ip, lspull #\pull
+		mov     ip, ip, lspush #\push
+		orr     ip, ip, r10, lspull #\pull
+		mov     r10, r10, lspush #\push
+		orr     r10, r10, r9, lspull #\pull
+		mov     r9, r9, lspush #\push
+		orr     r9, r9, r8, lspull #\pull
+		mov     r8, r8, lspush #\push
+		orr     r8, r8, r6, lspull #\pull
+		mov     r6, r6, lspush #\push
+		orr     r6, r6, r5, lspull #\pull
+		mov     r5, r5, lspush #\push
+		orr     r5, r5, r4, lspull #\pull
+		mov     r4, r4, lspush #\push
+		orr     r4, r4, r3, lspull #\pull
+		stmdb   r0!, {r4 - r6, r8 - r10, ip, lr}
+		bge	12b
+	PLD(	cmn	r2, #96			)
+	PLD(	bge	13b			)
+
+		ldmfd	sp!, {r5, r6, r8 - r10}
+
+14:		ands	ip, r2, #28
+		beq	16f
+
+15:		mov     lr, r3, lspush #\push
+		ldr	r3, [r1, #-4]!
+		subs	ip, ip, #4
+		orr	lr, lr, r3, lspull #\pull
+		str	lr, [r0, #-4]!
+		bgt	15b
+	CALGN(	cmp	r2, #0			)
+	CALGN(	bge	11b			)
+
+16:		add	r1, r1, #(\pull / 8)
+		b	8b
+
+		.endm
+
+
+		backward_copy_shift	push=8	pull=24
+
+17:		backward_copy_shift	push=16	pull=16
+
+18:		backward_copy_shift	push=24	pull=8
+
+	UNWIND(	.fnend				)
+ENDPROC(memmove)
+ENDPROC(__memmove)
diff --git a/arch/arm/lib64/copy_template.S b/arch/arm/lib64/copy_template.S
index 8e4ff059d1..488df234c4 100644
--- a/arch/arm/lib64/copy_template.S
+++ b/arch/arm/lib64/copy_template.S
@@ -1,16 +1,16 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2013 ARM Ltd. */
-/* SPDX-FileCopyrightText: 2013 Linaro */
-
 /*
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
+ *
  * This code is based on glibc cortex strings work originally authored by Linaro
- * and re-licensed under GPLv2 for the Linux kernel. The original code can
  * be found @
  *
  * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
  * files/head:/src/aarch64/
  */
 
+
 /*
  * Copy a buffer from src to dest (alignment handled by the hardware)
  *
@@ -50,7 +50,7 @@ D_h	.req	x14
 	sub	count, count, tmp2
 	/*
 	* Copy the leading memory data from src to dst in an increasing
-	* address order.By this way,the risk of overwritting the source
+	* address order.By this way,the risk of overwriting the source
 	* memory data is eliminated when the distance between src and
 	* dst is less than 16. The memory accesses here are alignment.
 	*/
@@ -149,6 +149,7 @@ D_h	.req	x14
 	* Critical loop.  Start at a new cache line boundary.  Assuming
 	* 64 bytes per line this ensures the entire loop is in one line.
 	*/
+	.p2align	L1_CACHE_SHIFT
 .Lcpy_body_large:
 	/* pre-get 64 bytes data. */
 	ldp1	A_l, A_h, src, #16
diff --git a/arch/arm/lib64/memcpy.S b/arch/arm/lib64/memcpy.S
index 92845b25a6..98b453d3fd 100644
--- a/arch/arm/lib64/memcpy.S
+++ b/arch/arm/lib64/memcpy.S
@@ -1,63 +1,249 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2013 ARM Ltd. */
-/* SPDX-FileCopyrightText: 2013 Linaro */
-
 /*
- * This code is based on glibc cortex strings work originally authored by Linaro
- * and re-licensed under GPLv2 for the Linux kernel. The original code can
- * be found @
+ * Copyright (c) 2012-2021, Arm Limited.
  *
- * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
- * files/head:/src/aarch64/
+ * Adapted from the original at:
+ * https://github.com/ARM-software/optimized-routines/blob/afd6244a1f8d9229/string/aarch64/memcpy.S
  */
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-/*
- * Copy a buffer from src to dest (alignment handled by the hardware)
+/* Assumptions:
+ *
+ * ARMv8-a, AArch64, unaligned accesses.
  *
- * Parameters:
- *	x0 - dest
- *	x1 - src
- *	x2 - n
- * Returns:
- *	x0 - dest
  */
-	.macro ldrb1 ptr, regB, val
-	ldrb  \ptr, [\regB], \val
-	.endm
 
-	.macro strb1 ptr, regB, val
-	strb \ptr, [\regB], \val
-	.endm
+#define L(label) .L ## label
+
+#define dstin	x0
+#define src	x1
+#define count	x2
+#define dst	x3
+#define srcend	x4
+#define dstend	x5
+#define A_l	x6
+#define A_lw	w6
+#define A_h	x7
+#define B_l	x8
+#define B_lw	w8
+#define B_h	x9
+#define C_l	x10
+#define C_lw	w10
+#define C_h	x11
+#define D_l	x12
+#define D_h	x13
+#define E_l	x14
+#define E_h	x15
+#define F_l	x16
+#define F_h	x17
+#define G_l	count
+#define G_h	dst
+#define H_l	src
+#define H_h	srcend
+#define tmp1	x14
+
+/* This implementation handles overlaps and supports both memcpy and memmove
+   from a single entry point.  It uses unaligned accesses and branchless
+   sequences to keep the code small, simple and improve performance.
+
+   Copies are split into 3 main cases: small copies of up to 32 bytes, medium
+   copies of up to 128 bytes, and large copies.  The overhead of the overlap
+   check is negligible since it is only required for large copies.
+
+   Large copies use a software pipelined loop processing 64 bytes per iteration.
+   The destination pointer is 16-byte aligned to minimize unaligned accesses.
+   The loop tail is handled by always copying 64 bytes from the end.
+*/
+
+SYM_FUNC_START(__pi_memcpy)
+	add	srcend, src, count
+	add	dstend, dstin, count
+	cmp	count, 128
+	b.hi	L(copy_long)
+	cmp	count, 32
+	b.hi	L(copy32_128)
+
+	/* Small copies: 0..32 bytes.  */
+	cmp	count, 16
+	b.lo	L(copy16)
+	ldp	A_l, A_h, [src]
+	ldp	D_l, D_h, [srcend, -16]
+	stp	A_l, A_h, [dstin]
+	stp	D_l, D_h, [dstend, -16]
+	ret
+
+	/* Copy 8-15 bytes.  */
+L(copy16):
+	tbz	count, 3, L(copy8)
+	ldr	A_l, [src]
+	ldr	A_h, [srcend, -8]
+	str	A_l, [dstin]
+	str	A_h, [dstend, -8]
+	ret
+
+	.p2align 3
+	/* Copy 4-7 bytes.  */
+L(copy8):
+	tbz	count, 2, L(copy4)
+	ldr	A_lw, [src]
+	ldr	B_lw, [srcend, -4]
+	str	A_lw, [dstin]
+	str	B_lw, [dstend, -4]
+	ret
 
-	.macro ldrh1 ptr, regB, val
-	ldrh  \ptr, [\regB], \val
-	.endm
+	/* Copy 0..3 bytes using a branchless sequence.  */
+L(copy4):
+	cbz	count, L(copy0)
+	lsr	tmp1, count, 1
+	ldrb	A_lw, [src]
+	ldrb	C_lw, [srcend, -1]
+	ldrb	B_lw, [src, tmp1]
+	strb	A_lw, [dstin]
+	strb	B_lw, [dstin, tmp1]
+	strb	C_lw, [dstend, -1]
+L(copy0):
+	ret
 
-	.macro strh1 ptr, regB, val
-	strh \ptr, [\regB], \val
-	.endm
+	.p2align 4
+	/* Medium copies: 33..128 bytes.  */
+L(copy32_128):
+	ldp	A_l, A_h, [src]
+	ldp	B_l, B_h, [src, 16]
+	ldp	C_l, C_h, [srcend, -32]
+	ldp	D_l, D_h, [srcend, -16]
+	cmp	count, 64
+	b.hi	L(copy128)
+	stp	A_l, A_h, [dstin]
+	stp	B_l, B_h, [dstin, 16]
+	stp	C_l, C_h, [dstend, -32]
+	stp	D_l, D_h, [dstend, -16]
+	ret
 
-	.macro ldr1 ptr, regB, val
-	ldr \ptr, [\regB], \val
-	.endm
+	.p2align 4
+	/* Copy 65..128 bytes.  */
+L(copy128):
+	ldp	E_l, E_h, [src, 32]
+	ldp	F_l, F_h, [src, 48]
+	cmp	count, 96
+	b.ls	L(copy96)
+	ldp	G_l, G_h, [srcend, -64]
+	ldp	H_l, H_h, [srcend, -48]
+	stp	G_l, G_h, [dstend, -64]
+	stp	H_l, H_h, [dstend, -48]
+L(copy96):
+	stp	A_l, A_h, [dstin]
+	stp	B_l, B_h, [dstin, 16]
+	stp	E_l, E_h, [dstin, 32]
+	stp	F_l, F_h, [dstin, 48]
+	stp	C_l, C_h, [dstend, -32]
+	stp	D_l, D_h, [dstend, -16]
+	ret
 
-	.macro str1 ptr, regB, val
-	str \ptr, [\regB], \val
-	.endm
+	.p2align 4
+	/* Copy more than 128 bytes.  */
+L(copy_long):
+	/* Use backwards copy if there is an overlap.  */
+	sub	tmp1, dstin, src
+	cbz	tmp1, L(copy0)
+	cmp	tmp1, count
+	b.lo	L(copy_long_backwards)
 
-	.macro ldp1 ptr, regB, regC, val
-	ldp \ptr, \regB, [\regC], \val
-	.endm
+	/* Copy 16 bytes and then align dst to 16-byte alignment.  */
 
-	.macro stp1 ptr, regB, regC, val
-	stp \ptr, \regB, [\regC], \val
-	.endm
+	ldp	D_l, D_h, [src]
+	and	tmp1, dstin, 15
+	bic	dst, dstin, 15
+	sub	src, src, tmp1
+	add	count, count, tmp1	/* Count is now 16 too large.  */
+	ldp	A_l, A_h, [src, 16]
+	stp	D_l, D_h, [dstin]
+	ldp	B_l, B_h, [src, 32]
+	ldp	C_l, C_h, [src, 48]
+	ldp	D_l, D_h, [src, 64]!
+	subs	count, count, 128 + 16	/* Test and readjust count.  */
+	b.ls	L(copy64_from_end)
 
-	.weak __arch_memcpy
-ENTRY(__arch_memcpy)
-#include "copy_template.S"
+L(loop64):
+	stp	A_l, A_h, [dst, 16]
+	ldp	A_l, A_h, [src, 16]
+	stp	B_l, B_h, [dst, 32]
+	ldp	B_l, B_h, [src, 32]
+	stp	C_l, C_h, [dst, 48]
+	ldp	C_l, C_h, [src, 48]
+	stp	D_l, D_h, [dst, 64]!
+	ldp	D_l, D_h, [src, 64]!
+	subs	count, count, 64
+	b.hi	L(loop64)
+
+	/* Write the last iteration and copy 64 bytes from the end.  */
+L(copy64_from_end):
+	ldp	E_l, E_h, [srcend, -64]
+	stp	A_l, A_h, [dst, 16]
+	ldp	A_l, A_h, [srcend, -48]
+	stp	B_l, B_h, [dst, 32]
+	ldp	B_l, B_h, [srcend, -32]
+	stp	C_l, C_h, [dst, 48]
+	ldp	C_l, C_h, [srcend, -16]
+	stp	D_l, D_h, [dst, 64]
+	stp	E_l, E_h, [dstend, -64]
+	stp	A_l, A_h, [dstend, -48]
+	stp	B_l, B_h, [dstend, -32]
+	stp	C_l, C_h, [dstend, -16]
 	ret
-ENDPROC(__arch_memcpy)
+
+	.p2align 4
+
+	/* Large backwards copy for overlapping copies.
+	   Copy 16 bytes and then align dst to 16-byte alignment.  */
+L(copy_long_backwards):
+	ldp	D_l, D_h, [srcend, -16]
+	and	tmp1, dstend, 15
+	sub	srcend, srcend, tmp1
+	sub	count, count, tmp1
+	ldp	A_l, A_h, [srcend, -16]
+	stp	D_l, D_h, [dstend, -16]
+	ldp	B_l, B_h, [srcend, -32]
+	ldp	C_l, C_h, [srcend, -48]
+	ldp	D_l, D_h, [srcend, -64]!
+	sub	dstend, dstend, tmp1
+	subs	count, count, 128
+	b.ls	L(copy64_from_start)
+
+L(loop64_backwards):
+	stp	A_l, A_h, [dstend, -16]
+	ldp	A_l, A_h, [srcend, -16]
+	stp	B_l, B_h, [dstend, -32]
+	ldp	B_l, B_h, [srcend, -32]
+	stp	C_l, C_h, [dstend, -48]
+	ldp	C_l, C_h, [srcend, -48]
+	stp	D_l, D_h, [dstend, -64]!
+	ldp	D_l, D_h, [srcend, -64]!
+	subs	count, count, 64
+	b.hi	L(loop64_backwards)
+
+	/* Write the last iteration and copy 64 bytes from the start.  */
+L(copy64_from_start):
+	ldp	G_l, G_h, [src, 48]
+	stp	A_l, A_h, [dstend, -16]
+	ldp	A_l, A_h, [src, 32]
+	stp	B_l, B_h, [dstend, -32]
+	ldp	B_l, B_h, [src, 16]
+	stp	C_l, C_h, [dstend, -48]
+	ldp	C_l, C_h, [src]
+	stp	D_l, D_h, [dstend, -64]
+	stp	G_l, G_h, [dstin, 48]
+	stp	A_l, A_h, [dstin, 32]
+	stp	B_l, B_h, [dstin, 16]
+	stp	C_l, C_h, [dstin]
+	ret
+SYM_FUNC_END(__pi_memcpy)
+
+SYM_FUNC_ALIAS(__arch_memcpy, __pi_memcpy)
+SYM_FUNC_ALIAS_WEAK(memcpy, __memcpy)
+
+SYM_FUNC_ALIAS(__pi_memmove, __pi_memcpy)
+
+SYM_FUNC_ALIAS(__arch_memmove, __pi_memmove)
+SYM_FUNC_ALIAS_WEAK(memmove, __memmove)
diff --git a/arch/arm/lib64/memset.S b/arch/arm/lib64/memset.S
index ff201750f1..f059203983 100644
--- a/arch/arm/lib64/memset.S
+++ b/arch/arm/lib64/memset.S
@@ -1,10 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2013 ARM Ltd. */
-/* SPDX-FileCopyrightText: 2013 Linaro */
-
 /*
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
+ *
  * This code is based on glibc cortex strings work originally authored by Linaro
- * and re-licensed under GPLv2 for the Linux kernel. The original code can
  * be found @
  *
  * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
@@ -13,6 +12,7 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <asm/cache.h>
 
 /*
  * Fill in the buffer with character c (alignment handled by the hardware)
@@ -42,8 +42,7 @@ dst		.req	x8
 tmp3w		.req	w9
 tmp3		.req	x9
 
-	.weak memset
-ENTRY(__arch_memset)
+SYM_FUNC_START(__pi_memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
@@ -115,6 +114,7 @@ ENTRY(__arch_memset)
 	* Critical loop. Start at a new cache line boundary. Assuming
 	* 64 bytes per line, this ensures the entire loop is in one line.
 	*/
+	.p2align	L1_CACHE_SHIFT
 .Lnot_short:
 	sub	dst, dst, #16/* Pre-bias.  */
 	sub	count, count, #64
@@ -201,4 +201,8 @@ ENTRY(__arch_memset)
 	ands	count, count, zva_bits_x
 	b.ne	.Ltail_maybe_long
 	ret
-ENDPROC(__arch_memset)
+SYM_FUNC_END(__pi_memset)
+
+SYM_FUNC_ALIAS(__arch_memset, __pi_memset)
+
+SYM_FUNC_ALIAS_WEAK(memset, __pi_memset)
diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
index 938790e1a9..c7954d6efe 100644
--- a/arch/arm/lib64/string.c
+++ b/arch/arm/lib64/string.c
@@ -6,6 +6,7 @@
 
 void *__arch_memset(void *dst, int c, __kernel_size_t size);
 void *__arch_memcpy(void * dest, const void *src, size_t count);
+void *__arch_memmove(void * dest, const void *src, size_t count);
 
 static __prereloc void *_memset(void *dst, int c, __kernel_size_t size)
 {
@@ -38,3 +39,19 @@ void __weak *memcpy(void * dest, const void *src, size_t count)
 
 void *__memcpy(void * dest, const void *src, size_t count)
 	__alias(_memcpy);
+
+static void *_memmove(void * dest, const void *src, size_t count)
+{
+	if (likely(get_cr() & CR_M))
+		return __arch_memmove(dest, src, count);
+
+	return __default_memmove(dest, src, count);
+}
+
+void __weak *memmove(void * dest, const void *src, size_t count)
+{
+	return _memmove(dest, src, count);
+}
+
+void *__memmove(void * dest, const void *src, size_t count)
+	__alias(_memmove);
diff --git a/include/string.h b/include/string.h
index cbe6eddf7f..986ccd83dd 100644
--- a/include/string.h
+++ b/include/string.h
@@ -17,6 +17,8 @@ void *__nokasan_default_memset(void *, int, __kernel_size_t);
 void *__default_memcpy(void * dest,const void *src,size_t count);
 void *__nokasan_default_memcpy(void * dest,const void *src,size_t count);
 
+void *__default_memmove(void * dest,const void *src,size_t count);
+
 char *parse_assignment(char *str);
 
 int strverscmp(const char *a, const char *b);
diff --git a/lib/string.c b/lib/string.c
index 98dd3cffdd..50c2016c2b 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -701,7 +701,6 @@ void *memmove(void * dest, const void *src, size_t count)
 void *__memmove(void * dest, const void *src, size_t count)
 	__alias(__default_memmove);
 #endif
-EXPORT_SYMBOL(memmove);
 
 #ifndef __HAVE_ARCH_MEMCMP
 /**

-- 
2.39.5



