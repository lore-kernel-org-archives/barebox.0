Delivery-date: Wed, 25 Sep 2024 15:56:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSVB-002cEY-1U
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 15:56:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSVB-0001EC-CO
	for lore@pengutronix.de; Wed, 25 Sep 2024 15:56:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2T1XKeSKYAcxBZeF290ogqsiZlc12Q3j8MhrnWuPm7g=; b=LY3nxcuob07HgLkXqBjv4VU6rr
	tsn+JauIOwgNr0/XKM0c0bb9zHVXkxV5PeU6VnzuHY9gyhFJly9oDZ+aq4RQfHnOwNEB6OLaCRoYK
	35zS8I5V/DjJBwsc2ptHCqlTSdf9XBgcep+OIsz4MD8HPinB+A+0mEEE5pRfZYJdMDt+gApslp5Ko
	GG7enGwSMdEZiI0k+ekcSHgf19iFphiAFbyrv9BL2upgRhRgs2XbzcclKWLDcApqhErtDY0vOtiSe
	sv6otNLpbX2Oi2kgu4qVaKhUSSbjt33/ltrsmx+ENeg/EvVErAX4CopL23yTft9B20geII2mLSb6v
	w/L3SVwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUZ-00000005Tse-3ZYk;
	Wed, 25 Sep 2024 13:55:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUS-00000005Tmn-0L3l
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 13:55:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-0000gf-Qj; Wed, 25 Sep 2024 15:55:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-001Sjj-4R; Wed, 25 Sep 2024 15:55:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1Y;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-6-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272525; l=9241;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I4jZJSvhK63JRmjGonJm9NRZ4VZRi/Asxs0NvFvbcP4=;
 b=sPDSQoV9aHZfsHRkUwQAwehHPHTaAgT0fViSNrPNPM+vYQpDz7EZPg7PSdqVvTupO+I4opIEU
 ivCiz1ol5ERC6Ik+pBYcHTbqQpwupN1ZhA/T50II5foYZhxNYgSNuHz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_065536_486781_6E3DFAE0 
X-CRM114-Status: GOOD (  10.44  )
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
Subject: [PATCH 06/10] ARM: update io-* from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates io-readsb.S, io-readsl.S, io-readsw-armv4.S, io-writesb.S,
io-writesl.S and io-writesw-armv4.S from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/io-readsb.S        | 28 +++++++++++++++-------------
 arch/arm/lib32/io-readsl.S        | 16 +++++++++-------
 arch/arm/lib32/io-readsw-armv4.S  | 22 ++++++++++++----------
 arch/arm/lib32/io-writesb.S       | 30 ++++++++++++++++--------------
 arch/arm/lib32/io-writesl.S       | 20 +++++++++++---------
 arch/arm/lib32/io-writesw-armv4.S | 18 ++++++++++--------
 6 files changed, 73 insertions(+), 61 deletions(-)

diff --git a/arch/arm/lib32/io-readsb.S b/arch/arm/lib32/io-readsb.S
index 41f68092c5..2777a49b22 100644
--- a/arch/arm/lib32/io-readsb.S
+++ b/arch/arm/lib32/io-readsb.S
@@ -1,12 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
  *  linux/arch/arm/lib/io-readsb.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 .section .text.__raw_readsb
 
 .Linsb_align:	rsb	ip, ip, #4
@@ -15,16 +17,16 @@
 		cmp	ip, #2
 		ldrb	r3, [r0]
 		strb	r3, [r1], #1
-		ldrgeb	r3, [r0]
-		strgeb	r3, [r1], #1
-		ldrgtb	r3, [r0]
-		strgtb	r3, [r1], #1
+		ldrbge	r3, [r0]
+		strbge	r3, [r1], #1
+		ldrbgt	r3, [r0]
+		strbgt	r3, [r1], #1
 		subs	r2, r2, ip
 		bne	.Linsb_aligned
 
 ENTRY(__raw_readsb)
 		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
+		reteq	lr
 		ands	ip, r1, #3
 		bne	.Linsb_align
 
@@ -71,7 +73,7 @@ ENTRY(__raw_readsb)
 		bpl	.Linsb_16_lp
 
 		tst	r2, #15
-		ldmeqfd	sp!, {r4 - r6, pc}
+		ldmfdeq	sp!, {r4 - r6, pc}
 
 .Linsb_no_16:	tst	r2, #8
 		beq	.Linsb_no_8
@@ -108,15 +110,15 @@ ENTRY(__raw_readsb)
 		str	r3, [r1], #4
 
 .Linsb_no_4:	ands	r2, r2, #3
-		ldmeqfd	sp!, {r4 - r6, pc}
+		ldmfdeq	sp!, {r4 - r6, pc}
 
 		cmp	r2, #2
 		ldrb	r3, [r0]
 		strb	r3, [r1], #1
