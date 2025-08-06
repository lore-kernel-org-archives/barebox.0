Delivery-date: Wed, 06 Aug 2025 14:39:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQW-007dZ5-0U
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQV-0000y1-K5
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hxle1BdOLRylAgieWlAkJx5g8Sx+iID7gUoT6sPjta8=; b=jrAoieWr6alelwjGYJ1F6XvDxF
	Qi82sHndteQ9T7AVJ9X6krdVxVGvauejYSE/48hqaD2l9WFK7Fd47OpiwjVDCTpjMSDUiiy8vHBqU
	lJSwVEOeiAraEVc7TPzbKQsHx7IhaO7L/vu+Ty0Wp1wOE0+Tb55AaR0u551ZUntkuFEDwzOjxJ+0X
	y1EDyUPIjHpINLFzmmdNte1/I5GBfD9nQN99OAU1gDF3cDu0M1GsQeV0ntNg44eAHjV5RaiptyGUE
	NfQV1SRAwjSiIA7SprSqM5da6QNngeokdQMKo01zr6RUnemt2/BqrGSF5EwkC8VOFpNytEZW0p+Qs
	hj+DZbTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ4-0000000FAKc-1OTK;
	Wed, 06 Aug 2025 12:39:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5N-3bMQ
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000Mb-KC; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8z-1I;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0z;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:57 +0200
Message-Id: <20250806123714.2092620-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053716_904626_3ECDB71F 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/22] ARM: mmu32: introduce new mmu_addr_t type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ARM 32-bit and 64-bit MMU code makes heavy use of uint32_t and
uint64_t respectively.

We can't use ulong for common code between them as u32 is an unsigned long
and u64 is a unsigned long long and pointers to them can not be implicitly
converted. As we don't want to rewrite all MMU code to use ullong, let's
just define a new mmu_addr_t, which can be used in code that should be
callable from either ISA.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.h | 2 ++
 arch/arm/cpu/mmu_64.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.h b/arch/arm/cpu/mmu_32.h
index 607d9e8608b2..7a58a819f08a 100644
--- a/arch/arm/cpu/mmu_32.h
+++ b/arch/arm/cpu/mmu_32.h
@@ -9,6 +9,8 @@
 
 #include "mmu-common.h"
 
+typedef u32 mmu_addr_t;
+
 #define PGDIR_SHIFT	20
 #define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index d3c39dabb507..ad7c1bde5631 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -2,6 +2,8 @@
 
 #include "mmu-common.h"
 
+typedef u64 mmu_addr_t;
+
 #define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
 			 PTE_BLOCK_OUTER_SHARE | \
 			 PTE_BLOCK_AF)
-- 
2.39.5



