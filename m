Delivery-date: Wed, 06 Aug 2025 14:39:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQa-007daj-2O
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQY-0000zj-6w
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QX7sHizyH2pCaorEKsM8/OHhFlsjbezzIcGpa6JkvY=; b=shYZU38DqACPqKRL4FkzQD/UyX
	033T14nqvBIj/NLZRSeAcQHZ896YlTBQjzd1R8doryn5h7DuJ/jpYnvtr8h+Jxe4+2fk+7wAA3c0t
	7Sug+OGGow4ZR9Iq1BfRFLrOuenl7udh6RbM/VqN7QGR1E3/ZRWR/p/T8JTb2ZOjn5HtLiCQrCtAz
	JgehYFT2aTrC83dTKSWbl6kMhazBkDxbaBwYOIoMNfESPflsGLmz5XKKBfTPvbyL8nAy+US+NzJfS
	WBEzMJwomxuau3fdThdhaSr+63Ti4THw4ngMnsJpabCQ8zfD50KXg6ycMTi9AsQSHgO6I6o0fD31y
	ds0wv+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ8-0000000FAQf-1pXL;
	Wed, 06 Aug 2025 12:39:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOX-0000000FA8M-033Z
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000NB-QY; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD9A-1o;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-1S;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:00 +0200
Message-Id: <20250806123714.2092620-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053725_050786_4DE553FF 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/22] ARM: mmu64: rename create_sections to __arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The equivalent function for ARM32 is called __arch_remap_range and that
name would be more fitting for ARM64, as ARMv8 doesn't use the term
section and instead uses pages and blocks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index e2cc1a5caabd..1c77aa9472df 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -123,8 +123,8 @@ static void split_block(uint64_t *pte, int level)
 	set_table(pte, new_table);
 }
 
-static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
-			    uint64_t attr, bool force_pages)
+static void __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
+			       uint64_t attr, bool force_pages)
 {
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
@@ -312,7 +312,7 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type, bo
 	if (WARN_ON(attrs == ~0UL))
 		return;
 
-	create_sections(addr, addr, size, attrs, force_pages);
+	__arch_remap_range(addr, addr, size, attrs, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
@@ -329,7 +329,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
-	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
+	__arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
 
 	return 0;
 }
-- 
2.39.5



