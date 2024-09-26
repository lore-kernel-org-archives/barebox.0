Delivery-date: Thu, 26 Sep 2024 13:23:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmb4-002yrY-1g
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmb3-0002ip-9y
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u8l9AbFYJCs8NfWPda8TDxSK/ndeDnB1TQcJNVA36ag=; b=yAyXdZzgj3wEnuoFyNSnp4cBaQ
	FqctBi9igdKDgiK4nPi2C392eQTqihVzDlrwaqnb264NoUuzLICGmiVLxU+HVXx2skJ8o+Vcg8PSR
	pOojHHXW7tzmHyNoIM1vKcJonRcudjGPJ3xHInQrKVFgtVD0sJrbFFOR5KSXcK2AuUDDLGQR/i1WX
	UnH2Xc1vK6qFkz9kTTQRQ3ZuYRx5OK0hhFkpDOsvHSaDv4yxOMyG3zhZgstBAF+dHokSR+7IN9V2G
	trDGL6MCXdH/uPFQEJ8I5TwpNE+dwwljTu6ISYdPvRhOLJrvsuAbwkBgEzkoOhrqtprL2ODLSSwIv
	Sq6dhbww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmaS-00000008DaN-1D3f;
	Thu, 26 Sep 2024 11:23:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmUu-00000008CeT-0xca
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:17:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-0006st-Si; Thu, 26 Sep 2024 13:17:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-001fjp-8y; Thu, 26 Sep 2024 13:17:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-00FhS5-1v;
	Thu, 26 Sep 2024 13:17:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:17:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-arm-assembly-memmove-v2-1-0a3313d29a66@pengutronix.de>
References: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
In-Reply-To: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349426; l=5095;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mD/wn1eq/oaXC8T5Z000wPfKOB/jvyKH/W2lOIbVE6E=;
 b=KlsQenCK48t6dK/FfW/7mJrEi+v9oRTCX9zimaqYwrLICUuXvQ7C5qOuYN2Wz2qaJbhCbo9b8
 ET23NT4U4wYDKx7KsEHPO/CpllYggoUUy2YF/BUjP+T85vYiio1aur/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041724_313506_1E0F9C51 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 01/10] ARM: Use optimized reads[bwl] and writes[bwl]
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The optimized versions are there for ARM32, but since 0d53f3c584a2
("arm: use asm-generic/io.h") they were no longer used. Activate
them again.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/io.h        | 24 ++++++++++++++++++++++++
 arch/arm/lib32/io-readsb.S       |  6 +++---
 arch/arm/lib32/io-readsl.S       |  6 +++---
 arch/arm/lib32/io-readsw-armv4.S |  6 +++---
 arch/arm/lib32/io-writesb.S      |  6 +++---
 arch/arm/lib32/io-writesl.S      |  6 +++---
 6 files changed, 39 insertions(+), 15 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 486b142950..9e9b13ad18 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -3,6 +3,30 @@
 #ifndef __ASM_ARM_IO_H
 #define __ASM_ARM_IO_H
 
+#include <linux/compiler.h>
+
+#ifndef CONFIG_CPU_64
+/*
+ * Generic IO read/write.  These perform native-endian accesses.  Note
+ * that some architectures will want to re-define __raw_{read,write}w.
+ */
+void __raw_writesb(volatile void __iomem *addr, const void *data, int bytelen);
+void __raw_writesw(volatile void __iomem *addr, const void *data, int wordlen);
+void __raw_writesl(volatile void __iomem *addr, const void *data, int longlen);
+
+void __raw_readsb(const volatile void __iomem *addr, void *data, int bytelen);
+void __raw_readsw(const volatile void __iomem *addr, void *data, int wordlen);
+void __raw_readsl(const volatile void __iomem *addr, void *data, int longlen);
+
+#define readsb(p,d,l)		__raw_readsb(p,d,l)
+#define readsw(p,d,l)		__raw_readsw(p,d,l)
+#define readsl(p,d,l)		__raw_readsl(p,d,l)
+
+#define writesb(p,d,l)		__raw_writesb(p,d,l)
+#define writesw(p,d,l)		__raw_writesw(p,d,l)
+#define writesl(p,d,l)		__raw_writesl(p,d,l)
+#endif
+
 #define	IO_SPACE_LIMIT	0
 
 #define memcpy_fromio memcpy_fromio
