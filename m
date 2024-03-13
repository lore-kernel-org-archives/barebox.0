Delivery-date: Wed, 13 Mar 2024 11:57:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMId-004HU3-0x
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIc-0001EC-Cg
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SI1Ha2UrvJYcsL5N3+LdPYXXPotHYawT/CBcnSnJIfI=; b=iGtdZa3uJu0+Qcy8TGArAUFwyr
	BlQ+rTlKc+5ltxPgHEBzBnEYIGx3ExQ+jP5zMaz8gI0NaOqYfiHy4Ghl5WzC2U0Zrkgqkok7er2yb
	NvxxV9Y0zGwFrMbxTBZIo/ttlngd2nr1cDAEMclJsmE0mrdcPgMWdqfp9dvalSb6Sp+uawD/NtHIE
	Byzn38nqgUUvobfFZfoZaFyEU4YTPilaZTSYgEiHXnm9ka1vRbdhywN737PdD4MLgJeloCPj0hkF7
	7pVIWixwBwNbArzluDeWYZk1/SjOOktWtGzqvmyxZC/L5EdSgmOokY0mRLavO8ShPRZfjZ0AiaANI
	+2Zc1xlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMI8-00000009kX8-3efn;
	Wed, 13 Mar 2024 10:57:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKh-0OuY
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-0008P7-SZ; Wed, 13 Mar 2024 11:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-006616-Fw; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHf-004FrF-2t;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:21 +0100
Message-Id: <20240313105631.686778-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_382565_106581D9 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/12] ARM: io: read 32 bits at once for aligned I/O memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox arm32 implementation for I/O memcpy/memset uses single
byte accesses exclusively. This is different from the barebox arm64
implementation, which accesses 64 bits at once if the buffer is aligned
and the Linux arm32 implementation, which is the optimized assembly
version that doesn't use single byte accesses for aligned buffers
either.

The current implementation is slower than need be and breaks code ported
from Linux. e.g. the OMAP RNG driver uses memcpy_fromio and expects it
to perform 32-bit accesses as any smaller access leads to a data abort
on the hardware. In Linux this works, but in barebox it crashes.

Avoid these issues by using 32-bit accesses if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/io.c | 73 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 57 insertions(+), 16 deletions(-)

diff --git a/arch/arm/lib32/io.c b/arch/arm/lib32/io.c
index a12da49c0ab2..780b1083a641 100644
--- a/arch/arm/lib32/io.c
+++ b/arch/arm/lib32/io.c
@@ -2,48 +2,89 @@
 
 #include <module.h>
 #include <linux/types.h>
+#include <asm/unaligned.h>
 #include <io.h>
 
 /*
  * Copy data from IO memory space to "real" memory space.
- * This needs to be optimized.
  */
 void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
 {
-	unsigned char *t = to;
-	while (count) {
-		count--;
-		*t = readb(from);
-		t++;
+	while (count && !PTR_IS_ALIGNED(from, 4)) {
+		*(u8 *)to = __raw_readb(from);
 		from++;
+		to++;
+		count--;
+	}
+
+	while (count >= 4) {
+		put_unaligned(__raw_readl(from), (u32 *)to);
+		from += 4;
+		to += 4;
+		count -= 4;
+	}
+
+	while (count) {
+		*(u8 *)to = __raw_readb(from);
+		from++;
+		to++;
+		count--;
 	}
 }
 
 /*
  * Copy data from "real" memory space to IO memory space.
- * This needs to be optimized.
  */
 void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
 {
-	const unsigned char *f = from;
-	while (count) {
-		count--;
-		writeb(*f, to);
-		f++;
+	while (count && !IS_ALIGNED((unsigned long)to, 4)) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
 		to++;
+		count--;
+	}
+
+	while (count >= 4) {
+		__raw_writel(get_unaligned((u32 *)from), to);
+		from += 4;
+		to += 4;
+		count -= 4;
+	}
+
+	while (count) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
+		to++;
+		count--;
 	}
 }
 
 /*
  * "memset" on IO memory space.
- * This needs to be optimized.
  */
 void memset_io(volatile void __iomem *dst, int c, size_t count)
 {
-	while (count) {
-		count--;
-		writeb(c, dst);
+	u32 qc = (u8)c;
+
+	qc |= qc << 8;
+	qc |= qc << 16;
+
+	while (count && !PTR_IS_ALIGNED(dst, 4)) {
+		__raw_writeb(c, dst);
 		dst++;
+		count--;
+	}
+
+	while (count >= 4) {
+		__raw_writel(qc, dst);
+		dst += 4;
+		count -= 4;
+	}
+
+	while (count) {
+		__raw_writeb(c, dst);
+		dst++;
+		count--;
 	}
 }
 
-- 
2.39.2



