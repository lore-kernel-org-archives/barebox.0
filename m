Delivery-date: Wed, 06 Aug 2025 15:06:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqN-007e2f-1X
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqM-0005V8-BJ
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r7nGtcqXmjLHUJu1sofzEDpkNc+UpQoc8WA9RU8Gra8=; b=Xdkl+SViGuhye0avTtGPEEPpWz
	2Rvw9h6DTXHLkupnkGzQWu7sEGjHP4CN9wnfQP/PYqjjkr6pSN1EaSHrnipbMWCfYmcGAdbPpA0b+
	Wdg6e32V4PZjNcSCevhYs9mdQbrw9+n3/vkK3EEkAhTr1d0NYawhYZ79Y07qnYDl5XoT0dV+8DzGe
	TH9Nvcq/jvvR7sG3gkLixZlO4QZDxdZsf+8cngBYZHG9ETi1/8y3fuzopgAR4iVD8FZsGmV7KFuv+
	iL7XdcvGLxUTEZM1Pf4Org5RAEWcp5zDCdMM3HbQ/eU2Wqi3uq0YHa8Ospo7FJHPXM4P84AVmsjtV
	mUK8NjPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpn-0000000FFvb-0AJV;
	Wed, 06 Aug 2025 13:05:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpi-0000000FFpr-1X3q
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kl-2y; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDT8-0D;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdOO-009YOP-08;
	Wed, 06 Aug 2025 14:37:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:13 +0200
Message-Id: <20250806123714.2092620-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060530_407077_FD9030F1 
X-CRM114-Status: GOOD (  15.11  )
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
Subject: [PATCH 21/22] ARM: mmu64: factor out set_pte_range helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By adding a helper that sets multiple PTEs at once, we can generalize
the break-before-make handling into one single place.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 52 ++++++++++++++++++++++---------------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d8ba7a171c2d..edb1b34aca7f 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -67,9 +67,20 @@ static void set_pte(uint64_t *pt, uint64_t val)
 	WRITE_ONCE(*pt, val);
 }
 
-static void set_table(uint64_t *pt, uint64_t *table_addr)
+static void set_pte_range(unsigned level, uint64_t *virt, phys_addr_t phys,
+			  size_t count, uint64_t attrs, bool bbm)
 {
-	set_pte(pt, PTE_TYPE_TABLE | (uint64_t)table_addr);
+	unsigned granularity = granule_size(level);
+	if (!bbm)
+		goto write_attrs;
+
+	 // TODO break-before-make missing
+
+write_attrs:
+	for (int i = 0; i < count; i++, phys += granularity)
+		set_pte(&virt[i], phys | attrs);
+
+	dma_flush_range(virt, count * sizeof(*virt));
 }
 
 #ifdef __PBL__
@@ -160,37 +171,29 @@ static unsigned long get_pte_attrs(maptype_t map_type)
 #define MAX_PTE_ENTRIES 512
 
 /* Splits a block PTE into table with subpages spanning the old block */
-static void split_block(uint64_t *pte, int level)
+static void split_block(uint64_t *pte, int level, bool bbm)
 {
 	uint64_t old_pte = *pte;
 	uint64_t *new_table;
-	uint64_t i = 0;
-	int levelshift;
+	u64 flags = 0;
 
 	if ((*pte & PTE_TYPE_MASK) == PTE_TYPE_TABLE)
 		return;
 
-	/* level describes the parent level, we need the child ones */
-	levelshift = level2shift(level + 1);
-
 	new_table = alloc_pte();
 
-	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
-		set_pte(&new_table[i], old_pte | (i << levelshift));
+	/* Level 3 block PTEs have the table type */
+	if ((level + 1) == 3)
+		flags |= PTE_TYPE_TABLE;
 
-		/* Level 3 block PTEs have the table type */
-		if ((level + 1) == 3)
-			new_table[i] |= PTE_TYPE_TABLE;
-	}
+	set_pte_range(level + 1, new_table, old_pte, MAX_PTE_ENTRIES, flags, bbm);
 
-	/* Set the new table into effect
-	 * TODO: break-before-make missing
-	 */
-	set_table(pte, new_table);
+	/* level describes the parent level, we need the child ones */
+	set_pte_range(level, pte, (uint64_t)new_table, 1, PTE_TYPE_TABLE, bbm);
 }
 
 static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
-			      maptype_t map_type)
+			      maptype_t map_type, bool bbm)
 {
 	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
 	unsigned long attr = get_pte_attrs(map_type);
@@ -235,14 +238,13 @@ static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
 
-				/* TODO: break-before-make missing */
-				set_pte(pte, phys | attr | type);
+				set_pte_range(level, pte, phys, 1, attr | type, bbm);
 				addr += block_size;
 				phys += block_size;
 				size -= block_size;
 				break;
 			} else {
-				split_block(pte, level);
+				split_block(pte, level, bbm);
 			}
 
 			table = get_level_table(pte);
@@ -277,7 +279,7 @@ static inline void dma_flush_range_end(unsigned long start, unsigned long end)
 
 static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 {
-	__arch_remap_range(addr, addr, size, map_type);
+	__arch_remap_range(addr, addr, size, map_type, false);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
@@ -287,7 +289,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
-	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type);
+	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type, true);
 }
 
 static void mmu_enable(void)
@@ -383,7 +385,7 @@ static void early_init_range(size_t total_level0_tables)
 
 	while (total_level0_tables--) {
 		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
-		split_block(ttb, 0);
+		split_block(ttb, 0, false);
 		addr += L0_XLAT_SIZE;
 		ttb++;
 	}
-- 
2.39.5



