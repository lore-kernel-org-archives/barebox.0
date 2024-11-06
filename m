Delivery-date: Wed, 06 Nov 2024 17:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0i-005azk-2i
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 17:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0i-0000d9-U1
	for lore@pengutronix.de; Wed, 06 Nov 2024 17:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZPKnfydXlS8P48fU2GZJBHvkOp3mi23g+yONzc6WqcM=; b=eP8n06+0WZJu5dviPsQ571yMMh
	Z82Lp8Xf2EDslwZLCbWVwXMEbNqQTqcqscgSzokP7pckslf0uhpSoix3K6MkdkLqgrza0Ea97ytFZ
	1+NcuMQH9Om13WpnUaW4X4yf7fHo1q1G28NP/wt/mE3aqJDnBQxhkipwGD0C8DjPA+N2TpFbEZ/NM
	YPHxe1vZwI7d3DV7PGD4cTPyUL1/SJtXHpfSc4KlNC0VyAcvaad1xGybxcvKBDIk7MKy3XRHzAteu
	7Do2sp0rUlYGg0CmdeZAzXfb2krR+rn1WpJ6cT+t87neJY2b6CBz9VmiwNNIQvhZFnZIDxXgTbujL
	2JWQNf3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8j0E-000000042wy-237f;
	Wed, 06 Nov 2024 16:35:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8j09-000000042uB-3xCK
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 16:35:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-0000EJ-Kw; Wed, 06 Nov 2024 17:35:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-002KX4-17;
	Wed, 06 Nov 2024 17:35:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-00HO2D-0w;
	Wed, 06 Nov 2024 17:35:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 06 Nov 2024 17:34:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241106-fix-sha256-assembly-v1-1-ad1ac961f15f@pengutronix.de>
References: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
In-Reply-To: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_083526_192992_305CF332 
X-CRM114-Status: GOOD (  16.67  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] arm: crypto: sha256: fix generation of thumb2 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The checked in `sha256-core.S_shipped` assembly file has a thumb2
specific workaround applied[1]. This fix wasn't backported to the perl
script `sha256-armv4.pl` used to generate the assembly, thus when the
script is run it would regenerate the buggy code.

In-tree builds were not affected as the assembly file already exists in
the source tree. However in the context of an out-of-tree build (make
O=xyz) the file isn't present from the pov of make - triggering a
regeneration. This happens by default during Yocto builds - leading to a
broken sha256 sum function on ARMv7 compiled with Thumb2 support. The
bug expresses itself not in crashes but wrong sha256 sums.

The mentioned problem in[1] was fixed and explained further in upstream
commit[2]. Thus this commit updates the script and generated assembly to
the most recent Kernel commit[3].

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



