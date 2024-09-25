Delivery-date: Wed, 25 Sep 2024 15:56:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSVG-002cFL-0N
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 15:56:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSVF-0001Hs-Rw
	for lore@pengutronix.de; Wed, 25 Sep 2024 15:56:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i0J4zFw8J/NE6EK3drj66XwaRe4p5FjMTHp2eYHc190=; b=W3W9Ff8oDAgY8jaYMjUaOelJId
	yQYbLp745I1311oHDrnT1cut1Gn5U1ke1TT1lep6tBYmnH/tisWifP8KxYVHxs9l+x+VhItpphgsy
	esSjbVNJKbrXJvP2+Nx7yhBpEtIMOEqNs+Ie037pnYN8Rkjlllw/y2z8YKwQZVlcPgDAVxEI7FWwP
	iLuZ8YDdXrwtZwJ4x6PYNu4AfXIgFMJ7EVkHu0PBbvOHKNRjuIvguP3N2SJDBEdqokTSfBnlx561T
	dqct57hxg7AMLGZkquOGBztOisi3xLSumw3NR08uov/EJz8NXFEDiWAdB8aMkw934tmyTJyP23B49
	3bqfJpLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUg-00000005Tyx-3Iod;
	Wed, 25 Sep 2024 13:55:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUa-00000005TtF-0j8Q
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 13:55:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-0000gg-Qo; Wed, 25 Sep 2024 15:55:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-001Sji-3r; Wed, 25 Sep 2024 15:55:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1X;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-5-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272525; l=8069;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=H4xoT410YdEFVmLhOPexOFLVVxfL84QFdnCxv7kCpl8=;
 b=dDy015HSW8VUfOqmT0yw0gYU9/waaP7MaNMzW1B1h8yq10wiagV382sDaAOWdp6c0/W3WgXgx
 w3B+8A67JKQAFKOYJHYEzOy2Vl5m/ufu89uHwHDbBDXu4OpC6JIqYEH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_065544_415304_6CA256F3 
X-CRM114-Status: GOOD (  14.84  )
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
Subject: [PATCH 05/10] ARM: update findbit.S from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates findbit.S from Linux

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/findbit.S | 243 ++++++++++++++++++-----------------------------
 1 file changed, 94 insertions(+), 149 deletions(-)

diff --git a/arch/arm/lib32/findbit.S b/arch/arm/lib32/findbit.S
index 82a0f34dc2..b7ac2d3c07 100644
--- a/arch/arm/lib32/findbit.S
+++ b/arch/arm/lib32/findbit.S
@@ -1,9 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 1995-2000 Russell King */
-
 /*
- * Originally from Linux kernel
- *  arch/arm/lib/findbit.S
+ *  linux/arch/arm/lib/findbit.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
  *
  * 16th March 2001 - John Ripley <jripley@sonicblue.com>
  *   Fixed so that "size" is an exclusive not an inclusive quantity.
@@ -13,182 +12,128 @@
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <asm/unwind.h>
                 .text
 
-/*
- * Purpose  : Find a 'zero' bit
- * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
- */
-ENTRY(_find_first_zero_bit_le)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eors	r3, r3, #0xff		@ invert bits
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_zero_bit_le)
-
-/*
- * Purpose  : Find next 'zero' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
- */
-ENTRY(_find_next_zero_bit_le)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eor	r3, r3, #0xff		@ now looking for a 1 bit
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_zero_bit_le)
+#ifdef __ARMEB__
+#define SWAB_ENDIAN le
+#else
+#define SWAB_ENDIAN be
+#endif
 
-/*
- * Purpose  : Find a 'one' bit
- * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
- */
-ENTRY(_find_first_bit_le)
+		.macro	find_first, endian, set, name
+ENTRY(_find_first_\name\()bit_\endian)
+	UNWIND(	.fnstart)
 		teq	r1, #0
 		beq	3f
 		mov	r2, #0
-1:
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
+1:		ldr	r3, [r0], #4
+		.ifeq \set
+		mvns	r3, r3			@ invert/test bits
+		.else
+		movs	r3, r3			@ test bits
+		.endif
+		.ifc \endian, SWAB_ENDIAN
+		bne	.L_found_swab
+		.else
+		bne	.L_found		@ found the bit?
+		.endif
+		add	r2, r2, #32		@ next index
 2:		cmp	r2, r1			@ any more?
 		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_bit_le)
