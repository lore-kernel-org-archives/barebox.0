Delivery-date: Thu, 23 Nov 2023 09:18:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r64uQ-005YLK-39
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 09:18:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r64uQ-0005fE-Ud
	for lore@pengutronix.de; Thu, 23 Nov 2023 09:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9uNXDUTPZlNWldoDKSfSpU8O8zhdEuHinSagGB/zc4=; b=GaQcFRhem6YVHKSboD2l5thDTO
	Zldl8bKOjoAahfpWH94g2K7FpP1+IxwiD8M2y9KQrJXBQ0CVlmqR1h2H9+mr9o86Tg0/WYCTOFeM1
	y2oqZaG5yYkKtC/k3y6uk9+Bamwus5hDg2SNXJ9RNAaEOvHrPmM1iyVxaI1EMDhDHjv6xJDUGDqJV
	gOGCSitRQPOpDMc7OBOy7WOop6/PvSKOWhxgWMjcB4uisb/agunmG5oxjdOiOZbYMvC5EItzQmoCh
	PnyXPKKNoHqLn6sbut9Tgs7dWgzUmwh/dgiwI8GzKTo6Kogla8xnd0NuzXyCwT/COpzHGhxfKBkrU
	OUr8+D+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r64tB-0047UU-1I;
	Thu, 23 Nov 2023 08:16:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r64t8-0047Tz-0z
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 08:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64t7-0005TY-5D; Thu, 23 Nov 2023 09:16:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64t6-00AzzH-P8; Thu, 23 Nov 2023 09:16:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64t6-005UjA-28;
	Thu, 23 Nov 2023 09:16:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Nov 2023 09:16:34 +0100
Message-Id: <20231123081634.1260704-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-9-a.fatoum@pengutronix.de>
References: <20231122172951.376531-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_001642_343974_8E8B5B63 
X-CRM114-Status: GOOD (  12.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! include: import Linux word-at-a-time.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

word-at-a-time: include linux/bitops for fls definitions

In Linux, <linux/kernel.h> includes <linux/bitops.h>, which eventually
defines fls/fls64/__fls. In barebox this is not the case, so we need to
explicitly include <linux/bitops.h>.

Also PPC_CNTLZL isn't supported in barebox. Fix that too to avoid
compile errors on PowerPC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/word-at-a-time.h     | 1 +
 arch/powerpc/include/asm/bitops.h         | 1 +
 arch/powerpc/include/asm/word-at-a-time.h | 8 +++++++-
 arch/riscv/include/asm/word-at-a-time.h   | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/word-at-a-time.h b/arch/arm/include/asm/word-at-a-time.h
index f22198a66be3..a2b20be13d07 100644
--- a/arch/arm/include/asm/word-at-a-time.h
+++ b/arch/arm/include/asm/word-at-a-time.h
@@ -8,6 +8,7 @@
 #if !defined(__AARCH64EB__) && !defined(__ARMEB__)
 
 #include <linux/kernel.h>
+#include <linux/bitops.h>
 
 struct word_at_a_time {
 	const unsigned long one_bits, high_bits;
diff --git a/arch/powerpc/include/asm/bitops.h b/arch/powerpc/include/asm/bitops.h
index 543612e6ede3..62b09c7da49c 100644
--- a/arch/powerpc/include/asm/bitops.h
+++ b/arch/powerpc/include/asm/bitops.h
@@ -184,6 +184,7 @@ static inline int ffs(int x)
 	return __ilog2(x & -x) + 1;
 }
 
+#include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/fls64.h>
 #include <asm-generic/bitops/hweight.h>
 
diff --git a/arch/powerpc/include/asm/word-at-a-time.h b/arch/powerpc/include/asm/word-at-a-time.h
index 1de46fbd2e15..029740c6dedf 100644
--- a/arch/powerpc/include/asm/word-at-a-time.h
+++ b/arch/powerpc/include/asm/word-at-a-time.h
@@ -6,6 +6,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/bitops.h>
 
 #ifdef __BIG_ENDIAN__
 
@@ -28,7 +29,12 @@ static inline long find_zero(unsigned long mask)
 {
 	long leading_zero_bits;
 
-	asm (PPC_CNTLZL "%0,%1" : "=r" (leading_zero_bits) : "r" (mask));
+#ifdef __powerpc64__
+	asm ("cntlzd %0,%1" : "=r" (leading_zero_bits) : "r" (mask));
+#else
+	asm ("cntlzw %0,%1" : "=r" (leading_zero_bits) : "r" (mask));
+#endif
+
 	return leading_zero_bits >> 3;
 }
 
diff --git a/arch/riscv/include/asm/word-at-a-time.h b/arch/riscv/include/asm/word-at-a-time.h
index 7c086ac6ecd4..74f077d38fe0 100644
--- a/arch/riscv/include/asm/word-at-a-time.h
+++ b/arch/riscv/include/asm/word-at-a-time.h
@@ -10,6 +10,7 @@
 
 
 #include <linux/kernel.h>
+#include <linux/bitops.h>
 
 struct word_at_a_time {
 	const unsigned long one_bits, high_bits;
-- 
2.39.2



