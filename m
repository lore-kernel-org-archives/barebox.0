Delivery-date: Thu, 21 Sep 2023 11:45:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFG-005jak-5V
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFE-0000iB-9g
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yiRHssxZuiW+IIE8dmBtqD01cM53v6UuH1jVB95hdhg=; b=04sMrQ1FaRSOLkS4Dcawq5qIQM
	VsbfOn8XoAVGMrixfToQlV89gFQjxQTPvjRluJhR2f9qjoU1jT6oO5rikMT9ACkwFEJzrUoqD3Z6F
	bq8SrrCyGnamTIwLe3dJ2LE5hKvDnSCPpdKA2FLN6+cs8JYG4UmnhgINxZkAwYetEPX6X1palB+R3
	Zg4UzaSNpsPX4zKuXCFb38+OvW7jDojoY0n6HsRWssQMk6KXa07XueRSvoIVuLfAM6D4tyqbEolHt
	NI+f2ARzXZI0KtPAXDbrIu7IP3DdY5WEm2y/rDbxDviUIAH9cNVZKWHJykDB1YjYQjVbDYf0Nr0Tt
	4JwYXIIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGE4-005ccE-2s;
	Thu, 21 Sep 2023 09:44:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGE2-005cbi-04
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:43:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGE0-0000Kq-9E; Thu, 21 Sep 2023 11:43:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGDz-007tVf-Se; Thu, 21 Sep 2023 11:43:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGDz-0017ET-2h;
	Thu, 21 Sep 2023 11:43:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:43:53 +0200
Message-Id: <20230921094354.265824-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_024358_063429_839D8A1C 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: asm-generic/atomic.h: always define atomic/atomic_64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

64-bit accesses are always atomic in barebox, because we have nothing
that would interrupt them. Thus define them unconditionally in the
asm-generic header. This shows that an include for the s64 time is
missing, so add that as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/atomic.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
index 45fc5da57594..27b0f73b487b 100644
--- a/include/asm-generic/atomic.h
+++ b/include/asm-generic/atomic.h
@@ -8,12 +8,13 @@
 #ifndef __ASM_GENERIC_ATOMIC_H
 #define __ASM_GENERIC_ATOMIC_H
 
+#include <linux/types.h>
+
 #ifdef CONFIG_SMP
 #error SMP not supported
 #endif
 #define ATOMIC_INIT(i)	{ (i) }
 
-#ifdef CONFIG_64BIT
 typedef struct { s64 counter; } atomic64_t;
 
 #define atomic64_read(v)	((v)->counter)
@@ -59,7 +60,7 @@ static inline int atomic64_add_negative(s64 i, volatile atomic64_t *v)
 	return val < 0;
 }
 
-#else
+
 typedef struct { volatile int counter; } atomic_t;
 
 #define ATOMIC_INIT(i)	{ (i) }
@@ -114,7 +115,6 @@ static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
 {
 	*addr &= ~mask;
 }
-#endif
 
 /* Atomic operations are already serializing on ARM */
 #define smp_mb__before_atomic_dec()	barrier()
-- 
2.39.2



