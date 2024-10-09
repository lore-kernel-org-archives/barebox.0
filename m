Delivery-date: Wed, 09 Oct 2024 08:08:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsQ-0027dt-0F
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:08:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsP-0007JA-8x
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=REEwAMYN9oCMTgS8mUppnhkgKzKdUVM7swChDxoCapQ=; b=l+2E9MwzIKWqBrfJl3FFHIisY1
	8cEzs2kA6jnTtp/TScC2Gc7dS5a60YX1utZCATGt/PK8OxCfq5vWfwwO49TrxhEQrN60gZnvByp1k
	+wmVwG6zkD5cQisKgKnpoMAz2uAEfvyQO0q66vOnH0tBwR41JKigaivPUdVg64TIzkbPjhWRkMloY
	QmXms2WBnlVhdcWBtIWxSC8OS+vo9L//9ZYcUQHS4W/LOiU9li6QRJ1yDPl+Sh6arbQvoKaMhEh4r
	Ng9af7xl3JRBzY+mdCHQqZvGqqnJDhfSS6lTZ+wScAJKUX3Cbf9o2BCtvzlbLUeLEzs+FuRxrhp0H
	cq2DecAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPrx-000000082mR-3nyI;
	Wed, 09 Oct 2024 06:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpI-000000082IX-3K2g
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vH-Cx; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-000Xa2-VB; Wed, 09 Oct 2024 08:05:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2q;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Marc Zyngier <maz@kernel.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 08:05:10 +0200
Message-Id: <20241009060511.4121157-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230536_874422_81DC852D 
X-CRM114-Status: GOOD (  26.17  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM64: mmu: flush cacheable regions prior to remapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently invalidate memory ranges after remapping, because they may
contain stale dirty cache lines that interfere with further usage, e.g.
when running a memory test on a a DRAM area that was again remapped
cached, stale cache lines may remain from a run where the region
was cached.

The invalidation was done unconditionally to all memory regions being
remapped, even if they weren't previously cacheable. The CPU is within
rights to upgrade the invalidate to a clean+invalidate and the CPU
doesn't know about the state of the caches at the time of the permissions
check.

This led to barebox when run under qemu -enable-kvm on ARM64 to trigger
data aborts when executing DC IVAC on the cfi-flash MMIO regions after
remapping it.

Fix this by replacing the unconditional invalidation after the remapping
with flushing only cacheable pages before remapping non-cacheable.

The way we implement it with the previously unused find_pte() function
is less optimal than could be, but optimizing it further (probably at the
cost of readability) is left as a future exercise.

Cc: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/all/8634l97cfs.wl-maz@kernel.org/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 105 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 98 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7854f71f4cb6..94a19b1aec3c 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -63,15 +63,13 @@ static uint64_t *alloc_pte(void)
 }
 #endif
 
-static __maybe_unused uint64_t *find_pte(uint64_t addr)
+static uint64_t *__find_pte(uint64_t *ttb, uint64_t addr, int *level)
 {
-	uint64_t *pte;
+	uint64_t *pte = ttb;
 	uint64_t block_shift;
 	uint64_t idx;
 	int i;
 
-	pte = get_ttb();
-
 	for (i = 0; i < 4; i++) {
 		block_shift = level2shift(i);
 		idx = (addr & level2mask(i)) >> block_shift;
@@ -83,9 +81,17 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 			pte = (uint64_t *)(*pte & XLAT_ADDR_MASK);
 	}
 
+	if (level)
+		*level = i;
 	return pte;
 }
 
+/* This is currently unused, but useful for debugging */
+static __maybe_unused uint64_t *find_pte(uint64_t addr)
+{
+	return __find_pte(get_ttb(), addr, NULL);
+}
+
 #define MAX_PTE_ENTRIES 512
 
 /* Splits a block PTE into table with subpages spanning the old block */
@@ -168,6 +174,91 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	tlb_invalidate();
 }
 
+static size_t granule_size(int level)
+{
+	switch (level) {
+	default:
+	case 0:
+		return L0_XLAT_SIZE;
+	case 1:
+		return L1_XLAT_SIZE;
+	case 2:
+		return L2_XLAT_SIZE;
+	case 3:
+		return L3_XLAT_SIZE;
+	}
+}
+
+static bool pte_is_cacheable(uint64_t pte)
+{
+	return (pte & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL);
+}
+
+/**
+ * flush_cacheable_pages - Flush only the cacheable pages in a region
+ * @start: Starting virtual address of the range.
+ * @end:   Ending virtual address of the range.
+ *
+ * This function walks the page table and flushes the data caches for the
+ * specified range only if the memory is marked as normal cacheable in the
+ * page tables. If a non-cacheable or non-normal page is encountered,
+ * it's skipped.
+ */
+static void flush_cacheable_pages(void *start, size_t size)
+{
+	u64 flush_start = ~0ULL, flush_end = ~0ULL;
+	u64 region_start, region_end;
+	size_t block_size;
+	u64 *ttb;
+
+	region_start = PAGE_ALIGN_DOWN((ulong)start);
+	region_end = PAGE_ALIGN(region_start + size);
+
+	ttb = get_ttb();
+
+	/*
+	 * TODO: This loop could be made more optimal by inlining the page walk,
+	 * so we need not restart address translation from the top every time.
+	 *
+	 * The hope is that with the page tables being cached and the
+	 * windows being remapped being small, the overhead compared to
+	 * actually flushing the ranges isn't too significant.
+	 */
+	for (u64 addr = region_start; addr < region_end; addr += block_size) {
+		int level;
+		u64 *pte = __find_pte(ttb, addr, &level);
+
+		block_size = granule_size(level);
+		
+		if (!pte || !pte_is_cacheable(*pte))
+			continue;
+
+		if (flush_end == addr) {
+			/*
+			 * While it's safe to flush the whole block_size,
+			 * it's unnecessary time waste to go beyond region_end.
+			 */
+			flush_end = min(flush_end + block_size, region_end);
+			continue;
+		}
+
+		/*
+		 * We don't have a previous contiguous flush area to append to.
+		 * If we recorded any area before, let's flush it now
+		 */
+		if (flush_start != ~0ULL)
+			v8_flush_dcache_range(flush_start, flush_end);
+
+		/* and start the new contiguous flush area with this page */
+		flush_start = addr;
+		flush_end = min(flush_start + block_size, region_end);
+	}
+
+	/* The previous loop won't flush the last cached range, so do it here */
+	if (flush_start != ~0ULL)
+		v8_flush_dcache_range(flush_start, flush_end);
+}
+
 static unsigned long get_pte_attrs(unsigned flags)
 {
 	switch (flags) {
@@ -201,10 +292,10 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 	if (attrs == ~0UL)
 		return -EINVAL;
 
-	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
+	if (flags != MAP_CACHED)
+		flush_cacheable_pages(virt_addr, size);
 
-	if (flags == MAP_UNCACHED)
-		dma_inv_range(virt_addr, size);
+	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
 
 	return 0;
 }
-- 
2.39.5



