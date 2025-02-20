Delivery-date: Thu, 20 Feb 2025 21:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCL-004qIj-3B
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCK-0004ID-S4
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XRRjWlTfftf1Ncad+ctSSj063gBaTMNMiZZ/JayP9iU=; b=b7ouCwz5KJKkHqqEoESW0WyJYT
	fP8V0F/Ad6h/pWJWtkuBBO14m8tm6rd/fa0pfwl8gIw5M6CjV72yPdCRtR4BN66HMEhdJ7GK0mWSb
	n+N6LZUbeMWFEU20jZRj0NBGYUzGRgEivEFmE7qHL08+ak/Y2BsNSKdIhJ2cBF7Xiva7CGbm/2azw
	K6Nda7px4n3+cSAYgn27/L3M9SGyg07QQHOIXveN4xfn1wUjQK+JG+xc8gS9cXbIaY0sdAZVNKD5U
	j6FV6dOD37POuP76l4/b2+QdI8xdbil9P9FTfFcJVUvbAhjMNOReJQSRxK2TgoEcGApTqZ8t0O/PZ
	7dBdN7wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBv-00000002nIZ-3g4P;
	Thu, 20 Feb 2025 20:30:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBr-00000002nFr-46ng
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-0003xI-Lj; Thu, 20 Feb 2025 21:30:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-001zS2-0x;
	Thu, 20 Feb 2025 21:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-00E3gH-0e;
	Thu, 20 Feb 2025 21:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:30:27 +0100
Message-Id: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123036_046793_30E896A4 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 1/6] malloc: define a maximum malloc size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF and dlmalloc each already enforce a maximum allocation size.

Let's define SZ_1G as common maximum allocation size in preparation
for aligning all allocators to observe it.

The intention is to make code easier to reason about and as extra
hardening against possible, yet undiscovered, allocator bugs.

Suggested-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/malloc.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/malloc.h b/include/malloc.h
index 7bee03dab236..c38726342c08 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -5,6 +5,9 @@
 #include <linux/compiler.h>
 #include <types.h>
 
+#define MALLOC_SHIFT_MAX	30
+#define MALLOC_MAX_SIZE		(1UL << MALLOC_SHIFT_MAX)
+
 #if IN_PROPER
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);
-- 
2.39.5