+3:		mov	r0, r1			@ no more bits
+		ret	lr
+	UNWIND(	.fnend)
+ENDPROC(_find_first_\name\()bit_\endian)
+		.endm
 
-/*
- * Purpose  : Find next 'one' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
- */
-ENTRY(_find_next_bit_le)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
+		.macro	find_next, endian, set, name
+ENTRY(_find_next_\name\()bit_\endian)
+	UNWIND(	.fnstart)
+		cmp	r2, r1
+		bhs	3b
+		mov	ip, r2, lsr #5		@ word index
+		add	r0, r0, ip, lsl #2
+		ands	ip, r2, #31		@ bit position
+		beq	1b
+		ldr	r3, [r0], #4
+		.ifeq \set
+		mvn	r3, r3			@ invert bits
+		.endif
+		.ifc \endian, SWAB_ENDIAN
+		rev_l	r3, ip
+		.if	.Lrev_l_uses_tmp
+		@ we need to recompute ip because rev_l will have overwritten
+		@ it.
+		and	ip, r2, #31		@ bit position
+		.endif
+		.endif
 		movs	r3, r3, lsr ip		@ shift off unused bits
 		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
+		orr	r2, r2, #31		@ no zero bits
 		add	r2, r2, #1		@ align bit pointer
 		b	2b			@ loop for next bit
-ENDPROC(_find_next_bit_le)
+	UNWIND(	.fnend)
+ENDPROC(_find_next_\name\()bit_\endian)
+		.endm
 
-#ifdef __ARMEB__
+		.macro	find_bit, endian, set, name
+		find_first \endian, \set, \name
+		find_next  \endian, \set, \name
+		.endm
 
-ENTRY(_find_first_zero_bit_be)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eors	r3, r3, #0xff		@ invert bits
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_zero_bit_be)
+/* _find_first_zero_bit_le and _find_next_zero_bit_le */
+		find_bit le, 0, zero_
 
-ENTRY(_find_next_zero_bit_be)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
-		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eor	r3, r3, #0xff		@ now looking for a 1 bit
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_zero_bit_be)
+/* _find_first_bit_le and _find_next_bit_le */
+		find_bit le, 1
 
-ENTRY(_find_first_bit_be)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_bit_be)
+#ifdef __ARMEB__
 
-ENTRY(_find_next_bit_be)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
-		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_bit_be)
+/* _find_first_zero_bit_be and _find_next_zero_bit_be */
+		find_bit be, 0, zero_
+
+/* _find_first_bit_be and _find_next_bit_be */
+		find_bit be, 1
 
 #endif
 
 /*
  * One or more bits in the LSB of r3 are assumed to be set.
  */
+.L_found_swab:
+	UNWIND(	.fnstart)
+		rev_l	r3, ip
 .L_found:
-#if __LINUX_ARM_ARCH__ >= 5
+#if __LINUX_ARM_ARCH__ >= 7
+		rbit	r3, r3			@ reverse bits
+		clz	r3, r3			@ count high zero bits
+		add	r0, r2, r3		@ add offset of first set bit
+#elif __LINUX_ARM_ARCH__ >= 5
 		rsb	r0, r3, #0
-		and	r3, r3, r0
-		clz	r3, r3
-		rsb	r3, r3, #31
-		add	r0, r2, r3
+		and	r3, r3, r0		@ mask out lowest bit set
+		clz	r3, r3			@ count high zero bits
+		rsb	r3, r3, #31		@ offset of first set bit
+		add	r0, r2, r3		@ add offset of first set bit
 #else
-		tst	r3, #0x0f
+		mov	ip, #~0
+		tst	r3, ip, lsr #16		@ test bits 0-15
+		addeq	r2, r2, #16
+		moveq	r3, r3, lsr #16
+		tst	r3, #0x00ff
+		addeq	r2, r2, #8
+		moveq	r3, r3, lsr #8
+		tst	r3, #0x000f
 		addeq	r2, r2, #4
-		movne	r3, r3, lsl #4
-		tst	r3, #0x30
+		moveq	r3, r3, lsr #4
+		tst	r3, #0x0003
 		addeq	r2, r2, #2
-		movne	r3, r3, lsl #2
-		tst	r3, #0x40
+		moveq	r3, r3, lsr #2
+		tst	r3, #0x0001
 		addeq	r2, r2, #1
 		mov	r0, r2
 #endif
 		cmp	r1, r0			@ Clamp to maxbit
 		movlo	r0, r1
-		mov	pc, lr
-
+		ret	lr
+	UNWIND(	.fnend)

-- 
2.39.5



