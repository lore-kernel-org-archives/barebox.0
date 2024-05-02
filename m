Delivery-date: Thu, 02 May 2024 17:15:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2Y9R-00FHFK-0v
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:15:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2Y9P-00034D-5F
	for lore@pengutronix.de; Thu, 02 May 2024 17:15:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QsWw38237vx7DV5C+jFngGQlTyAfQQnuhQoU7UQotMo=; b=PU88xdPlIwDWbqySNCmjXdtZuM
	mXorDB0G6ZL2/muEruqQr1T8fJsull5TYdSFAuEU6nmMPt7FGgaxK/nd71YvdNjmccNbPLzYmYGVP
	yoNjL9SDa/IkauDzn+HJOWr4PJazzc8MDBsPLjjzxImTP2Nkt7FmjZ+5JeeT5828XGoSQyOQNCK8n
	1MZ1/OQOIoUSDsyaZxxg6vSvll/89F1+jQZMqUhnPmiZlW7r3PFYKmR513snwSaaZbuaqE9dL7E3Q
	TI4UVFb97UUwjhYiGPNVLQEjYNAy/TIabsUmxur46SnYSBUtGFKk2i5UOJbAVRYfECT8LdGE9/2pt
	EugHePrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Y8r-0000000D4Oz-1XeC;
	Thu, 02 May 2024 15:14:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Y8n-0000000D4Nh-3III
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8m-0002qO-Cl; Thu, 02 May 2024 17:14:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8m-00FXqQ-0N; Thu, 02 May 2024 17:14:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8l-00Gd1F-2y;
	Thu, 02 May 2024 17:14:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:14:29 +0200
Message-Id: <20240502151430.3963160-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081433_844368_AE2398B4 
X-CRM114-Status: GOOD (  11.61  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: ktime: implement __ktime_divns for 32-bit systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ktime_devns is an inline function for constant divisors. For
non-constant divisors, it's only inline for 64-bit systems and calls to
an out-of-line __ktime_divns function otherwise.

Implement the out-of-line function, so it's use of the function in
common code is portable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/math/div64.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/lib/math/div64.c b/lib/math/div64.c
index 386497592b0b..3d646c487b3d 100644
--- a/lib/math/div64.c
+++ b/lib/math/div64.c
@@ -21,6 +21,7 @@
 #include <linux/bitops.h>
 #include <module.h>
 #include <linux/kernel.h>
+#include <linux/ktime.h>
 #include <linux/math64.h>
 #include <linux/log2.h>
 
@@ -233,3 +234,32 @@ u64 mul_u64_u64_div_u64(u64 a, u64 b, u64 c)
 	return res + div64_u64(a * b, c);
 }
 #endif
+
+/*
+ * Functions for the union type storage format of ktime_t which are
+ * too large for inlining:
+ */
+#if BITS_PER_LONG < 64
+/*
+ * Divide a ktime value by a nanosecond value
+ */
+s64 __ktime_divns(const ktime_t kt, s64 div)
+{
+	int sft = 0;
+	s64 dclc;
+	u64 tmp;
+
+	dclc = ktime_to_ns(kt);
+	tmp = dclc < 0 ? -dclc : dclc;
+
+	/* Make sure the divisor is less than 2^32: */
+	while (div >> 32) {
+		sft++;
+		div >>= 1;
+	}
+	tmp >>= sft;
+	do_div(tmp, (u32) div);
+	return dclc < 0 ? -tmp : tmp;
+}
+EXPORT_SYMBOL_GPL(__ktime_divns);
+#endif /* BITS_PER_LONG >= 64 */
-- 
2.39.2



