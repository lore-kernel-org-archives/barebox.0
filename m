Delivery-date: Wed, 25 Sep 2024 15:56:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSVA-002cE1-22
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 15:56:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSV9-0001CN-0H
	for lore@pengutronix.de; Wed, 25 Sep 2024 15:56:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hQy+aJbsCioiEPpYnqeSzMoJTbb4H4K8rA2J8k1nEuc=; b=RxexmubwGnzXpzp1Q2ratMQ9ie
	tae4E7dtsTIebAGi2wO+0zt37dLHSG+QycfbiuMXH/d3e8p/A2EIxMEpurU8anFij57wjlWGiLn0k
	sg18W/bRcj910CFzD+PZTSsJ3sEEzrDlCE88NVcpuFs5W6NJs7Sb8eRuiN4GGwTaJWGYMTB3RwwEd
	3pKRiwgZ19w47Up5LOqiDiarxRLtXnRX9W6QFok8LhBNYDDeHaDOzr//hmMHA2tYa7q6gHJxq+BU4
	hENYGtuy+HQh4pgRsa+hiBqsEMQGK+jJJG0xCsxclpeG0ejIJYG2KJaQTwf6lxdi6XGAvVzRkw1FF
	AABPHXuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUY-00000005TrW-0mP0;
	Wed, 25 Sep 2024 13:55:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUS-00000005Tmo-0Kbo
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 13:55:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-0000gi-RA; Wed, 25 Sep 2024 15:55:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-001Sjl-4o; Wed, 25 Sep 2024 15:55:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1a;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-8-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272525; l=11720;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hQzJgESfgcNnWfrhVnd+QMMpCeL5bKpTSvnbgtrFIPw=;
 b=EITkxv47db9mp4oZ7rjGb/6iQB6l6+zzCEA/WsoS54MAJG/YvuDYD5mcLTccq0z0f4e7H6OSJ
 lsk2v4p8zg1CDhpgTMXDYpT4J4r5axMl2OtMxzbfQoImdMyhLavCesN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_065536_462723_3DA1A409 
X-CRM114-Status: GOOD (  17.96  )
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
Subject: [PATCH 08/10] ARM: update memcpy.S and memset.S from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates the assembler optimized memcpy() and memset() functions
from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/assembler.h |  6 +++
 arch/arm/lib32/copy_template.S   | 66 +++++++++++++++------------
 arch/arm/lib32/memcpy.S          | 30 +++++++------
 arch/arm/lib32/memset.S          | 96 +++++++++++++++++++++++++---------------
 4 files changed, 122 insertions(+), 76 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index e8f5625a0a..c84c8ec734 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -67,6 +67,12 @@
 #define CALGN(code...)
 #endif
 
+#ifndef CONFIG_CPU_64
+/* the frame pointer used for stack unwinding */
+ARM(	fpreg	.req	r11	)
+THUMB(	fpreg	.req	r7	)
+#endif
+
 /*
  * Enable and disable interrupts
  */
diff --git a/arch/arm/lib32/copy_template.S b/arch/arm/lib32/copy_template.S
index 897e3db3ff..8fbafb074f 100644
--- a/arch/arm/lib32/copy_template.S
+++ b/arch/arm/lib32/copy_template.S
@@ -1,10 +1,12 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2005 MontaVista Software, Inc (Nicolas Pitre)
-
 /*
- * linux/arch/arm/lib/copy_template.s
+ *  linux/arch/arm/lib/copy_template.s
+ *
+ *  Code template for optimized memory copy functions
  *
- * Code template for optimized memory copy functions
+ *  Author:	Nicolas Pitre
+ *  Created:	Sep 28, 2005
+ *  Copyright:	MontaVista Software, Inc.
  */
 
 /*
@@ -48,6 +50,12 @@
  *	data as needed by the implementation including this code. Called
  *	upon code entry.
  *
+ * usave reg1 reg2
+ *
+ *	Unwind annotation macro is corresponding for 'enter' macro.
+ *	It tell unwinder that preserved some provided registers on the stack
+ *	and additional data by a prior 'enter' macro.
+ *
  * exit reg1 reg2
  *
  *	Restore registers with the values previously saved with the
@@ -61,8 +69,10 @@
  *	than one 32bit instruction in Thumb-2)
  */
 
-
-		enter	r4, lr
+	UNWIND(	.fnstart			)
+		enter	r4, UNWIND(fpreg,) lr
+	UNWIND(	.setfp	fpreg, sp		)
+	UNWIND(	mov	fpreg, sp		)
 
 		subs	r2, r2, #4
 		blt	8f
@@ -73,12 +83,12 @@
 		bne	10f
 
 1:		subs	r2, r2, #(28)
