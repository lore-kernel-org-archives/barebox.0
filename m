Delivery-date: Wed, 06 Aug 2025 15:06:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqR-007e36-0j
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqQ-0005Xd-07
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qmayjoPvU7DgiKpjtL47XTjkbIQIloQyXPZ6mesETs0=; b=3iwZ3VFxtO5eqNpj1Pkv7z5b7b
	AQmpbeJwnu3uaY/yayoLXREzcgkhaDxLRBdqWVqOY9K25nTHtWyAOp2R1sQNHtZptpAXA018fcYxu
	gAEh7F3fVeLosNbatCLyj/hvxHi6d57vVfjlis+zy+Ln/zHuXOqtl3K3e4SMuzXqtJEqMcF2uuAq4
	X0NXS+Ef9qu+XL6ERngMfY7NwlrXuNXo2rTR+wO0A6D51FiJb7l4y5UdF6Amb48gRa03ns+DpsgN2
	Q9GxMmBJrulYsJ5DPGb8NXCPSXsZF7QYbPjzVW2h7zwO8gTplopSbqcJqB+/IMR5Dk8JrDf75EXlw
	gpYvZcug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdps-0000000FG0t-36HO;
	Wed, 06 Aug 2025 13:05:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpq-0000000FFyS-2e1d
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kw-3k; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTc-2z;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-34;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:11 +0200
Message-Id: <20250806123714.2092620-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060538_670771_E727C04B 
X-CRM114-Status: GOOD (  16.98  )
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
Subject: [PATCH 19/22] ARM: mmu32: flush only cacheable pages on remap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For the same reasons described in b8454cae3b1e ("ARM64: mmu: flush
cacheable regions prior to remapping"), we want to cease doing cache
maintenance operation on MMIO regions and only flush regions that were
actually cacheable before.

We already do that for ARM64 and the code has been prepared for reuse by
the move into a dedicated header, so let's define the functions it
expects and put it to use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/flush_cacheable_pages.h |  2 +-
 arch/arm/cpu/mmu_32.c                | 58 ++++++++++++++++++++++++++--
 arch/arm/cpu/mmu_64.c                |  2 +-
 3 files changed, 57 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
index 85fde0122802..a03e10810dc7 100644
--- a/arch/arm/cpu/flush_cacheable_pages.h
+++ b/arch/arm/cpu/flush_cacheable_pages.h
@@ -47,7 +47,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 
 		block_size = granule_size(level);
 
-		if (!pte || !pte_is_cacheable(*pte))
+		if (!pte || !pte_is_cacheable(*pte, level))
 			continue;
 
 		if (flush_end == addr) {
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 521e5f3a5769..a76d403e3477 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -24,6 +24,36 @@
 
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 
+static size_t granule_size(int level)
+{
+	/*
+	 *  With 4k page granule, a virtual address is split into 2 lookup parts.
+	 *  We don't do LPAE or large (64K) pages for ARM32.
+	 *
+	 *    _______________________
+	 *   |       |       |       |
+	 *   |  Lv1  |  Lv2  |  off  |
+	 *   |_______|_______|_______|
+	 *     31-21   20-12   11-00
+	 *
+	 *             mask        page size   term
+	 *
+	 *    Lv0:     E0000000       --
+	 *    Lv1:     1FE00000       1M      PGD/PMD
+	 *    Lv2:       1FF000       4K      PTE
+	 *    off:          FFF
+	 */
+
+	switch (level) {
+	case 1:
+		return PGDIR_SIZE;
+	case 2:
+		return PAGE_SIZE;
+	}
+
+	return 0;
+}
+
 static inline uint32_t *get_ttb(void)
 {
 	/* Clear unpredictable bits [13:0] */
@@ -142,6 +172,20 @@ void dma_flush_range(void *ptr, size_t size)
 		outer_cache.flush_range(start, end);
 }
 
+/**
+ * dma_flush_range_end - Flush caches for address range
+ * @start: Starting virtual address of the range.
+ * @end:   Last virtual address in range (inclusive)
+ *
+ * This function cleans and invalidates all cache lines in the specified
+ * range. Note that end is inclusive, meaning that it's the last address
+ * that is flushed (assuming both start and total size are cache line aligned).
+ */
+static void dma_flush_range_end(unsigned long start, unsigned long end)
+{
+	dma_flush_range((void *)start, end - start + 1);
+}
+
 void dma_inv_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
@@ -389,15 +433,23 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
 	__arch_remap_range((void *)addr, addr, size, map_type);
 }
 
+static bool pte_is_cacheable(uint32_t pte, int level)
+{
+	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
+		(level == 1 && (pte & PMD_SECT_CACHEABLE));
+}
+
+#include "flush_cacheable_pages.h"
+
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
+	if (!maptype_is_compatible(map_type, MAP_CACHED))
+		flush_cacheable_pages(virt_addr, size);
+
 	map_type = arm_mmu_maybe_skip_permissions(map_type);
 
 	__arch_remap_range(virt_addr, phys_addr, size, map_type);
 
-	if (maptype_is_compatible(map_type, MAP_UNCACHED))
-		dma_inv_range(virt_addr, size);
-
 	return 0;
 }
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 50bb25b5373a..d8ba7a171c2d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -254,7 +254,7 @@ static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 	return 0;
 }
 
-static bool pte_is_cacheable(uint64_t pte)
+static bool pte_is_cacheable(uint64_t pte, int level)
 {
 	return (pte & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL);
 }
-- 
2.39.5