-		ldrgeb	r3, [r0]
-		strgeb	r3, [r1], #1
-		ldrgtb	r3, [r0]
-		strgtb	r3, [r1]
+		ldrbge	r3, [r0]
+		strbge	r3, [r1], #1
+		ldrbgt	r3, [r0]
+		strbgt	r3, [r1]
 
 		ldmfd	sp!, {r4 - r6, pc}
 ENDPROC(__raw_readsb)
diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
index 7bcd0d45bc..aecac1f9eb 100644
--- a/arch/arm/lib32/io-readsl.S
+++ b/arch/arm/lib32/io-readsl.S
@@ -1,17 +1,19 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/io-readsl.S
+ *  linux/arch/arm/lib/io-readsl.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 .section .text.__raw_readsl
 
 ENTRY(__raw_readsl)
 		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
+		reteq	lr
 		ands	ip, r1, #3
 		bne	3f
 
@@ -29,10 +31,10 @@ ENTRY(__raw_readsl)
 2:		movs	r2, r2, lsl #31
 		ldrcs	r3, [r0, #0]
 		ldrcs	ip, [r0, #0]
-		stmcsia	r1!, {r3, ip}
+		stmiacs	r1!, {r3, ip}
 		ldrne	r3, [r0, #0]
 		strne	r3, [r1, #0]
-		mov	pc, lr
+		ret	lr
 
 3:		ldr	r3, [r0]
 		cmp	ip, #2
@@ -74,5 +76,5 @@ ENTRY(__raw_readsl)
 		strb	r3, [r1, #1]
 8:		mov	r3, ip, get_byte_0
 		strb	r3, [r1, #0]
-		mov	pc, lr
+		ret	lr
 ENDPROC(__raw_readsl)
diff --git a/arch/arm/lib32/io-readsw-armv4.S b/arch/arm/lib32/io-readsw-armv4.S
index 9fb7fd7576..f5c633027c 100644
--- a/arch/arm/lib32/io-readsw-armv4.S
+++ b/arch/arm/lib32/io-readsw-armv4.S
@@ -1,12 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/io-readsw-armv4.S
+ *  linux/arch/arm/lib/io-readsw-armv4.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 		.macro	pack, rd, hw1, hw2
 #ifndef __ARMEB__
 		orr	\rd, \hw1, \hw2, lsl #16
@@ -25,7 +27,7 @@
 
 ENTRY(__raw_readsw)
 		teq	r2, #0
-		moveq	pc, lr
+		reteq	lr
 		tst	r1, #3
 		bne	.Linsw_align
 
@@ -75,8 +77,8 @@ ENTRY(__raw_readsw)
 		pack	r3, r3, ip
 		str	r3, [r1], #4
 
-.Lno_insw_2:	ldrneh	r3, [r0]
-		strneh	r3, [r1]
+.Lno_insw_2:	ldrhne	r3, [r0]
+		strhne	r3, [r1]
 
 		ldmfd	sp!, {r4, r5, pc}
 
@@ -93,7 +95,7 @@ ENTRY(__raw_readsw)
 #endif
 
 .Linsw_noalign:	stmfd	sp!, {r4, lr}
-		ldrccb	ip, [r1, #-1]!
+		ldrbcc	ip, [r1, #-1]!
 		bcc	1f
 
 		ldrh	ip, [r0]
@@ -120,11 +122,11 @@ ENTRY(__raw_readsw)
 
 3:		tst	r2, #1
 		strb	ip, [r1], #1
-		ldrneh	ip, [r0]
+		ldrhne	ip, [r0]
    _BE_ONLY_(	movne	ip, ip, ror #8		)
-		strneb	ip, [r1], #1
+		strbne	ip, [r1], #1
    _LE_ONLY_(	movne	ip, ip, lsr #8		)
    _BE_ONLY_(	movne	ip, ip, lsr #24		)
-		strneb	ip, [r1]
+		strbne	ip, [r1]
 		ldmfd	sp!, {r4, pc}
 ENDPROC(__raw_readsw)
diff --git a/arch/arm/lib32/io-writesb.S b/arch/arm/lib32/io-writesb.S
index b6ce85f0d4..0bfb1f914e 100644
--- a/arch/arm/lib32/io-writesb.S
+++ b/arch/arm/lib32/io-writesb.S
@@ -1,12 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/io-writesb.S
+ *  linux/arch/arm/lib/io-writesb.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 		.macro	outword, rd
 #ifndef __ARMEB__
 		strb	\rd, [r0]
@@ -35,16 +37,16 @@
 		cmp	ip, #2
 		ldrb	r3, [r1], #1
 		strb	r3, [r0]
-		ldrgeb	r3, [r1], #1
-		strgeb	r3, [r0]
-		ldrgtb	r3, [r1], #1
-		strgtb	r3, [r0]
+		ldrbge	r3, [r1], #1
+		strbge	r3, [r0]
+		ldrbgt	r3, [r1], #1
+		strbgt	r3, [r0]
 		subs	r2, r2, ip
 		bne	.Loutsb_aligned
 
 ENTRY(__raw_writesb)
 		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
+		reteq	lr
 		ands	ip, r1, #3
 		bne	.Loutsb_align
 
@@ -63,7 +65,7 @@ ENTRY(__raw_writesb)
 		bpl	.Loutsb_16_lp
 
 		tst	r2, #15
-		ldmeqfd	sp!, {r4, r5, pc}
+		ldmfdeq	sp!, {r4, r5, pc}
 
 .Loutsb_no_16:	tst	r2, #8
 		beq	.Loutsb_no_8
@@ -79,15 +81,15 @@ ENTRY(__raw_writesb)
 		outword	r3
 
 .Loutsb_no_4:	ands	r2, r2, #3
-		ldmeqfd	sp!, {r4, r5, pc}
+		ldmfdeq	sp!, {r4, r5, pc}
 
 		cmp	r2, #2
 		ldrb	r3, [r1], #1
 		strb	r3, [r0]
-		ldrgeb	r3, [r1], #1
-		strgeb	r3, [r0]
-		ldrgtb	r3, [r1]
-		strgtb	r3, [r0]
+		ldrbge	r3, [r1], #1
+		strbge	r3, [r0]
+		ldrbgt	r3, [r1]
+		strbgt	r3, [r0]
 
 		ldmfd	sp!, {r4, r5, pc}
 ENDPROC(__raw_writesb)
diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
index 61164234de..c300a62daf 100644
--- a/arch/arm/lib32/io-writesl.S
+++ b/arch/arm/lib32/io-writesl.S
@@ -1,17 +1,19 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/io-writesl.S
+ *  linux/arch/arm/lib/io-writesl.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 .section .text.__raw_writesl
 
 ENTRY(__raw_writesl)
 		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
+		reteq	lr
 		ands	ip, r1, #3
 		bne	3f
 
@@ -27,12 +29,12 @@ ENTRY(__raw_writesl)
 		bpl	1b
 		ldmfd	sp!, {r4, lr}
 2:		movs	r2, r2, lsl #31
-		ldmcsia	r1!, {r3, ip}
+		ldmiacs	r1!, {r3, ip}
 		strcs	r3, [r0, #0]
 		ldrne	r3, [r1, #0]
 		strcs	ip, [r0, #0]
 		strne	r3, [r0, #0]
-		mov	pc, lr
+		ret	lr
 
 3:		bic	r1, r1, #3
 		ldr	r3, [r1], #4
@@ -46,7 +48,7 @@ ENTRY(__raw_writesl)
 		orr	ip, ip, r3, lspush #16
 		str	ip, [r0]
 		bne	4b
-		mov	pc, lr
+		ret	lr
 
 5:		mov	ip, r3, lspull #8
 		ldr	r3, [r1], #4
@@ -54,7 +56,7 @@ ENTRY(__raw_writesl)
 		orr	ip, ip, r3, lspush #24
 		str	ip, [r0]
 		bne	5b
-		mov	pc, lr
+		ret	lr
 
 6:		mov	ip, r3, lspull #24
 		ldr	r3, [r1], #4
@@ -62,5 +64,5 @@ ENTRY(__raw_writesl)
 		orr	ip, ip, r3, lspush #8
 		str	ip, [r0]
 		bne	6b
-		mov	pc, lr
+		ret	lr
 ENDPROC(__raw_writesl)
diff --git a/arch/arm/lib32/io-writesw-armv4.S b/arch/arm/lib32/io-writesw-armv4.S
index 5cfa74356c..717237f3cc 100644
--- a/arch/arm/lib32/io-writesw-armv4.S
+++ b/arch/arm/lib32/io-writesw-armv4.S
@@ -1,12 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * linux/arch/arm/lib/io-writesw-armv4.S
+ *  linux/arch/arm/lib/io-writesw-armv4.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.syntax unified
+
 		.macro	outword, rd
 #ifndef __ARMEB__
 		strh	\rd, [r0]
@@ -30,7 +32,7 @@
 
 ENTRY(__raw_writesw)
 		teq	r2, #0
-		moveq	pc, lr
+		reteq	lr
 		ands	r3, r1, #3
 		bne	.Loutsw_align
 
@@ -60,8 +62,8 @@ ENTRY(__raw_writesw)
 		ldr	r3, [r1], #4
 		outword	r3
 
-.Lno_outsw_2:	ldrneh	r3, [r1]
-		strneh	r3, [r0]
+.Lno_outsw_2:	ldrhne	r3, [r1]
+		strhne	r3, [r0]
 
 		ldmfd	sp!, {r4, r5, pc}
 
@@ -94,6 +96,6 @@ ENTRY(__raw_writesw)
 
 		tst	r2, #1
 3:		movne	ip, r3, lsr #8
-		strneh	ip, [r0]
-		mov	pc, lr
+		strhne	ip, [r0]
+		ret	lr
 ENDPROC(__raw_writesw)

-- 
2.39.5