-		stmfd	sp!, {r5 - r8}
+		stmfd	sp!, {r5, r6, r8, r9}
 		blt	5f
 
 	CALGN(	ands	ip, r0, #31		)
 	CALGN(	rsb	r3, ip, #32		)
-	CALGN(	sbcnes	r4, r3, r2		)  @ C is always set here
+	CALGN(	sbcsne	r4, r3, r2		)  @ C is always set here
 	CALGN(	bcs	2f			)
 	CALGN(	adr	r4, 6f			)
 	CALGN(	subs	r2, r2, r3		)  @ C gets set
@@ -92,9 +102,9 @@
 	PLD(	pld	[r1, #92]		)
 
 3:	PLD(	pld	[r1, #124]		)
-4:		ldr8w	r1, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
+4:		ldr8w	r1, r3, r4, r5, r6, r8, r9, ip, lr, abort=20f
 		subs	r2, r2, #32
-		str8w	r0, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
+		str8w	r0, r3, r4, r5, r6, r8, r9, ip, lr, abort=20f
 		bge	3b
 	PLD(	cmn	r2, #96			)
 	PLD(	bge	4b			)
@@ -114,8 +124,8 @@
 		ldr1w	r1, r4, abort=20f
 		ldr1w	r1, r5, abort=20f
 		ldr1w	r1, r6, abort=20f
-		ldr1w	r1, r7, abort=20f
 		ldr1w	r1, r8, abort=20f
+		ldr1w	r1, r9, abort=20f
 		ldr1w	r1, lr, abort=20f
 
 #if LDR1W_SHIFT < STR1W_SHIFT
@@ -132,13 +142,13 @@
 		str1w	r0, r4, abort=20f
 		str1w	r0, r5, abort=20f
 		str1w	r0, r6, abort=20f
-		str1w	r0, r7, abort=20f
 		str1w	r0, r8, abort=20f
+		str1w	r0, r9, abort=20f
 		str1w	r0, lr, abort=20f
 
 	CALGN(	bcs	2b			)
 
-7:		ldmfd	sp!, {r5 - r8}
+7:		ldmfd	sp!, {r5, r6, r8, r9}
 
 8:		movs	r2, r2, lsl #31
 		ldr1b	r1, r3, ne, abort=21f
@@ -148,7 +158,7 @@
 		str1b	r0, r4, cs, abort=21f
 		str1b	r0, ip, cs, abort=21f
 
-		exit	r4, pc
+		exit	r4, UNWIND(fpreg,) pc
 
 9:		rsb	ip, ip, #4
 		cmp	ip, #2
@@ -177,11 +187,11 @@
 
 	CALGN(	ands	ip, r0, #31		)
 	CALGN(	rsb	ip, ip, #32		)
-	CALGN(	sbcnes	r4, ip, r2		)  @ C is always set here
+	CALGN(	sbcsne	r4, ip, r2		)  @ C is always set here
 	CALGN(	subcc	r2, r2, ip		)
 	CALGN(	bcc	15f			)
 
-11:		stmfd	sp!, {r5 - r9}
+11:		stmfd	sp!, {r5, r6, r8 - r10}
 
 	PLD(	pld	[r1, #0]		)
 	PLD(	subs	r2, r2, #96		)
@@ -191,31 +201,31 @@
 	PLD(	pld	[r1, #92]		)
 
 12:	PLD(	pld	[r1, #124]		)
-13:		ldr4w	r1, r4, r5, r6, r7, abort=19f
+13:		ldr4w	r1, r4, r5, r6, r8, abort=19f
 		mov	r3, lr, lspull #\pull
 		subs	r2, r2, #32
-		ldr4w	r1, r8, r9, ip, lr, abort=19f
+		ldr4w	r1, r9, r10, ip, lr, abort=19f
 		orr	r3, r3, r4, lspush #\push
 		mov	r4, r4, lspull #\pull
 		orr	r4, r4, r5, lspush #\push
 		mov	r5, r5, lspull #\pull
 		orr	r5, r5, r6, lspush #\push
 		mov	r6, r6, lspull #\pull
-		orr	r6, r6, r7, lspush #\push
-		mov	r7, r7, lspull #\pull
-		orr	r7, r7, r8, lspush #\push
+		orr	r6, r6, r8, lspush #\push
 		mov	r8, r8, lspull #\pull
 		orr	r8, r8, r9, lspush #\push
 		mov	r9, r9, lspull #\pull
-		orr	r9, r9, ip, lspush #\push
+		orr	r9, r9, r10, lspush #\push
+		mov	r10, r10, lspull #\pull
+		orr	r10, r10, ip, lspush #\push
 		mov	ip, ip, lspull #\pull
 		orr	ip, ip, lr, lspush #\push
-		str8w	r0, r3, r4, r5, r6, r7, r8, r9, ip, , abort=19f
+		str8w	r0, r3, r4, r5, r6, r8, r9, r10, ip, abort=19f
 		bge	12b
 	PLD(	cmn	r2, #96			)
 	PLD(	bge	13b			)
 
-		ldmfd	sp!, {r5 - r9}
+		ldmfd	sp!, {r5, r6, r8 - r10}
 
 14:		ands	ip, r2, #28
 		beq	16f
@@ -241,6 +251,7 @@
 
 18:		forward_copy_shift	pull=24	push=8
 
+	UNWIND(	.fnend				)
 
 /*
  * Abort preamble and completion macros.
@@ -250,14 +261,13 @@
  */
 
 	.macro	copy_abort_preamble
-19:	ldmfd	sp!, {r5 - r9}
+19:	ldmfd	sp!, {r5, r6, r8 - r10}
 	b	21f
-20:	ldmfd	sp!, {r5 - r8}
+20:	ldmfd	sp!, {r5, r6, r8, r9}
 21:
 	.endm
 
 	.macro	copy_abort_end
-	ldmfd	sp!, {r4, pc}
+	ldmfd	sp!, {r4, UNWIND(fpreg,) pc}
 	.endm
 
-
diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
index d40296e4bf..90f2b645aa 100644
--- a/arch/arm/lib32/memcpy.S
+++ b/arch/arm/lib32/memcpy.S
@@ -1,12 +1,15 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2005 MontaVista Software, Inc (Nicolas Pitre)
-
 /*
- * linux/arch/arm/lib/memcpy.S
+ *  linux/arch/arm/lib/memcpy.S
+ *
+ *  Author:	Nicolas Pitre
+ *  Created:	Sep 28, 2005
+ *  Copyright:	MontaVista Software, Inc.
  */
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <asm/unwind.h>
 
 #define LDR1W_SHIFT	0
 #define STR1W_SHIFT	0
@@ -24,7 +27,7 @@
 	.endm
 
 	.macro ldr1b ptr reg cond=al abort
-	ldr\cond\()b \reg, [\ptr], #1
+	ldrb\cond \reg, [\ptr], #1
 	.endm
 
 	.macro str1w ptr reg abort
@@ -36,27 +39,28 @@
 	.endm
 
 	.macro str1b ptr reg cond=al abort
-	str\cond\()b \reg, [\ptr], #1
+	strb\cond \reg, [\ptr], #1
 	.endm
 
-	.macro enter reg1 reg2
-	stmdb sp!, {r0, \reg1, \reg2}
+	.macro enter regs:vararg
+UNWIND( .save	{r0, \regs}		)
+	stmdb sp!, {r0, \regs}
 	.endm
 
-	.macro exit reg1 reg2
-	ldmfd sp!, {r0, \reg1, \reg2}
+	.macro exit regs:vararg
+	ldmfd sp!, {r0, \regs}
 	.endm
 
 	.text
 
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
-.weak memcpy
-ENTRY(memcpy)
 ENTRY(__memcpy)
+ENTRY(mmiocpy)
+WEAK(memcpy)
 
 #include "copy_template.S"
 
-ENDPROC(__memcpy)
 ENDPROC(memcpy)
-
+ENDPROC(mmiocpy)
+ENDPROC(__memcpy)
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
index 4ba74e0c6c..de75ae4d5a 100644
--- a/arch/arm/lib32/memset.S
+++ b/arch/arm/lib32/memset.S
@@ -1,19 +1,23 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/memset.S
- * ASM optimised string functions
+ *  linux/arch/arm/lib/memset.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ *  ASM optimised string functions
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <asm/unwind.h>
 
 	.text
 	.align	5
 
-.weak memset
 ENTRY(__memset)
-ENTRY(memset)
+ENTRY(mmioset)
+WEAK(memset)
+UNWIND( .fnstart         )
+	and	r1, r1, #255		@ cast to unsigned char
 	ands	r3, r0, #3		@ 1 unaligned?
 	mov	ip, r0			@ preserve r0 as return value
 	bne	6f			@ 1
@@ -23,34 +27,38 @@ ENTRY(memset)
 1:	orr	r1, r1, r1, lsl #8
 	orr	r1, r1, r1, lsl #16
 	mov	r3, r1
-	cmp	r2, #16
+7:	cmp	r2, #16
 	blt	4f
+UNWIND( .fnend              )
 
 #if ! CALGN(1)+0
 
 /*
- * We need an 2 extra registers for this loop - use r8 and the LR
+ * We need 2 extra registers for this loop - use r8 and the LR
  */
+UNWIND( .fnstart            )
+UNWIND( .save {r8, lr}      )
 	stmfd	sp!, {r8, lr}
 	mov	r8, r1
-	mov	lr, r1
+	mov	lr, r3
 
 2:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3, r8, lr}	@ 64 bytes at a time.
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
+	stmiage	ip!, {r1, r3, r8, lr}	@ 64 bytes at a time.
+	stmiage	ip!, {r1, r3, r8, lr}
+	stmiage	ip!, {r1, r3, r8, lr}
+	stmiage	ip!, {r1, r3, r8, lr}
 	bgt	2b
-	ldmeqfd	sp!, {r8, pc}		@ Now <64 bytes to go.
+	ldmfdeq	sp!, {r8, pc}		@ Now <64 bytes to go.
 /*
  * No need to correct the count; we're only testing bits from now on
  */
 	tst	r2, #32
-	stmneia	ip!, {r1, r3, r8, lr}
-	stmneia	ip!, {r1, r3, r8, lr}
+	stmiane	ip!, {r1, r3, r8, lr}
+	stmiane	ip!, {r1, r3, r8, lr}
 	tst	r2, #16
-	stmneia	ip!, {r1, r3, r8, lr}
+	stmiane	ip!, {r1, r3, r8, lr}
 	ldmfd	sp!, {r8, lr}
+UNWIND( .fnend              )
 
 #else
 
@@ -59,13 +67,15 @@ ENTRY(memset)
  * whole cache lines at once.
  */
 
+UNWIND( .fnstart               )
+UNWIND( .save {r4-r8, lr}      )
 	stmfd	sp!, {r4-r8, lr}
 	mov	r4, r1
-	mov	r5, r1
+	mov	r5, r3
 	mov	r6, r1
-	mov	r7, r1
+	mov	r7, r3
 	mov	r8, r1
-	mov	lr, r1
+	mov	lr, r3
 
 	cmp	r2, #96
 	tstgt	ip, #31
@@ -75,48 +85,64 @@ ENTRY(memset)
 	rsb	r8, r8, #32
 	sub	r2, r2, r8
 	movs	r8, r8, lsl #(32 - 4)
-	stmcsia	ip!, {r4, r5, r6, r7}
-	stmmiia	ip!, {r4, r5}
+	stmiacs	ip!, {r4, r5, r6, r7}
+	stmiami	ip!, {r4, r5}
 	tst	r8, #(1 << 30)
 	mov	r8, r1
 	strne	r1, [ip], #4
 
 3:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3-r8, lr}
-	stmgeia	ip!, {r1, r3-r8, lr}
+	stmiage	ip!, {r1, r3-r8, lr}
+	stmiage	ip!, {r1, r3-r8, lr}
 	bgt	3b
-	ldmeqfd	sp!, {r4-r8, pc}
+	ldmfdeq	sp!, {r4-r8, pc}
 
 	tst	r2, #32
-	stmneia	ip!, {r1, r3-r8, lr}
+	stmiane	ip!, {r1, r3-r8, lr}
 	tst	r2, #16
-	stmneia	ip!, {r4-r7}
+	stmiane	ip!, {r4-r7}
 	ldmfd	sp!, {r4-r8, lr}
+UNWIND( .fnend                 )
 
 #endif
 
+UNWIND( .fnstart            )
 4:	tst	r2, #8
-	stmneia	ip!, {r1, r3}
+	stmiane	ip!, {r1, r3}
 	tst	r2, #4
 	strne	r1, [ip], #4
 /*
- * When we get here, we've got less than 4 bytes to zero.  We
+ * When we get here, we've got less than 4 bytes to set.  We
  * may have an unaligned pointer as well.
  */
 5:	tst	r2, #2
-	strneb	r1, [ip], #1
-	strneb	r1, [ip], #1
+	strbne	r1, [ip], #1
+	strbne	r1, [ip], #1
 	tst	r2, #1
-	strneb	r1, [ip], #1
-	mov	pc, lr
+	strbne	r1, [ip], #1
+	ret	lr
 
 6:	subs	r2, r2, #4		@ 1 do we have enough
 	blt	5b			@ 1 bytes to align with?
 	cmp	r3, #2			@ 1
-	strltb	r1, [ip], #1		@ 1
-	strleb	r1, [ip], #1		@ 1
+	strblt	r1, [ip], #1		@ 1
+	strble	r1, [ip], #1		@ 1
 	strb	r1, [ip], #1		@ 1
 	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
 	b	1b
+UNWIND( .fnend   )
 ENDPROC(memset)
+ENDPROC(mmioset)
 ENDPROC(__memset)
+
+ENTRY(__memset32)
+UNWIND( .fnstart         )
+	mov	r3, r1			@ copy r1 to r3 and fall into memset64
+UNWIND( .fnend   )
+ENDPROC(__memset32)
+ENTRY(__memset64)
+UNWIND( .fnstart         )
+	mov	ip, r0			@ preserve r0 as return value
+	b	7b			@ jump into the middle of memset
+UNWIND( .fnend   )
+ENDPROC(__memset64)

-- 
2.39.5