diff --git a/arch/arm/lib32/io-readsb.S b/arch/arm/lib32/io-readsb.S
index f853c48021..41f68092c5 100644
--- a/arch/arm/lib32/io-readsb.S
+++ b/arch/arm/lib32/io-readsb.S
@@ -7,7 +7,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section .text.readsb
+.section .text.__raw_readsb
 
 .Linsb_align:	rsb	ip, ip, #4
 		cmp	ip, r2
@@ -22,7 +22,7 @@
 		subs	r2, r2, ip
 		bne	.Linsb_aligned
 
-ENTRY(readsb)
+ENTRY(__raw_readsb)
 		teq	r2, #0		@ do we have to check for the zero len?
 		moveq	pc, lr
 		ands	ip, r1, #3
@@ -119,4 +119,4 @@ ENTRY(readsb)
 		strgtb	r3, [r1]
 
 		ldmfd	sp!, {r4 - r6, pc}
-ENDPROC(readsb)
+ENDPROC(__raw_readsb)
diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
index bb8b96ded0..e1855fd636 100644
--- a/arch/arm/lib32/io-readsl.S
+++ b/arch/arm/lib32/io-readsl.S
@@ -7,9 +7,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section .text.readsl
+.section .text.__raw_readsl
 
-ENTRY(readsl)
+ENTRY(__raw_readsl)
 		teq	r2, #0		@ do we have to check for the zero len?
 		moveq	pc, lr
 		ands	ip, r1, #3
@@ -75,4 +75,4 @@ ENTRY(readsl)
 8:		mov	r3, ip, get_byte_0
 		strb	r3, [r1, #0]
 		mov	pc, lr
-ENDPROC(readsl)
+ENDPROC(__raw_readsl)
diff --git a/arch/arm/lib32/io-readsw-armv4.S b/arch/arm/lib32/io-readsw-armv4.S
index 25f2778860..9fb7fd7576 100644
--- a/arch/arm/lib32/io-readsw-armv4.S
+++ b/arch/arm/lib32/io-readsw-armv4.S
@@ -15,7 +15,7 @@
 #endif
 		.endm
 
-.section .text.readsw
+.section .text.__raw_readsw
 
 .Linsw_align:	movs	ip, r1, lsl #31
 		bne	.Linsw_noalign
@@ -23,7 +23,7 @@
 		sub	r2, r2, #1
 		strh	ip, [r1], #2
 
-ENTRY(readsw)
+ENTRY(__raw_readsw)
 		teq	r2, #0
 		moveq	pc, lr
 		tst	r1, #3
@@ -127,4 +127,4 @@ ENTRY(readsw)
    _BE_ONLY_(	movne	ip, ip, lsr #24		)
 		strneb	ip, [r1]
 		ldmfd	sp!, {r4, pc}
-ENDPROC(readsw)
+ENDPROC(__raw_readsw)
diff --git a/arch/arm/lib32/io-writesb.S b/arch/arm/lib32/io-writesb.S
index 313839bff6..b6ce85f0d4 100644
--- a/arch/arm/lib32/io-writesb.S
+++ b/arch/arm/lib32/io-writesb.S
@@ -27,7 +27,7 @@
 #endif
 		.endm
 
-.section .text.writesb
+.section .text.__raw_writesb
 
 .Loutsb_align:	rsb	ip, ip, #4
 		cmp	ip, r2
@@ -42,7 +42,7 @@
 		subs	r2, r2, ip
 		bne	.Loutsb_aligned
 
-ENTRY(writesb)
+ENTRY(__raw_writesb)
 		teq	r2, #0		@ do we have to check for the zero len?
 		moveq	pc, lr
 		ands	ip, r1, #3
@@ -90,4 +90,4 @@ ENTRY(writesb)
 		strgtb	r3, [r0]
 
 		ldmfd	sp!, {r4, r5, pc}
-ENDPROC(writesb)
+ENDPROC(__raw_writesb)
diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
index d9a29d9153..ed91ae19b7 100644
--- a/arch/arm/lib32/io-writesl.S
+++ b/arch/arm/lib32/io-writesl.S
@@ -7,9 +7,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section .text.writesl
+.section .text.__raw_writesl
 
-ENTRY(writesl)
+ENTRY(__raw_writesl)
 		teq	r2, #0		@ do we have to check for the zero len?
 		moveq	pc, lr
 		ands	ip, r1, #3
@@ -63,4 +63,4 @@ ENTRY(writesl)
 		str	ip, [r0]
 		bne	6b
 		mov	pc, lr
-ENDPROC(writesl)
+ENDPROC(__raw_writesl)

-- 
2.39.5



