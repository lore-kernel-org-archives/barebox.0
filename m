Delivery-date: Thu, 07 Nov 2024 15:06:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939T-005wmj-0I
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 15:06:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939S-0006dB-TZ
	for lore@pengutronix.de; Thu, 07 Nov 2024 15:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=34Rc9TYCBt8JRf2O1OPGCZnuowPalB9sh9efoozAGlw=; b=yxwWB1WU1vBc/Y81t6lY/RTlfS
	d/U6Oc49N+q+H6Y2JZ/U1UrBoI7ZNDv+xyAvpE2cCYOh4WkmPU4OaB+fTV3PMgJ9jeL+3HpP9VdAG
	0ma0mrh/UCIInqzQPSaxf0KomkVxEUtEQ/bN/3KqA7atAKnohT+Ma7eXB9TjJC6sSmJJgDVRbknZv
	FuHpO2I4SXU6Q0EN6gnpwsR6m5BeAo7pbiiLOFGj35E1wMtLpd81qOxij57ZEcltrSmTAlK7AYjT3
	6c70p+Y4URmabSkDXyybYel2EzRiciKfRnMz06twnZRv6OTdljVzb68NBZjbX4KXiopVHpmfGn0F2
	pRk00q0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t938x-00000007EAP-0jzE;
	Thu, 07 Nov 2024 14:05:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t935p-00000007Dc0-1F8q
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:02:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935g-0005ta-1G; Thu, 07 Nov 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-002T9E-2S;
	Thu, 07 Nov 2024 15:02:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-00EWBz-2G;
	Thu, 07 Nov 2024 15:02:27 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Nov 2024 15:02:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fix-sha256-assembly-v2-1-5fdb418f7f54@pengutronix.de>
References: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
In-Reply-To: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_060237_549568_7B48D702 
X-CRM114-Status: GOOD (  16.66  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] arm: crypto: sha256: fix generation of thumb2
 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The checked in `sha256-core.S_shipped` assembly file has a thumb2
specific workaround applied[1]. This fix wasn't backported to the perl
script `sha256-armv4.pl` used to generate the assembly, thus when the
script is run it would regenerate the buggy code.

Under rare circumstances the modification timestamp of `sha256-armv4.pl`
differs enough from `sha256-core.S_shipped` that make triggers a
regeneration - leading to a broken sha256 digest on ARMv7 compiled in
Thumb2 mode. In my case it was a Yocto build of barebox from an external
source tree. Either the git checkout/clone process produced different
timestamps, as these are non-deterministic, or I accidentally touched
the file in another way. The bug expressed itself not in crashes but
wrong sha256 sums.

The mentioned problem in[1] was fixed and explained further in upstream
kernel commit[2]. Thus this commit updates the script and generated
assembly to the most recent kernel commit[3].

[1]: b73bc6e303 (arm: crypto: fix SHA256 shipped assembler code,
2018-10-05)
[2]: 69216a545cf8 (crypto: sha256/arm - fix crash bug in Thumb2 build,
2019-02-16)
[3]: 54781938ec34 (crypto: arm/sha256-neon - avoid ADRL pseudo
instruction, 2020-09-16)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/crypto/sha256-armv4.pl       | 25 ++++++++++------
 arch/arm/crypto/sha256-core.S_shipped | 55 +++++++++++++++++++++++++++++------
 2 files changed, 62 insertions(+), 18 deletions(-)

diff --git a/arch/arm/crypto/sha256-armv4.pl b/arch/arm/crypto/sha256-armv4.pl
index 2b186a034ed11295a09e55ce56fc5c1b54be3832..f3a2b54efd4ee39fbeaefc87ffd850e97915233b 100644
--- a/arch/arm/crypto/sha256-armv4.pl
+++ b/arch/arm/crypto/sha256-armv4.pl
@@ -1,12 +1,19 @@
 #!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
+
+# This code is taken from the OpenSSL project but the author (Andy Polyakov)
+# has relicensed it under the GPLv2. Therefore this program is free software;
+# you can redistribute it and/or modify it under the terms of the GNU General
+# Public License version 2 as published by the Free Software Foundation.
+#
+# The original headers, including the original license headers, are
+# included below for completeness.
 
 # ====================================================================
 # Written by Andy Polyakov <appro@openssl.org> for the OpenSSL
 # project. The module is, however, dual licensed under OpenSSL and
 # CRYPTOGAMS licenses depending on where you obtain it. For further
-# details see http://www.openssl.org/~appro/cryptogams/.
-#
-# Permission to use under GPL terms is granted.
+# details see https://www.openssl.org/~appro/cryptogams/.
 # ====================================================================
 
 # SHA256 block procedure for ARMv4. May 2007.
@@ -73,7 +80,9 @@ $code.=<<___ if ($i<16);
 	eor	$t0,$e,$e,ror#`$Sigma1[1]-$Sigma1[0]`
 	add	$a,$a,$t2			@ h+=Maj(a,b,c) from the past
 	eor	$t0,$t0,$e,ror#`$Sigma1[2]-$Sigma1[0]`	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	$t1,$t1
+# endif
 #else
 	@ ldrb	$t1,[$inp,#3]			@ $i
 	add	$a,$a,$t2			@ h+=Maj(a,b,c) from the past
@@ -172,10 +181,6 @@ $code=<<___;
 # endif
 #endif
 
-#ifdef __thumb__
-#define adrl adr
-#endif
-
 .type	K256,%object
 .align	5
 K256:
@@ -206,10 +211,11 @@ K256:
 .global	sha256_block_data_order
 .type	sha256_block_data_order,%function
 sha256_block_data_order:
+.Lsha256_block_data_order:
 #if __ARM_ARCH__<7
 	sub	r3,pc,#8		@ sha256_block_data_order
 #else
-	adr	r3,sha256_block_data_order
+	adr	r3,.Lsha256_block_data_order
 #endif
 #if __ARM_MAX_ARCH__>=7 && !defined(__KERNEL__)
 	ldr	r12,.LOPENSSL_armcap
@@ -464,7 +470,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
 
 	sub	$H,sp,#16*4+16
-	adrl	$Ktbl,K256
+	adr	$Ktbl,.Lsha256_block_data_order
+	sub	$Ktbl,$Ktbl,#.Lsha256_block_data_order-K256
 	bic	$H,$H,#15		@ align for 128-bit stores
 	mov	$t2,sp
 	mov	sp,$H			@ alloca
diff --git a/arch/arm/crypto/sha256-core.S_shipped b/arch/arm/crypto/sha256-core.S_shipped
index 4f9cf833b94b8c7ff07a7e58d0e648c5ef357959..6363014a50d799c0001c71f53b4c2e31949e2ce6 100644
--- a/arch/arm/crypto/sha256-core.S_shipped
+++ b/arch/arm/crypto/sha256-core.S_shipped
@@ -1,11 +1,18 @@
+@ SPDX-License-Identifier: GPL-2.0
+
+@ This code is taken from the OpenSSL project but the author (Andy Polyakov)
+@ has relicensed it under the GPLv2. Therefore this program is free software;
+@ you can redistribute it and/or modify it under the terms of the GNU General
+@ Public License version 2 as published by the Free Software Foundation.
+@
+@ The original headers, including the original license headers, are
+@ included below for completeness.
 
 @ ====================================================================
 @ Written by Andy Polyakov <appro@openssl.org> for the OpenSSL
 @ project. The module is, however, dual licensed under OpenSSL and
 @ CRYPTOGAMS licenses depending on where you obtain it. For further
-@ details see http://www.openssl.org/~appro/cryptogams/.
-@
-@ Permission to use under GPL terms is granted.
+@ details see https://www.openssl.org/~appro/cryptogams/.
 @ ====================================================================
 
 @ SHA256 block procedure for ARMv4. May 2007.
@@ -55,10 +62,6 @@
 # endif
 #endif
 
-#ifdef __thumb__
-#define adrl adr
-#endif
-
 .type	K256,%object
 .align	5
 K256:
@@ -89,10 +92,11 @@ K256:
 .global	sha256_block_data_order
 .type	sha256_block_data_order,%function
 sha256_block_data_order:
+.Lsha256_block_data_order:
 #if __ARM_ARCH__<7
 	sub	r3,pc,#8		@ sha256_block_data_order
 #else
-	adr	r3,.
+	adr	r3,.Lsha256_block_data_order
 #endif
 #if __ARM_MAX_ARCH__>=7 && !defined(__KERNEL__)
 	ldr	r12,.LOPENSSL_armcap
@@ -123,7 +127,9 @@ sha256_block_data_order:
 	eor	r0,r8,r8,ror#5
 	add	r4,r4,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r8,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 0
 	add	r4,r4,r12			@ h+=Maj(a,b,c) from the past
@@ -179,7 +185,9 @@ sha256_block_data_order:
 	eor	r0,r7,r7,ror#5
 	add	r11,r11,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r7,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 1
 	add	r11,r11,r3			@ h+=Maj(a,b,c) from the past
@@ -235,7 +243,9 @@ sha256_block_data_order:
 	eor	r0,r6,r6,ror#5
 	add	r10,r10,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r6,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 2
 	add	r10,r10,r12			@ h+=Maj(a,b,c) from the past
@@ -291,7 +301,9 @@ sha256_block_data_order:
 	eor	r0,r5,r5,ror#5
 	add	r9,r9,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r5,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 3
 	add	r9,r9,r3			@ h+=Maj(a,b,c) from the past
@@ -347,7 +359,9 @@ sha256_block_data_order:
 	eor	r0,r4,r4,ror#5
 	add	r8,r8,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r4,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 4
 	add	r8,r8,r12			@ h+=Maj(a,b,c) from the past
@@ -403,7 +417,9 @@ sha256_block_data_order:
 	eor	r0,r11,r11,ror#5
 	add	r7,r7,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r11,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 5
 	add	r7,r7,r3			@ h+=Maj(a,b,c) from the past
@@ -459,7 +475,9 @@ sha256_block_data_order:
 	eor	r0,r10,r10,ror#5
 	add	r6,r6,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r10,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 6
 	add	r6,r6,r12			@ h+=Maj(a,b,c) from the past
@@ -515,7 +533,9 @@ sha256_block_data_order:
 	eor	r0,r9,r9,ror#5
 	add	r5,r5,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r9,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 7
 	add	r5,r5,r3			@ h+=Maj(a,b,c) from the past
@@ -571,7 +591,9 @@ sha256_block_data_order:
 	eor	r0,r8,r8,ror#5
 	add	r4,r4,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r8,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 8
 	add	r4,r4,r12			@ h+=Maj(a,b,c) from the past
@@ -627,7 +649,9 @@ sha256_block_data_order:
 	eor	r0,r7,r7,ror#5
 	add	r11,r11,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r7,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 9
 	add	r11,r11,r3			@ h+=Maj(a,b,c) from the past
@@ -683,7 +707,9 @@ sha256_block_data_order:
 	eor	r0,r6,r6,ror#5
 	add	r10,r10,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r6,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 10
 	add	r10,r10,r12			@ h+=Maj(a,b,c) from the past
@@ -739,7 +765,9 @@ sha256_block_data_order:
 	eor	r0,r5,r5,ror#5
 	add	r9,r9,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r5,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 11
 	add	r9,r9,r3			@ h+=Maj(a,b,c) from the past
@@ -795,7 +823,9 @@ sha256_block_data_order:
 	eor	r0,r4,r4,ror#5
 	add	r8,r8,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r4,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 12
 	add	r8,r8,r12			@ h+=Maj(a,b,c) from the past
@@ -851,7 +881,9 @@ sha256_block_data_order:
 	eor	r0,r11,r11,ror#5
 	add	r7,r7,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r11,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 13
 	add	r7,r7,r3			@ h+=Maj(a,b,c) from the past
@@ -907,7 +939,9 @@ sha256_block_data_order:
 	eor	r0,r10,r10,ror#5
 	add	r6,r6,r12			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r10,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 14
 	add	r6,r6,r12			@ h+=Maj(a,b,c) from the past
@@ -963,7 +997,9 @@ sha256_block_data_order:
 	eor	r0,r9,r9,ror#5
 	add	r5,r5,r3			@ h+=Maj(a,b,c) from the past
 	eor	r0,r0,r9,ror#19	@ Sigma1(e)
+# ifndef __ARMEB__
 	rev	r2,r2
+# endif
 #else
 	@ ldrb	r2,[r1,#3]			@ 15
 	add	r5,r5,r3			@ h+=Maj(a,b,c) from the past
@@ -1848,7 +1884,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
 
 	sub	r11,sp,#16*4+16
-	adrl	r14,K256
+	adr	r14,.Lsha256_block_data_order
+	sub	r14,r14,#.Lsha256_block_data_order-K256
 	bic	r11,r11,#15		@ align for 128-bit stores
 	mov	r12,sp
 	mov	sp,r11			@ alloca

-- 
2.39.5



